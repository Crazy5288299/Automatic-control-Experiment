%��ȡϵͳ����Ƶ������ͼ������ͼ����bode()
%��ȡϵͳ�ο�˹��ͼ����������ͼ������ͼ����nyquist()


%bode       - Ƶ����Ӧ����ͼ
%nyquist  - Ƶ����Ӧ�˿�˹��ͼ
%nichols   - Ƶ����Ӧ��¶�˹ͼ
%freqresp - ��ȡƵ����Ӧ����
%margin   - ��ֵԣ������λԣ��
%pzmap    - �㼫��ͼ
%ltiview���Ի�ʱ����Ӧ��Ƶ����Ӧͼ
num=[0,0,50];
den=[25,2,1];
w=logspace(-2,3,100)
%bode(num,den,w)
rlocus(num,den)
grid
title('Bode Diagram of  G(s)=50/(25s^2+2s+1)')

%nyquist(num,den)

%A=[-1  -1;6.5  0];
%B=[1  1;1  0];
%C=[1  0;0  1];
%D=[0  0;0  0]; 
%nyquist(A,B,C,D);

%num=[1,3];
%den1=[1,2,0];
%dem2=[1,1,2];
%den=conv(den1,den2);
%rlocus(num,den);
%v=[-10 10 -10 10];
%axis(v);
%grid
%title('Root-Locus Plot of  G(s)=K(s+3)/s(s+2)(s^2+s+2)')


%num=[3,2,1,4,2];
%den=[3,5,1,2,2,1];
%[z,p]=tf2zp(num,den)
%pzmap(num,den) %�㼫��ͼ
%ii=find(real(p)>0);
%n=length(ii)
%if(n>0) 
%    disp(['System is unstable, with ' int2str(n) ' unstable poles']);
%else
%    disp('Syatem is stable');
%end
%disp('The unstable poles are: '), disp(p(ii))
%%%
