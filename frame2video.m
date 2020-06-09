function frame2video(F,FILENAME)
%
% frame2video   Transforms a sequence of frames F into a video file saved
% under FILENAME
%
% F should contain a sequence of stacked frames obtained using getframe
%
% FILENAME can contain the entire path or just the file name. If it
% contains only the file name, the video is saved under the default folder.
%
NFRAMES = 24;
vidObj = VideoWriter(FILENAME); % Prepare the new file
vidObj.FrameRate = NFRAMES;  % Number of frames per second
vidObj.Quality = 100; % Quality of the video (100 is the max)   
open(vidObj); % Open the file
writeVideo(vidObj,F); % Add the frames to the file
close(vidObj); % Close the file.