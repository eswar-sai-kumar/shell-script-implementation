#!bin/bash
DIR=${1:-.}
mkdir -p "$DIR/Documents" "$DIR/Images" "$DIR/Videos" "$DIR/Music" "$DIR/Archieves" "$DIR/Others"
for file in "$DIR"/*; do
    if [[ -f "$file" ]]; then
        case "${file##*.}" in
          sh|md) continue;;
          txt|pdf|doc|docx|xls|xlsx|ppt|pptx) mv "$file" "$DIR/Documents/";;
          jpg|jpeg|png|gif|bmp|svg|tiff|webp) mv "$file" "$DIR/Images/" ;;
          mp4|mkv|flv|avi|mov|wmv) mv "$file" "$DIR/Videos/" ;;
          mp3|wav|aac|flac|ogg) mv "$file" "$DIR/Music/" ;;
          zip|tar|gz|rar|7z) mv "$file" "$DIR/Archieves/" ;;
          *) mv "$file" "$DIR/Others/";;
        esac
    fi
done
#created some files (touch a.txt a.jpg a.mp4 a.mp3)
#executed script (sh 01-file-organizer.sh) 