--�����������
function npcAct1()

end


--����������
function npcAct2()
if(Hero:ActFun(1080,"step == 9",10001) == true)then
	if(Hero:ActFun(1080,"task state == 3",10001) == true)then
		Hero:ActFun(1080,"task end 9",10001)
		Hero:ActFun(1080,"randstep += 1",10001)
	end
end
end

--ȡ���������
function npcAct3()

Hero:ActFun(1080,"task endnogive 9",10001)
Hero:ActFun(1080,"step = 9",10001)
Hero:ActFun(1080,"randstep += 1",10001)
Hero:ActFun(1001,"jobcon -= 2",0)

end

if(gContext==3020025)then	
  npcAct1()
elseif(gContext==3020026)then
  npcAct2()
elseif(gContext==3020027)then
  npcAct3()
end