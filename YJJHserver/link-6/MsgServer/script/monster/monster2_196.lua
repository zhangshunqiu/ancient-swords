function npcdrop1()    
    if(Hero:ActFun(1050,"200",620049) == false)then       --判断任务物品数量
	    if(Hero:ActFun(508,"49 1",0) == true)then       --判断任务背包空间
		    local x=math.random()*10000                 --随机数
  		    if(x < 5000)then                            --掉落机率
  		  	  Hero:ActFun(519,"1 1",620049)               --增加物品
  		    end
  	    else
  	    	Hero:ActFun(127,"任务背包已满",0)
  	    end
    end
end
function npcdrop2()    
    if(Hero:ActFun(1050,"6",620084) == false)then       --判断任务物品数量
	    if(Hero:ActFun(508,"49 1",0) == true)then       --判断任务背包空间
		    local x=math.random()*10000                 --随机数
  		    if(x < 5000)then                            --掉落机率
  		  	  Hero:ActFun(519,"1 1",620084)               --增加物品
  		    end
  	    else
  	    	Hero:ActFun(127,"任务背包已满",0)
  	    end
    end
end

if(Hero:ActFun(1080,"daymask == 18",97) == false)then                --掩码
	if(Hero:ActFun(1080,"task has 0",97) == true)then            --任务
      	--if(Hero:ActFun(1080,"step == 1",97) == true)then        --步骤
				if(Hero:ActFun(1080,"task state 1",97) == true)then  --任务状态
				npcdrop1()
			--end
		end
	end
end


if(Hero:ActFun(1080,"mask == 26",26) == false)then                --掩码
	if(Hero:ActFun(1080,"task has 0",26) == true)then            --任务
      	if(Hero:ActFun(1080,"step == 10",26) == true)then        --步骤
				if(Hero:ActFun(1080,"task state 1",26) == true)then  --任务状态
				npcdrop2()
			end
		end
	end
end



result=true;