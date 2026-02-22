#!/bin/bash

GALLERY_DIR="img/galleries"

echo "Generating thumbnails (max 800px) in $GALLERY_DIR..."

find "$GALLERY_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) ! -iname "*-thumb.*" | while read -r img_path; do
    dir=$(dirname "$img_path")
    filename=$(basename "$img_path")
    extension="${filename##*.}"
    basename="${filename%.*}"
    
    thumb_path="${dir}/${basename}-thumb.${extension}"
    
    if [ ! -f "$thumb_path" ]; then
        echo "Processing: $img_path"
        sips -Z 800 "$img_path" --out "$thumb_path" > /dev/null
    fi
done

echo "Done generating thumbnails."
