--�����������
function npcAct1()
	if(Hero:ActFun(1080,"mask == 24",24) == true)then				--�ж�����
	 
	
	elseif(Hero:ActFun(1080,"task has 0",24) == true)then				--�ж�������
	
	
		if(Hero:ActFun(1080,"step == 7",24) == true)then				--�ж�������
		

	  	if(Hero:ActFun(1080,"task state 0",24) == true)then				--�ж�����״̬
			
			
			 Hero:ActFun(1080,"task accept 7",24)				--��������״̬Ϊ1
			else
			 Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
		  end
		else
	 	 --��ʾϵͳ����
	 	 Hero:ActFun(127,"�Ѿ����������",0)
		end
	else
--	 Hero:ActFun(1080,"task new 1",24)				--����������
	 Hero:ActFun(1080,"task accept 7",24)				--��������״̬Ϊ1
	end


end


--����������
function npcAct2()

	if(Hero:ActFun(1080,"mask == 24",24) == true)then				--�ж�����
	
	
	elseif(Hero:ActFun(1080,"task has 0",24) == true)then				--�ж�������

	
	 	if(Hero:ActFun(1080,"step == 7",24) == true)then				--�ж�������
	 
	   	if(Hero:ActFun(1080,"task state 0",24) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
	     
	    --�ж������Ƿ�����ɣ�������������һ��
	   	elseif(Hero:ActFun(1080,"task state 2",24) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����

	  	elseif(Hero:ActFun(1080,"task state 3",24) == true)then				--�ж�����״̬
	     Hero:ActFun(1080,"task end 7",24)				--���õ�һ��״̬Ϊ���
	     Hero:ActFun(1080,"step += 1",24)				--��������������1
	     --Hero:ActFun(1080,"task delete 1",24)			--ɾ������
	     --Hero:ActFun(1080,"mask += 24",24)				--���������������
		--Hero:ActFun(498,"10",310008)			--ɾ���������
	     Hero:ActFun(1001,"exp += 442000",0)			--������
	     --Hero:ActFun(1001,"petexp += 3000",0)			--�����ﾭ��
	     Hero:ActFun(1001,"money += 23000",2)			--������
	     
	   Hero:ActFun(1046,"24 8",3)					     --���Ͻ�ȡ��һ������ʱ����

	   	elseif(Hero:ActFun(1080,"task state 1",24) == true)then					    --�ж������Ƿ���������������������������һ�� 
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

	if(Hero:ActFun(1080,"mask == 24",24) == true)then					--�ж����룬�������������һ��
 	 Hero:ActFun(127,"�����Ѿ���ɹ���",0)					 --��ʾϵͳ����
	elseif(Hero:ActFun(1080,"task has 0",24) == true)then					--�ж��������Ƿ����������������һ��
 	 Hero:ActFun(1080,"step = 7",24)					 --���ô˲���Ϊ0
	--Hero:ActFun(498,"0",620077)			--ɾ���������
	else
 	 Hero:ActFun(127,"δ��������",0)					 --��ʾϵͳ����
	end

end

if(gContext==3011262)then	
  npcAct1()
elseif(gContext==3011263)then
  npcAct2()
elseif(gContext==3011264)then
  npcAct3()
end