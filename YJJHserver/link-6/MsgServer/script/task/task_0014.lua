if(Hero:ActFun(1080,"mask == 0",1) == true)then
 Hero:ActFun(127,"�����Ѿ���ɹ���",0)
elseif(Hero:ActFun(1080,"task has 0",1) == true)then
 if(Hero:ActFun(1080,"step == 1",1) == true)then
   if(Hero:ActFun(1080,"task state 2",1) == true)then
     Hero:ActFun(1080,"task end 1",1)
     Hero:ActFun(1080,"step += 1",1)
     Hero:ActFun(1080,"task accept 2",1)
   else
     Hero:ActFun(127,"ǰ������δ���",0)
   end
 elseif(Hero:ActFun(1080,"step == 2",1) == true)then
   if(Hero:ActFun(1080,"task state 0",1) == true)then
     Hero:ActFun(1080,"task accept 2",1)
   else
     Hero:ActFun(127,"�Ѿ�������",0)
   end
 else
   Hero:ActFun(127,"�������������",0)
 end
else
 Hero:ActFun(127,"���ܽ�������",0) 
end