nnet = alexnet;  % Load the neural net   
addpath 'C:\Users\Finni\Documents\MATLAB' % file path goes here
picture = imread('download.jpg');  
picture = imresize(picture,[227,227]);  % Resize the image to fit alex net
label = classify(nnet, picture);        % Classify the picture
disp(char(label)); % Show the label