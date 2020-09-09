#!/bin/bash





input_file="Input_filename.mp4"

$output_filename_part1="output_filename.mp4"
$output_filename_part2="output_filename.mp4"
$output_filename_part3="output_filename.mp4"



#Beginning  times and end times that will give two parts and split the video size.  Starting  at zero then splitting at the 3 minute mark
#Then  starting at the 3 minute mark and ending at the 6 minute mark.
start_time="00:00:00" 

middle_time="00:03:00" 

end_time="00:06:00"


#The above times  on how to split a file that is 6 minutes long into 2 parts of 3 minutes each


ffmpeg -i $input_filename.mp4 -acodec copy -vcodec copy -ss $start_time -t $middle_time $output_filename_part1.mp4
ffmpeg -i $input_filename.mp4 -acodec copy -vcodec copy -ss $middle_time -t $end_time $output_filename_part2.mp4


# To Use the below line, please delete the - #$ - and add more times if you want a 3 part file
#/$ ffmpeg -i $Input_filename.mp4 -acodec copy -vcodec copy -ss 00:30:00 -t 00:15:00 end_time_part_3.mp4

