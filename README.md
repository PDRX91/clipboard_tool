# Clipboard Tool

This Clipboard Tool is a simple yet powerful command-line utility for macOS that allows users to copy predefined text to their clipboard and manage these predefined text snippets with ease. It's perfect for users who frequently need to paste specific pieces of text and want to streamline their workflow.

## Features

- **Copy Predefined Text**: Easily copy predefined text snippets to your clipboard.
- **Add Custom Text Snippets**: Dynamically add new text snippets from the command line.
- **List Available Commands**: View a list of all predefined text commands.
- **Delete Text Snippets**: Remove existing text snippets.

## Getting Started

### Prerequisites

- A macOS system
- Basic knowledge of terminal and command-line operations

### Installation

1. **Clone the Repository**:

   - Clone this repository to your local machine using:
     ```sh
     git clone https://github.com/PDRX91/clipboard_tool.git
     ```

2. **Navigate to the Repository Directory**:

   - Change directory to the cloned repository:
     ```sh
     cd path/to/clipboard_tool
     ```

3. **Configuration File Setup**:

   - Ensure `copy_content.txt` is present in the directory. If not, create it:
     ```sh
     touch copy_content.txt
     ```

4. **Make the Script Executable**:

   - Grant execute permissions to the script:
     ```sh
     chmod +x clipboard_tool.sh
     ```

5. **Add to PATH**:

   - Add the script to your PATH for easy access. Edit your shell profile (`.bashrc`, `.zshrc`, etc.):
     ```sh
     nano ~/.bashrc  # or ~/.zshrc
     ```
   - Add the following line (modify the path accordingly):
     ```sh
     export PATH="/path/to/clipboard_tool:$PATH"
     ```
   - Save and exit the editor. Apply the changes:
     ```sh
     source ~/.bashrc  # or ~/.zshrc
     ```

6. **Create a Symlink for Easy Access**:
   - Create a symbolic link named `copy` for easier use:
     ```sh
     ln -s clipboard_tool.sh copy
     ```

### Usage

- **Adding a New Text Snippet**:

  ```sh
  copy add <trigger> <text>
  ```

  Example: `copy add greet Hello, world!`

- **Copying Text to Clipboard**:

  ```sh
  copy <trigger>
  ```

  Example: `copy greet`

- **Listing All Commands**:

  ```sh
  copy --list
  ```

- **Deleting a Text Snippet**:
  ```sh
  copy delete <trigger>
  ```
  Example: `copy delete greet`

## Contributing

Feel free to fork this repository and submit pull requests. You can also open an issue for bugs, features, or general questions.
