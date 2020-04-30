function neuralNetwork()
disp("working...");
net = googlenet;  % Load the neural net

classNames = net.Layers(end).ClassNames;
numClasses = numel(classNames);
disp(classNames(randperm(numClasses,10)))

addpath 'C:\Users\Finni\Documents\MATLAB\images' % file path goes here
picture = imread('download.jpg');  
picture = imresize(picture,[224,224]);  % Resize the image to fit alex net
label = classify(net, picture);        % Classify the picture
disp("Identified as: " + char(label)); % Show the label
end