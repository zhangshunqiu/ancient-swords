--�����������
function npcAct1()
  if(Hero:ActFun(1080,"mask == 6",6) == true)then		--�ж�����
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)				--��ʾϵͳ����
  elseif(Hero:ActFun(1080,"task has 0",6) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 8",6) == true)then		--�ж�������
      if(Hero:ActFun(1080,"task state 0",6) == true)then				  --�ж�����״̬
        Hero:ActFun(1080,"task accept 8",6)				  --��������״̬Ϊ1
      else
        Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
      end
    else
      Hero:ActFun(127,"�Ѿ����������",0)  	 	 --��ʾϵͳ����
    end
  else
    Hero:ActFun(1080,"task accept 8",6)				--��������״̬Ϊ1
  end
end

--����������
function npcAct2()
  if(Hero:ActFun(1080,"mask == 6",6) == true)then				--�ж�����
  elseif(Hero:ActFun(1080,"task has 0",6) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 8",6) == true)then				--�ж�������
      if(Hero:ActFun(1080,"task state 0",6) == true)then				--�ж�����״̬
        Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
    --�ж������Ƿ�����ɣ�������������һ��
    elseif(Hero:ActFun(1080,"task state 2",6) == true)then				--�ж�����״̬
      Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����
    elseif(Hero:ActFun(1080,"task state 3",6) == true)then				--�ж�����״̬
      Hero:ActFun(1080,"task end 8",6)				--���õ�һ��״̬Ϊ���
      Hero:ActFun(1080,"step += 1",6)				--��������������1
      Hero:ActFun(498,"3",310004)
      Hero:ActFun(1001,"exp += 44000",0)			--������
       --Hero:ActFun(1001,"petexp += 22000",0)			--�����ﾭ��
	     Hero:ActFun(1001,"money += 2916",2)
Hero:ActFun(1046,"6 9",3)
    elseif(Hero:ActFun(1080,"task state 1",6) == true)then					    --�ж������Ƿ���������������������������һ��
        Hero:ActFun(127,"������������",0)					   	--��ʾϵͳ����
    else
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)					   	 --��ʾϵͳ����
  end
else
    Hero:ActFun(127,"δ��������",0)						 --��ʾϵͳ����
end
  else
    Hero:ActFun(127,"δ��������",0)					 --��ʾϵͳ����
end
end

--ȡ���������
function npcAct3()
  if(Hero:ActFun(1080,"mask == 6",6) == true)then
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)
  elseif(Hero:ActFun(1080,"task has 0",6) == true)then
    Hero:ActFun(1080,"step = 8",6)
  else
    Hero:ActFun(127,"δ��������",0)
  end
end

if(gContext==3010303)then
  npcAct1()
elseif(gContext==3010304)then
  npcAct2()
elseif(gContext==3010305)then
  npcAct3()
end
