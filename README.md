# Terminal Quran

Terminal Quran is a simple Bash script that prints a random verse from the Quran in your terminal. It's a great way to get a dose of spiritual inspiration every time you open your terminal.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Installation

To use this script, you need to have Bash installed on your system. Most Linux distributions come with Bash pre-installed. If you're using Windows, you can run Bash scripts using WSL (Windows Subsystem for Linux) or Git Bash. It can work with ZSH (the default on macOS).

For installation in your `$HOME` directory:

```bash
cd $HOME
```

To install the script, download it directly to your home directory using the following command:

```bash
curl -o ~/terminal_quran.sh https://raw.githubusercontent.com/MohamedElashri/terminal_quran/main/terminal_quran.sh
```

Then, make the script executable:

```bash
chmod +x ~/terminal_quran.sh
```

To ensure the script can be run from any directory, add its location to your PATH in your shell configuration file:

- If you're using Bash, add it to your `.bashrc` file:

  ```bash
  echo '$HOME/terminal_quran.sh' >> ~/.bashrc
  ```

- If you're using Zsh, add it to your `.zshrc` file:

  ```bash
  echo '$HOME/terminal_quran.sh' >> ~/.zshrc
  ```

Then, source your shell configuration file to apply the changes:

- For Bash:

  ```bash
  source ~/.bashrc
  ```

- For Zsh:

  ```bash
  source ~/.zshrc
  ```

## Usage

To display a random Quran verse in your terminal:

```bash
./terminal_quran.sh
```

For help or usage instructions:

```bash
./terminal_quran.sh -h
```

## Contributing

Contributions are welcome! If you have a verse you'd like to add, feel free to open a pull request. Please ensure that any verses you add are accurate and include the surah and verse numbers.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

