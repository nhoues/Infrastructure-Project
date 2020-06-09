function FRAMES = pausevideo(FRAMES,NPAUSE)
%
% pausevideo   Adds frames to the sequence of frames FRAMES to obtain a pause in
% the generated video. 
%
% FRAMES should contain a sequence of stacked frames obtained using getframe
%
% NPAUSE is the duration of the pause (in seconds) in the final video
%
NFRAMES = 24;
f = FRAMES(end);
FRAMES = [FRAMES repmat(f,1,NPAUSE*NFRAMES)];