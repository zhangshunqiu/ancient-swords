--�����������
function npcAct1()
  if(Hero:ActFun(1080,"daymask == 45",41) == true)then		--�ж�����
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)				--��ʾϵͳ����
  elseif(Hero:ActFun(1080,"task has 0",41) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 6",41) == true)then		--�ж�������
      if(Hero:ActFun(1080,"task state 0",41) == true)then				  --�ж�����״̬
        Hero:ActFun(1080,"task accept 6",41)				  --��������״̬Ϊ1
      else
        Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
      end
    else
      Hero:ActFun(127,"�Ѿ����������",0)  	 	 --��ʾϵͳ����
    end
  else
  	Hero:ActFun(1080,"task new 6",41)
    Hero:ActFun(1080,"task accept 6",41)				--��������״̬Ϊ1
  end
end

--����������
function npcAct2()
  if(Hero:ActFun(1080,"daymask == 45",41) == true)then				--�ж�����
  elseif(Hero:ActFun(1080,"task has 0",41) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 6",41) == true)then				--�ж�������
      if(Hero:ActFun(1080,"task state 0",41) == true)then				--�ж�����״̬
        Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
    --�ж������Ƿ�����ɣ�������������һ��
    elseif(Hero:ActFun(1080,"task state 2",41) == true)then				--�ж�����״̬
      Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����
    elseif(Hero:ActFun(1080,"task state 3",41) == true)then				--�ж�����״̬
      Hero:ActFun(1080,"task end 6",41)				--���õ�һ��״̬Ϊ���
	  --Hero:ActFun(1080,"task delete 6",41)
      Hero:ActFun(1080,"step += 1",41)				--��������������1
      --Hero:ActFun(498,"0",620005)
      --Hero:ActFun(1001,"exp += 4000",0)			--������
      --Hero:ActFun(1001,"petexp += 4000",0)	  --�����ﾭ��
	  Hero:ActFun(1001,"money += 6000",1)
		--Hero:ActFun(519,"1 1",630028)
        Hero:ActFun(1046,"41 7",3)
    elseif(Hero:ActFun(1080,"task state 1",41) == true)then					    --�ж������Ƿ���������������������������һ��
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
  if(Hero:ActFun(1080,"daymask == 45",41) == true)then
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)
  elseif(Hero:ActFun(1080,"task has 0",41) == true)then
    Hero:ActFun(1080,"step = 6",41)
  else
    Hero:ActFun(127,"δ��������",0)
  end
end

if(gContext==3110963)then
  npcAct1()
elseif(gContext==3110964)then
  npcAct2()
elseif(gContext==3110965)then
  npcAct3()
end