clc,clear;
num1=[1];
den1=[1 0];

num2=[1];
den2=[1 3];

num3=[1];
den3=[1 2 2];

[num4,den4]=series(num1,den1,num2,den2);
[numg,deng]=series(num3,den3,num4,den4);
[num,den]=cloop(numg,deng,-1);
sys1=tf(num,den)

[z,p,k]=tf2zp(num,den);

sys2=zpk(z,p,k,-1);

[r,p1,k2]=residue(num,den);

figure(1)
subplot(2,3,1);
step(num,den);
grid

subplot(2,3,2);
impulse(num,den)
grid

subplot(2,3,3);
t = 0:0.01:10;
u = sin(t);
lsim(num,den,u,t)
grid

subplot(2,3,4);
t = 0:0.01:10;
u = log(t+1);
lsim(num,den,u,t)
grid

subplot(2,3,5);
t = 0:0.01:10;
u = exp(-0.05*t);
lsim(num,den,u,t)
grid

subplot(2,3,6);
[u,t] = gensig('square',1,10,0.1);
lsim(num,den,u,t)
grid


figure(2)
subplot(2,2,1);
pzmap(num,den)
grid

subplot(2,2,2);
rlocus(num,den);
grid

subplot(2,2,3);
nyquist(num,den)
grid

subplot(2,2,4);
bode(num,den)
grid

ii=find(real(p)>0);
n1=length(ii)
if(n1>0)
    disp(['System is unstable, with ' int2str(n1) 'unstable poles']);
else 
    disp('Syatem is stable');
end