--�����������
function npcAct1()
	if(Hero:ActFun(1080,"task has 0",29) == true)then				      --�ж�������
    if(Hero:ActFun(1050,"1",626100) == false)then		      --�ж�������
    	Hero:ActFun(1080,"step = 3",29)
    	Hero:ActFun(1080,"task accept 3",29)				          --��������״̬Ϊ1
    	Hero:ActFun(519,"1 1",626100)
    else
    	Hero:ActFun(127,"����δ��ɵ���������",0)  	 	                              --��ʾϵͳ����
    end
  else
  	Hero:ActFun(1080,"task new 3",29)
    Hero:ActFun(1080,"task accept 3",29)				              --��������״̬Ϊ1
    Hero:ActFun(519,"1 1",626100)
  end
end


--����������
function npcAct2()
	if(Hero:ActFun(1014,"",0) == true)then
		Hero:ActFun(1080,"task end 3",29)
		Hero:ActFun(1080,"step = 3",29)
		Hero:ActFun(498,"0",626100)
		Hero:ActFun(1001,"money += 150000",1)
	else
		Hero:ActFun(127,"�㻹û��׬���㹻������",0)					   	                  --��ʾϵͳ����
	end
end

--ȡ���������
function npcAct3()
	Hero:ActFun(1080,"step = 3",29)
	Hero:ActFun(498,"0",626100)
end

if(gContext==3010906)then
  npcAct1()
elseif(gContext==3010907)then
  npcAct2()
elseif(gContext==3010908)then
  npcAct3()
end