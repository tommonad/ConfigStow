Vim�UnDo� t�}~N�!�5<p��Y�J2��tK�OrMq�@�   <   Q    ffmpeg -i "$input_file" -c:v copy -c:a libopus -b:a 128k -ac 2 "$output_file"      
      +       +   +   +    f��M   
 _�                             ����                                                                                                                                                                                                                                                                                                                                                             f��+     �                   �               5��                   +                      �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��,     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��@     �                Droot_directory="/path/to/your/videos"  # Replace with your directory5��                          5       E               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             f��C     �         *       5��                       	   5               	       5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             f��F     �         *      	read -rp 5��       	                  >                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             f��H     �         *      read -rp ""5��       
                  ?                      �                        O                     �                        O                     �       %                 Z                     �       -                 b                     5�_�                       0    ����                                                                                                                                                                                                                                                                                                                                                             f��]     �         *    5��                          h                      5�_�      	                 2    ����                                                                                                                                                                                                                                                                                                                                                             f��a    �         +      2read -rp "Please enter directory containing files"5��       2                  g                      �       6                 k                     �       3                 h                     5�_�      
           	      1    ����                                                                                                                                                                                                                                                                                                                                                             f��    �         +      Aread -rp "Please enter directory containing files" root_directory5��       1                  f                      5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                               
       +   $       V   1    f��G     �              +   #!/bin/bash       '# Root directory containing video files   Bread -rp "Please enter directory containing files " root_directory       :# Directory where old files will be moved after conversion   -oldfiles_directory="$root_directory/oldfiles"       3# Create the oldfiles directory if it doesn't exist   mkdir -p "$oldfiles_directory"       ># Function to convert audio to Opus and move the original file   convert_audio_to_opus() {       local input_file="$1"   1    local output_file="${input_file%.*}_opus.mkv"          "    echo "Converting: $input_file"   {    ffmpeg -i "$input_file" -c:v copy -c:a libopus -b:a 128k -ac 2 "$output_file"  # Adjust -ac for multi-channel if needed          ,    # Check if the conversion was successful       if [ $? -eq 0 ]; then   B        echo "Successfully converted: $input_file to $output_file"              :        # Move the original file to the oldfiles directory   /        mv "$input_file" "$oldfiles_directory/"           if [ $? -eq 0 ]; then   K            echo "Moved original file: $input_file to $oldfiles_directory/"           else   1            echo "Error moving file: $input_file"   
        fi       else   1        echo "Error converting file: $input_file"       fi   }       5# Export the function so it can be used in find -exec   export -f convert_audio_to_opus   [export oldfiles_directory  # Export the oldfiles directory variable for use in the function       ?# Find and convert video files, excluding files with Opus audio  find "$root_directory" -type f \( -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.wmv" -o -iname "*.flv" -o -iname "*.mpg" -o -iname "*.mpeg" -o -iname "*.m4v" -o -iname "*.3gp" -o -iname "*.webm" \) -exec bash -c 'convert_audio_to_opus "$0"' {} \;       $echo "Conversion process completed."5��            +                      �             5�_�   
                         ����                                                                                                                                                                                                                                                                                                                               
          $       V   1    f��O     �                   �               5��                    2                       a      5�_�                            ����                                                                                                                                                                                                                                                                                                                            3   
       3   $       V   1    f��Q     �                Droot_directory="/path/to/your/videos"  # Replace with your directory5��                          5       E               5�_�                            ����                                                                                                                                                                                                                                                                                                                            2   
       2   $       V   1    f��R     �         2       5��                          5                      �                        6                     5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            2   
       2   $       V   1    f��W     �         2      	read -rp 5��       	                  >                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                            2   
       2   $       V   1    f��Y     �         2      read -rp ""5��       
               	   ?               	       �                        F                     �                        I                     �                         U                     5�_�                       $    ����                                                                                                                                                                                                                                                                                                                            2   
       2   $       V   1    f��h     �         2      %read -rp "Please enter path to files"5��       $                  Y                      5�_�                       &    ����                                                                                                                                                                                                                                                                                                                            2   
       2   $       V   1    f��i     �         2      &read -rp "Please enter path to files "5��       &                  [                      �       '                 \                     �       '                 \                     5�_�                       4    ����                                                                                                                                                                                                                                                                                                                            2   
       2   $       V   1    f��s    �         2    5��                          k                      5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         3      1    local output_file="${input_file%.*}_opus.mkv"5��       '                  �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         3      0    local output_file="${input_file%.*}opus.mkv"5��       '                  �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         3      /    local output_file="${input_file%.*}pus.mkv"5��       '                  �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             f��     �         3      .    local output_file="${input_file%.*}us.mkv"5��       '                  �                     5�_�                       '    ����                                                                                                                                                                                                                                                                                                                                                             f��    �         3      -    local output_file="${input_file%.*}s.mkv"5��       '                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               
       3           V   '    f���     �              3   #!/bin/bash       '# Root directory containing video files   5read -rp "Please enter path to files " root_directory       :# Directory where old files will be moved after conversion   -oldfiles_directory="$root_directory/oldfiles"       3# Create the oldfiles directory if it doesn't exist   mkdir -p "$oldfiles_directory"       ># Function to convert audio to Opus and move the original file   convert_audio_to_opus() {       local input_file="$1"   ,    local filename=$(basename "$input_file")   ,    local output_file="${input_file%.*}.mkv"          A    # Check if the output file already exists to avoid duplicates   "    if [ -f "$output_file" ]; then   L        echo "Output file $output_file already exists, skipping conversion."           return       fi       "    echo "Converting: $input_file"   Q    ffmpeg -i "$input_file" -c:v copy -c:a libopus -b:a 128k -ac 2 "$output_file"          ,    # Check if the conversion was successful       if [ $? -eq 0 ]; then   B        echo "Successfully converted: $input_file to $output_file"              :        # Move the original file to the oldfiles directory   /        mv "$input_file" "$oldfiles_directory/"           if [ $? -eq 0 ]; then   K            echo "Moved original file: $input_file to $oldfiles_directory/"           else   1            echo "Error moving file: $input_file"   
        fi       else   1        echo "Error converting file: $input_file"       fi   }       5# Export the function so it can be used in find -exec   export -f convert_audio_to_opus   [export oldfiles_directory  # Export the oldfiles directory variable for use in the function       4# Find and convert video files, excluding .mkv files  find "$root_directory" -type f \( -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.wmv" -o -iname "*.flv" -o -iname "*.mpg" -o -iname "*.mpeg" -o -iname "*.m4v" -o -iname "*.3gp" -o -iname "*.webm" \) -exec bash -c 'convert_audio_to_opus "$0"' {} \;       $echo "Conversion process completed."    5��            3                      N             5�_�                            ����                                                                                                                                                                                                                                                                                                                               
                  V   '    f���     �                   �               5��                    8                       w      5�_�                            ����                                                                                                                                                                                                                                                                                                                            9   
       9           V   '    f���     �                Droot_directory="/path/to/your/videos"  # Replace with your directory5��                          5       E               5�_�                            ����                                                                                                                                                                                                                                                                                                                            8   
       8           V   '    f���     �         8       5��                       	   5               	       5�_�                       	    ����                                                                                                                                                                                                                                                                                                                            8   
       8           V   '    f���     �         8      	read -rp 5��       	                  >                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                            8   
       8           V   '    f���     �         8      read -rp ""5��       
                  ?                      �       
                 ?                     �                        L                     5�_�                       $    ����                                                                                                                                                                                                                                                                                                                            8   
       8           V   '    f���     �         8      %read -rp "Please enter path to files"5��       $                  Y                      5�_�                        &    ����                                                                                                                                                                                                                                                                                                                            8   
       8           V   '    f���     �         8      &read -rp "Please enter path to files "5��       &                  [                      �       (                 ]                     �       (                 ]                     �       (                 ]                     �       (                 ]                     �       6                  k                      5�_�      !                  5    ����                                                                                                                                                                                                                                                                                                                            8   
       8           V   '    f���    �         8    5��                          l                      5�_�       "           !   8   "    ����                                                                                                                                                                                                                                                                                                                                                             f��     �   7   9   9      $echo "Conversion process completed."5��    7   "                  f                     5�_�   !   #           "   8   "    ����                                                                                                                                                                                                                                                                                                                                                             f��     �   8   :   9    5��    8                      h                     5�_�   "   $           #   8   "    ����                                                                                                                                                                                                                                                                                                                                                             f��     �   7   9   :      #echo "Conversion process completed"5��    7   "               
   f              
       �    7   +                 o                    5�_�   #   %           $   7        ����                                                                                                                                                                                                                                                                                                                                                             f��<    �   7   9   ;       �   7   9   :    5��    7                      D                     �    7                      D                     �    7                    E                    5�_�   $   &           %   8       ����                                                                                                                                                                                                                                                                                                                                                             f���     �   7   9   ;      rm -rf oldfiles5��    7                     K                     5�_�   %   '           &   8       ����                                                                                                                                                                                                                                                                                                                                                             f���     �   7   9   ;      rm -rf $oldfiles5��    7                     T                     �    7          	          L      	              �    7                 	   L             	       �    7          	          L      	              5�_�   &   (           '   8       ����                                                                                                                                                                                                                                                                                                                                                             f���     �   7   9   ;      rm -rf $oldfiles_directory5��    7                     K                     5�_�   '   )           (   8       ����                                                                                                                                                                                                                                                                                                                                                             f���     �   7   9   ;      rm -rf "$oldfiles_directory5��    7                     _                     5�_�   (   +           )   8       ����                                                                                                                                                                                                                                                                                                                                                             f��    	 �   8   :   ;    5��    8                      a                     5�_�   )       *       +      
    ����                                                                                                                                                                                                                                                                                                                                                             f��L   
 �          <      Q    ffmpeg -i "$input_file" -c:v copy -c:a libopus -b:a 128k -ac 2 "$output_file"5��       
                  �                     �                        �                    �                        �                    5�_�   )           +   *   6        ����                                                                                                                                                                                                                                                                                                                                                             f�B�    �   6   7   <    �   5   7   <     _/mnt/media/MyMovies/TV/Dave Chappelle The Closer (2021) [1080p] [WEBRip] [5.1] [YTS.MX]find "$root_directory" -type f \( -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mov" -o -iname "*.wmv" -o -iname "*.flv" -o -iname "*.mpg" -o -iname "*.mpeg" -o -iname "*.m4v" -o -iname "*.3gp" -o -iname "*.webm" \) -exec bash -c 'convert_audio_to_opus "$0"' {} \;5��    5                   W   :              W       5��