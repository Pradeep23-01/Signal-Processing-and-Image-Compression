%% Compression Method 1
figure(1)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','ezw','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - ezw method')
axis square
D = abs(X-Xc).^2;
mse_ezw = sum(D(:))/numel(X)
%% Compression Method 2
figure(2)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','spiht','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - spiht method')
axis square
D = abs(X-Xc).^2;
mse_spiht  = sum(D(:))/numel(X)
%% Compression Method 3
figure(3)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','stw','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - stw method')
axis square
D = abs(X-Xc).^2;
mse_stw  = sum(D(:))/numel(X)
%% Compression Method 4
figure(4)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','wdr','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - wdr method')
axis square
D = abs(X-Xc).^2;
mse_wdr  = sum(D(:))/numel(X)
%% Compression Method 5
figure(5)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','aswdr','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - aswdr method')
axis square
D = abs(X-Xc).^2;
mse_aswdr  = sum(D(:))/numel(X)
%% Compression Method 6
figure(6)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','spiht_3d','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - spiht_3d method')
axis square
D = abs(X-Xc).^2;
mse_spiht3d  = sum(D(:))/numel(X)
%% Compression Method 7
figure(7)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','lvl_mmc','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - lvl_mmc method')
axis square
D = abs(X-Xc).^2;
mse_lvlmmc  = sum(D(:))/numel(X)
%% Compression Method 8
figure(8)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','gbl_mmc_f','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image - gbl_mmc_f method')
axis square
D = abs(X-Xc).^2;
mse_gblmmcf  = sum(D(:))/numel(X)
%% Compression Method 9
figure(9)
X = imread('road.jpg');
[cr,bpp] = wcompress('c',X,'mask.wtc','gbl_mmc_h','maxloop',12)
Xc = wcompress('u','mask.wtc');
delete('mask.wtc');
colormap(pink(255));
subplot(1,2,1); image(X);  title('Original image')
axis square
subplot(1,2,2); image(Xc); title('Compressed image- gbl_mmc_h method')
axis square
D = abs(X-Xc).^2;
mse_gblmmch  = sum(D(:))/numel(X)
%% Making a Table
clc;
disp('mse_ezw       mse_spiht       mse_stw       mse_wdr       mse_aswdr       mse_spiht3d       mse_lvlmmc       mse_gblmmcf       mse_gblmmch')
disp('==========================================================================================================================================')
fprintf( '%.3f        %.3f          %.3f        %.3f         %.3f            %.3f           %.3f            %.3f           %.3f              %.3f',[mse_ezw;mse_spiht;mse_stw;mse_wdr;mse_aswdr;mse_spiht3d;mse_lvlmmc;mse_gblmmcf; mse_gblmmch])
% disp([ mse_ezw' mse_spiht'    mse_stw'    mse_wdr'     mse_aswdr'     mse_spiht3d'       mse_lvlmmc'      mse_gblmmcf'])