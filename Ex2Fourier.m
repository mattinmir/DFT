clear all
close all

nsamp = 128;
fsamp = 25600;
fsig  = 1000;
for i = 1:10
    S(i,:) = sinegen(fsamp, i*fsig, nsamp);
end
bn = [2 -1 2/3 -1/2 2/5 -1/3 2/7 -1/4 2/9 -1/5];
plot(bn*S);