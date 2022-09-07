
imshow(lidia)
title("Lidia") % imaginea are 2048 inaltime de pixeli si 1536 latime de pixeli => matrice

lidia2=imread("lidia2.jpg");
imshowpair(lidia,lidia2,'montage');
title("Impreuna")

lidiagray=im2gray(lidia2);
imshow(lidiagray);
