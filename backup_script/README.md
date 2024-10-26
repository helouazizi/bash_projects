# Backup Script

A simple Bash script that automates the process of backing up a specified directory. This script creates a compressed tarball of the source directory and saves it to a designated destination.

## Features

- Backs up a specified directory to a destination directory.
- Creates a timestamped backup file.
- Checks for the existence of the source directory.
- Creates the destination directory if it does not exist.

## Prerequisites

- Bash (Linux/macOS)
- `tar` command-line tool (typically pre-installed on most Unix-like systems)

## Usage

1. Clone the repository or download the script:

   `bash
   git clone <repository-url>
   cd <repository-folder>
   `

2. Make the script executable:

   `bash
   chmod +x backup.sh
   `

3. Run the script with the source and destination directories as arguments:

   `bash
   ./backup.sh <source_directory> <destination_directory>
   `

   **Example:**

   `bash
   ./backup.sh /home/user/myfiles /home/user/backups
   `

## Script Breakdown

- **SOURCE_DIR**: The directory to back up, passed as the first argument.
- **DEST_DIR**: The directory where backups will be saved, passed as the second argument.
- **TIMESTAMP**: A timestamp added to the backup filename for uniqueness.
- **BACKUP_FILE**: The final backup file name, including the timestamp.

### Error Handling

- The script checks if the source directory exists and displays an error message if it does not.
- It prompts the user with usage instructions if the required arguments are not provided.

## Enhancements

Consider adding the following features:

- **Incremental Backups**: Only back up files that have changed since the last backup.
- **Email Notifications**: Send notifications upon completion or failure of backups.
- **Logging**: Maintain a log of backup operations.
- **Scheduling**: Use `cron` to schedule regular backups.

## License

This project is licensed under the MIT License. See the LICENSE file for details.

## Author

[@helouazizi]  
