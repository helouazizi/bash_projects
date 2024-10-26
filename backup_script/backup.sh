#! /bin/bash


# usage
usage(){
 echo "Usage: $0 <source_directory> <destenation_directory>"
 exit 1
}


# variable we can need

SOURCE_DIR="$1" # Directory to backup
DEST_DIR="$2"   # Directory to savr the backups
TIME=$(date +"%Y%m%d_%H%M%S") # current time
BACKUP_FILE="$DEST_DIR/backup_$TIME.tar.gz"


# check if the derectory is enterd by the user

if [ -z "$SOURCE_DIR" ] || [ -z "$DEST_DIR" ]; then 
 usage  # use the usage function here
 exit 1
fi

# check if source dir exist 

if [ ! -d "$SOURCE_DIR" ]; then 
 echo "Source direcoty does not exist"
 exit 1
fi


# create destination dir
mkdir -p "$DEST_DIR"

# Create a compressed backup
tar -czf "$BACKUP_FILE" -C "$SOURCE_DIR" .


# Check if backup was successful
if [ "$?" -eq 0 ]; then
    echo "Backup successful! Saved to $BACKUP_FILE"
else
    echo "Backup failed!"
    exit 1
fi

# our script finished







