clc
close all
clear 
DirectorFile = imageDatastore('C:\Users\Lidia\Desktop\Proiect IRA\ImaginiT','IncludeSubfolders',1,'LabelSource','foldernames')
Images = imageDatastore('C:\Users\Lidia\Desktop\Proiect IRA\ImaginiT','IncludeSubfolders',1,'LabelSource','foldernames')
%% Inputul Retelei Neuronale
images=readall(DirectorFile) 
 for i=1:length(images) %Citim toate imaginile din folder si le vom stoca intr-un vector de imagini
     image=rgb2gray(images{i}); %2d
     image=image(:); %vector
     image=im2double(image);
      image=image/255;
     Array{i}=image;
 end

 %Parte necesara pentru ca vectorul de input sa poata fi recunoscut de retea
 %Transformam vectorul de vectori (Array{i}) intr-un vector normal
 functie = cellfun(@numel,Array); %Numarul de array-uri din Array, cu cate elemente contine fiecare
 maxim = max(functie); %Maximul de elemente din fiecare vector
 nume = numel(Array); %Numarul de array-uri incluse in Array
 input = zeros(maxim,nume);  %Initializare input cu dimensiunile respective
 
 %Creare input:
  for ii = 1:nume
  input(1:functie(ii),ii) = Array{ii};
  end
  
  %% Partea de Target 
  %Se realizeaza partea de target in functie de numele folder-ului unde
  %sunt salvate imaginile -> cancere / noncancere
  Labels=Images.Labels
 for i=1:length(Labels)
     if (Labels(i)=='cancere')
         target(i)=1;
     else
         target(i)=0;
     end
 end
 %% Testare
  img=imageDatastore('C:\Users\Lidia\Desktop\Proiect IRA\test');
  images1=readall(img)

  for i=1:length(images1)
      image=rgb2gray(images1{i}); %2d
      image=image(:); %vector
      array{i}=image;
       
% %     %figure,imshow(image);
  end
 s = cellfun(@numel,array); %
 m = max(s);
 n = numel(array);
 tests = zeros(m,n);
 
  for ii = 1:n
  tests(1:s(ii),ii) = array{ii};
  end
  K = imresize(tests,[201600 258]);
 K=im2double(K);
 nnstart



 

 






