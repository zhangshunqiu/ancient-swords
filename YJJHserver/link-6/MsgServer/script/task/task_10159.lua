--�����������
function npcAct1()
	if(Hero:ActFun(1080,"mask == 3",3) == true)then				--�ж�����
	 Hero:ActFun(127,"�����Ѿ���ɹ���",0)				--��ʾϵͳ����
	
	elseif(Hero:ActFun(1080,"task has 0",3) == true)then				--�ж�������
	
	
		if(Hero:ActFun(1080,"step == 6",3) == true)then				--�ж�������
		

	  	if(Hero:ActFun(1080,"task state 0",3) == true)then				--�ж�����״̬
			
			
			 Hero:ActFun(1080,"task accept 6",3)				--��������״̬Ϊ1
			 Hero:ActFun(1046,"46",28)
			else
			 Hero:ActFun(127,"�Ѿ�����������",0)				--��ʾϵͳ����
		  end
		else
	 	 --��ʾϵͳ����
	 	
		end
	else
--	 Hero:ActFun(1080,"task new 1",3)				--����������
	 Hero:ActFun(1080,"task accept 6",3)				--��������״̬Ϊ1
	end

end


--����������
function npcAct2()

	if(Hero:ActFun(1080,"mask == 3",3) == true)then				--�ж�����

	
	elseif(Hero:ActFun(1080,"task has 0",3) == true)then				--�ж�������

	
	 	if(Hero:ActFun(1080,"step == 6",3) == true)then				--�ж�������

	  
	   	if(Hero:ActFun(1080,"task state 0",3) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"����δ����",0)				--��ʾϵͳ����
	     
	    --�ж������Ƿ�����ɣ�������������һ��
	   	elseif(Hero:ActFun(1080,"task state 2",3) == true)then				--�ж�����״̬
	     Hero:ActFun(127,"�����Ѿ������",0)				--��ʾϵͳ����

	  	elseif(Hero:ActFun(1080,"task state 3",3) == true)then				--�ж�����״̬
	  		if(Hero:ActFun(508,"47 1",0) == true)then
	     		Hero:ActFun(1080,"task end 6",3)				--���õ�һ��״̬Ϊ���
	     		Hero:ActFun(1080,"step += 1",3)				--��������������1
	     		Hero:ActFun(1001,"exp += 800",0)
	     		--Hero:ActFun(1001,"petexp += 400",0)
						Hero:ActFun(1001,"money += 3000",2)			--������
	     		Hero:ActFun(519,"10 1",330000)
			Hero:ActFun(498,"0",620090)
					
  	   		Hero:ActFun(1046,"3 7",3)					     --���Ͻ�ȡ��һ������ʱ����
  			else
  				Hero:ActFun(127,"����������������������",0)
  			end
	   	elseif(Hero:ActFun(1080,"task state 1",3) == true)then					    --�ж������Ƿ���������������������������һ�� 
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
Hero:ActFun(127,"���������ܷ���Ŷ",0)
end

if(gContext==3010159)then
 npcAct1()
elseif(gContext==3010160)then
 npcAct2()
elseif(gContext==3010161)then
 npcAct3()
end