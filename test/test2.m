%�������ݺ�������
num1=[1 1];     %G1(s)�Ĵ��ݺ�����ĸ
den1=[500 0 0]; %G1(s)�Ĵ��ݺ�����ĸ

num2=[1];       %G2(s)�Ĵ��ݺ�����ĸ
den2=[1 2];     %G2(s)�Ĵ��ݺ�����ĸ

[num3,den3]=series(num1,den1,num2,den2);  %G1(s)��G2(s)�������ӵĴ��ݺ����������ĸ
[num4,den4]=parallel(num1,den1,num2,den2);%G1(s)��G2(s)�������ӵĴ��ݺ����������ĸ
printsys(num,den)

%����--�ջ����ݺ���
[num5,den5]=cloop(numg,deng,sign); %����numg��deng�ֱ�ΪG(s)�ķ������Ĺ����ʽ��sign=1Ϊ��������sign=-1Ϊ������(Ĭ��ֵ)
[num6,den6]=feedback(numg,deng,numh,denh,sign) %����numhΪH(s)�ķ��Ӷ���ʽ��denhΪ��ĸ����ʽ

