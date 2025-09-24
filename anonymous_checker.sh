#!/bin/bash

PROJECT_DIR="$1"
if [ -z "$PROJECT_DIR" ]; then
    echo "Usage: $0 <project_directory>"
    exit 1
fi

echo "=== Scanning for Anonymous Review Policy Violations ==="

# Search for email addresses
echo "1. Email addresses:"
find "$PROJECT_DIR" -type f \( -name "*.py" -o -name "*.md" -o -name "*.txt" -o -name "*.yml" -o -name "*.yaml" \) -exec grep -H -n -i -E "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" {} \;

echo -e "\n2. University domains:"
find "$PROJECT_DIR" -type f \( -name "*.py" -o -name "*.md" -o -name "*.txt" \) -exec grep -H -n -i -E "@.*\.edu|@.*\.ac\." {} \;

echo -e "\n3. GitHub usernames:"
find "$PROJECT_DIR" -type f \( -name "*.py" -o -name "*.md" -o -name "*.txt" \) -exec grep -H -n -i -E "github\.com/[a-zA-Z0-9_-]+" {} \;

echo -e "\n4. Author/Contact references:"
find "$PROJECT_DIR" -type f \( -name "*.py" -o -name "*.md" -o -name "*.txt" \) -exec grep -H -n -i -E "(author|contact|maintainer).*:" {} \;

echo -e "\n5. Personal names in comments:"
find "$PROJECT_DIR" -type f -name "*.py" -exec grep -H -n -E "#.*[A-Z][a-z]+('s|s')" {} \;
