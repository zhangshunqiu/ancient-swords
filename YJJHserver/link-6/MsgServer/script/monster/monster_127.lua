function npcdrop1()    
    if(Hero:ActFun(1050,"200",620040) == false)then       --判断任务物品数量
	    if(Hero:ActFun(508,"49 1",0) == true)then       --判断任务背包空间
		    local x=math.random()*10000                 --随机数
  		    if(x < 5000)then                            --掉落机率
  		  	  Hero:ActFun(519,"1 1",620040)               --增加物品
  		    end
  	    else
  	    	Hero:ActFun(127,"任务背包已满",0)
  	    end
    end
end

function npcdrop2()    
    if(Hero:ActFun(1050,"8",620065) == false)then       --判断任务物品数量
	    if(Hero:ActFun(508,"49 1",0) == true)then       --判断任务背包空间
		    local x=math.random()*10000                 --随机数
  		    if(x < 5000)then                            --掉落机率
  		  	  Hero:ActFun(519,"1 1",620065)               --增加物品
  		    end
  	    else
  	    	Hero:ActFun(127,"任务背包已满",0)
  	    end
    end
end

function npcdrop3()    
    if(Hero:ActFun(1050,"6",620066) == false)then       --判断任务物品数量
	    if(Hero:ActFun(508,"49 1",0) == true)then       --判断任务背包空间
		    local x=math.random()*10000                 --随机数
  		    if(x < 5000)then                            --掉落机率
  		  	  Hero:ActFun(519,"1 1",620066)               --增加物品
  		    end
  	    else
  	    	Hero:ActFun(127,"任务背包已满",0)
  	    end
    end
end

if(Hero:ActFun(1102,"inteam 0 0",0) == true)then
Hero:ActFun(1118,"",110127)
else


if(Hero:ActFun(1080,"daymask == 12",91) == false)then                --掩码
	if(Hero:ActFun(1080,"task has 0",91) == true)then            --任务
      	--if(Hero:ActFun(1080,"step == 1",91) == true)then        --步骤
				if(Hero:ActFun(1080,"task state 1",91) == true)then  --任务状态
				npcdrop1()
			--end
		end
	end
end


if(Hero:ActFun(1080,"mask == 20",20) == false)then                --掩码
	if(Hero:ActFun(1080,"task has 0",20) == true)then            --任务
      	if(Hero:ActFun(1080,"step == 7",20) == true)then        --步骤
				if(Hero:ActFun(1080,"task state 1",20) == true)then  --任务状态
				npcdrop2()
			end
		end
	end
end


if(Hero:ActFun(1080,"mask == 20",20) == false)then                --掩码
	if(Hero:ActFun(1080,"task has 0",20) == true)then            --任务
      	if(Hero:ActFun(1080,"step == 10",20) == true)then        --步骤
				if(Hero:ActFun(1080,"task state 1",20) == true)then  --任务状态
				npcdrop3()
			end
		end
	end
end
end