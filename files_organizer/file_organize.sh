#! /bin/bash
echo "================================"
echo "Hello i'm your file organizer"
echo "================================"


# this function about usage 
usage(){
echo "usage : $0 <dir>"
exit 1
}

# check if the user input just one direrctory
if [ "$#" -ne 1 ] ; then 
usage
fi

# Extract dir to procces with
input_dir=$1

# check if the dir exist
if  [ ! -d "$input_dir" ] ; then 
echo "Error: $input_dir is not exist"
exit 1
fi
# check if the dir is empty
if  [  -z "$(ls -A "$input_dir")" ]; then 
echo "Error:  $input_dir is empty"
exit 1
fi

# create  the sub_dir for the organized files
mkdir -p "$input_dir/music"  "$input_dir/videos" "$input_dir/pictures" "$input_dir/docs"  "$input_dir/other" "$input_dir/logs"

# log  file
log_file="$input_dir/organized.log"
echo "file  organizer started at "$(date)"" >> "$log_file"

# lop thought  all files in the dir and move then into  the sub_dirs
for file in "$input_dir"/*; do 
    if  [ -f "$file" ]; then 
    ex=$(basename "$file" | cut -d '.' -f2-)
   # echo "$ex"
        case  $ex in 
            
            mp3|wav|ogg)
            mv "$file" "$input_dir/music"
            echo "gooooood"
            ;;
            mp4|avi|mov)
            mv "$file" "$input_dir/videos"
            ;;
            txt)
            mv  "$file" "$input_dir/docs"
            echo "text"
            ;;
            jpg|png|gif)
            mv  "$file" "$input_dir/pictures"
            ;;
            log)
            mv  "$file" "$input_dir/logs"
            ;;
            *)
            mv "$file" "$input_dir/other"
            ;;
        esac
    fi
done
echo "Processing directory : $input_dir"


