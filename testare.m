img=imread('C:\Users\Lidia\Desktop\Proiect IRA\235_1.jpg');
img=rgb2gray(img);
img=img(:);
img=im2double(img);
imagine{1}=img;
y=myNeuralNetworkFunction(imagine{1})