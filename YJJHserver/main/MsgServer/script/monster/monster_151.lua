function npcdrop1()    
    if(Hero:ActFun(1050,"200",620042) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 5000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620042)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end

function npcdrop2()    
    if(Hero:ActFun(1050,"7",620073) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 5000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620073)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end

if(Hero:ActFun(1102,"inteam 0 0",0) == true)then
Hero:ActFun(1118,"",110151)
else


if(Hero:ActFun(1080,"daymask == 14",93) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",93) == true)then            --����
      	--if(Hero:ActFun(1080,"step == 1",93) == true)then        --����
				if(Hero:ActFun(1080,"task state 1",93) == true)then  --����״̬
				npcdrop1()
			--end
		end
	end
end
if(Hero:ActFun(1080,"mask == 22",22) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",22) == true)then            --����
      	if(Hero:ActFun(1080,"step == 10",22) == true)then        --����
				if(Hero:ActFun(1080,"task state 1",22) == true)then  --����״̬
				npcdrop2()
			end
		end
	end
end
end