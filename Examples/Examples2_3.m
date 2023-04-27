clear all
clc

%premade file
load('handel');
audioSnip = y(1:19000);
%snip the first hallelujah
RepeatHandel = cat(1,audioSnip,audioSnip);
for  i=1:9%loop the hallelujah 10 times
    RepeatHandel = cat(1,RepeatHandel,audioSnip);
end
sound(RepeatHandel,1.5*Fs);%play hallelujahx10
load('gong');
audioSnip = y(1:10000);
%snip the first gong
RepeatGong = cat(1,audioSnip,audioSnip);
for  i=1:9%loop the hallelujah 10 times
    RepeatGong = cat(1,RepeatGong,audioSnip);
end
%sound(RepeatGong,1.5*Fs);%play gongx10




