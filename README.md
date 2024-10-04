# Terminal Quran

Terminal Quran is a simple Bash script that prints a random verse from the Quran in your terminal. It's a great way to get a dose of spiritual inspiration every time you open your terminal.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Screenshot](#screenshot)
- [Contributing](#contributing)
- [License](#license)

## Installation

To use this script, you need to have Bash installed on your system. Most Linux distributions come with Bash pre-installed. If you're using Windows, you can run Bash scripts using WSL (Windows Subsystem for Linux) or Git Bash. It also works with ZSH (the default on macOS).

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

- **Bash (Linux/macOS):**

  Add the following line to your `.bashrc` or `.bash_profile` file:

  ```bash
  if [[ $- == *i* && "$RUN_QURAN_VERSE_ON_STARTUP" == "true" ]]; then
    ~/terminal_quran.sh
  fi
  ```

- **Zsh (Linux/macOS):**

  Add the following line to your `.zshrc` file:

  ```bash
  if [[ $- == *i* && "$RUN_QURAN_VERSE_ON_STARTUP" == "true" ]]; then
    ~/terminal_quran.sh
  fi
  ```

- **Fish (Linux/macOS):**

  Add the following line to your `~/.config/fish/config.fish` file:

  ```fish
  if test "$RUN_QURAN_VERSE_ON_STARTUP" = "true"
    ~/terminal_quran.sh
  end
  ```

- **Windows (WSL):**

  Add the following line to your `.bashrc` or `.bash_profile` file:

  ```bash
  if [[ $- == *i* && "$RUN_QURAN_VERSE_ON_STARTUP" == "true" ]]; then
    ~/terminal_quran.sh
  fi
  ```

## Configuration

To control whether the script runs automatically at terminal startup, set the following environment variable:

```bash
export RUN_QURAN_VERSE_ON_STARTUP=true
```

Add this line to your shell configuration file to enable the script to run at startup. Set it to `false` if you do not want the script to run automatically.

## Usage

To display a random Quran verse in your terminal:

```bash
./terminal_quran.sh
```

For help or usage instructions:

```bash
./terminal_quran.sh -h
```

## Screenshot

This is an example of how it looks like on iTerm2 on macOS:

![iTerm2](images/iterm2.png)

And this is how it looks on Tabby on macOS:

![Tabby](images/tabby.png)

## Contributing

Contributions are welcome! If you have a verse you'd like to add, feel free to open a pull request. Please ensure that any verses you add are accurate and include the surah and verse numbers.

## License

This project is licensed under the MIT License. See the LICENSE file for details.
