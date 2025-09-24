# Anonymous Checker 🔍

A powerful tool to accelerate research by ensuring anonymous review compliance. Automatically scans your research projects for potential identifying information that could compromise anonymity requirements.

## 🚀 Features

### Core Detection Capabilities
- **📧 Email Detection**: Identifies email addresses in code, documentation, and configuration files
- **🏫 University Domain Scanning**: Detects academic institution domains (.edu, .ac.*)
- **👤 GitHub Username Detection**: Finds GitHub profile references and usernames
- **✍️ Author Information**: Locates author, contact, and maintainer references
- **💬 Personal Name Detection**: Identifies personal names in code comments

### File Type Support
- Python files (`.py`)
- Markdown documentation (`.md`)
- Text files (`.txt`)
- YAML configuration files (`.yml`, `.yaml`)

## 📦 Installation

```bash
# Clone the repository
git clone https://github.com/Aisuko/anonymous_checker.git
cd anonymous_checker

# Make the script executable
chmod +x anonymous_checker.sh
```

## 🔧 Usage

```bash
./anonymous_checker.sh <project_directory>
```

### Example
```bash
./anonymous_checker.sh /path/to/your/research/project
```

## 📊 Sample Output

```
=== Scanning for Anonymous Review Policy Violations ===

1. Email addresses:
./src/main.py:15:    contact = "researcher@university.edu"

2. University domains:
./README.md:8:    For questions, contact us at lab@stanford.edu

3. GitHub usernames:
./docs/setup.md:12:    Visit https://github.com/johndoe/project

4. Author/Contact references:
./setup.py:3:    author: John Smith

5. Personal names in comments:
./utils.py:25:    # John's implementation of the algorithm
```

## 🎯 Use Cases

### Academic Research
- **Conference Submissions**: Ensure papers meet anonymous review requirements
- **Journal Articles**: Verify manuscripts don't contain identifying information
- **Code Repositories**: Clean research code before sharing for review

### Open Source Projects
- **Privacy Compliance**: Remove personal information before public release
- **Code Auditing**: Identify potential privacy leaks in documentation
- **Team Collaboration**: Maintain anonymity in shared codebases

## 🛠️ Advanced Features

### Multi-Format Support
The tool intelligently scans various file formats commonly used in research:
- Source code files for embedded contact information
- Documentation files for author references
- Configuration files for email settings
- YAML files for metadata containing personal info

### Pattern Recognition
- **Email Patterns**: Comprehensive regex for various email formats
- **Domain Detection**: Specialized patterns for academic institutions
- **URL Parsing**: GitHub and other platform username extraction
- **Comment Analysis**: Context-aware personal name detection

## 🚦 Getting Started

1. **Prepare Your Project**: Ensure your research project is in a single directory
2. **Run the Scanner**: Execute the tool on your project directory
3. **Review Results**: Examine the output for any identifying information
4. **Clean Your Code**: Remove or anonymize flagged content
5. **Re-scan**: Run the tool again to verify all issues are resolved

## 📋 Best Practices

- Run the checker before every submission
- Create a backup before making anonymization changes
- Use generic placeholders for removed information
- Document your anonymization process
- Verify with colleagues that anonymity is maintained

## 🤝 Contributing

We welcome contributions to improve the Anonymous Checker:

1. Fork the repository
2. Create a feature branch
3. Add your improvements
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

## 🔮 Future Enhancements

- **GUI Interface**: User-friendly graphical interface
- **Custom Rules**: Configurable detection patterns
- **Batch Processing**: Process multiple projects simultaneously
- **Integration**: IDE plugins and CI/CD pipeline integration
- **Reporting**: Detailed HTML/PDF reports
- **Whitelist Support**: Exclude known safe patterns

## 📞 Support

For issues, feature requests, or questions:
- Open an issue on GitHub
- Check existing issues for solutions
- Contribute improvements via pull requests

## 📖 Citation

If you use Anonymous Checker in your research, please cite it as:

```latex
@software{li2025anonymous,
  title = {Anonymous Checker},
  author = {Li, Bowen and Xu, Ziqi},
  year = {2025},
  version = {0.1.0},
  url = {https://github.com/Aisuko/anonymous_checker},
  note = {A powerful tool to accelerate research by ensuring anonymous review compliance}
}
```

---

**Accelerate your research while maintaining anonymity compliance!** 🎓✨