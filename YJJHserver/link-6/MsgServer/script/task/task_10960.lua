--�����������
function npcAct1()
  if(Hero:ActFun(1080,"daymask == 45",41) == true)then		--�ж�����
    Hero:ActFun(127,"�����Ѿ���ɹ���",0)				--��ʾϵͳ����
  elseif(Hero:ActFun(1080,"task has 0",41) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 5",41) == true)then		--�ж�������
      if(Hero:ActFun(1080,"task state 0",41) == true)then				  --�ж�����״̬
        Hero:ActFun(1080,"task accept 5",41)				  --��������״̬Ϊ1
      else
        Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
      end
    else
      Hero:ActFun(127,"�Ѿ����������",0)  	 	 --��ʾϵͳ����
    end
  else
  	Hero:ActFun(1080,"task new 5",41)
    Hero:ActFun(1080,"task accept 5",41)				--��������״̬Ϊ1
  end
end

--����������
function npcAct2()
  if(Hero:ActFun(1080,"daymask == 45",41) == true)then				--�ж�����
  elseif(Hero:ActFun(1080,"task has 0",41) == true)then				--�ж�������
    if(Hero:ActFun(1080,"step == 5",41) == true)then				--�ж�������
      if(Hero:ActFun(1080,"task state 0",41) == true)then				--�ж�����״̬
        Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����


    --�ж������Ƿ�����ɣ�������������һ��
    elseif(Hero:ActFun(1080,"task state 2",41) == true)then				--�ж�����״̬
      Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����
    elseif(Hero:ActFun(1080,"task state 3",41) == true)then		--�ж�����״̬
	   if(Hero:ActFun(508,"48 1",0) == true)then
	   Hero:ActFun(1080,"task end 5",41)
       Hero:ActFun(1080,"step += 1",41)				--��������������1
	   Hero:ActFun(519,"1 1",630028)
	   Hero:ActFun(1046,"41 6",3)
	   else
	   Hero:ActFun(127,"���������Ҫ1����������λ��������������",0)
	   end
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
    Hero:ActFun(1080,"step = 5",41)
  else
    Hero:ActFun(127,"δ��������",0)
  end
end

if(gContext==3110960)then
  npcAct1()
elseif(gContext==3110961)then
  npcAct2()
elseif(gContext==3110962)then
  npcAct3()
end