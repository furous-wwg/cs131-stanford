function features = ComputePositionColorFeatures(img)
% Compute a feature vector of colors and positions for all pixels in the
% image. For each pixel in the image we compute a feature vector
% (r, g, b, x, y) where (r, g, b) is the color of the pixel and (x, y) is
% its position within the image.
%
% INPUT
% img - Array of image data of size h x w x 3.
%
% OUTPUT
% features - Array of computed features of size h x w x 5 where
%            features(i, j, :) is the feature vector for the pixel
%            img(i, j, :).

    height = size(img, 1);
    width = size(img, 2);
    features = zeros(height, width, 5);
    features(:,:,1:3) = double(img);
    for i =1:height
        features(i,:,5) = i;
    endfor
    for i=1:width
        features(:,i,4) = i;
    endfor
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %                                                                         %
    %                              YOUR CODE HERE                             %
    %                                                                         %
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end