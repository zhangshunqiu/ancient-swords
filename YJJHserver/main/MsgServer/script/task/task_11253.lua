--接受任务操作
function npcAct1()
	if(Hero:ActFun(1080,"mask == 24",24) == true)then				--判断掩码
	 
	
	elseif(Hero:ActFun(1080,"task has 0",24) == true)then				--判断任务链
	
	
		if(Hero:ActFun(1080,"step == 4",24) == true)then				--判断任务步骤
		

	  	if(Hero:ActFun(1080,"task state 0",24) == true)then				--判断任务状态
			
			
			 Hero:ActFun(1080,"task accept 4",24)				--设置任务状态为1
			else
			 Hero:ActFun(127,"已经接受了任务",0)				--显示系统文字
		  end
		else
	 	 --显示系统文字
	 	 Hero:ActFun(127,"已经完成了任务",0)
		end
	else
--	 Hero:ActFun(1080,"task new 1",24)				--建立此任务
	 Hero:ActFun(1080,"task accept 4",24)				--设置任务状态为1
	end


end


--完成任务操作
function npcAct2()

	if(Hero:ActFun(1080,"mask == 24",24) == true)then				--判断掩码
	
	
	elseif(Hero:ActFun(1080,"task has 0",24) == true)then				--判断任务链

	
	 	if(Hero:ActFun(1080,"step == 4",24) == true)then				--判断任务步骤
	 
	   	if(Hero:ActFun(1080,"task state 0",24) == true)then				--判断任务状态
	     Hero:ActFun(127,"任务未接受",0)				--显示系统文字
	     
	    --判断任务是否已完成，已完成则进入下一步
	   	elseif(Hero:ActFun(1080,"task state 2",24) == true)then				--判断任务状态
	     Hero:ActFun(127,"任务已经完成了",0)				--显示系统文字

	  	elseif(Hero:ActFun(1080,"task state 3",24) == true)then				--判断任务状态
	     Hero:ActFun(1080,"task end 4",24)				--设置第一步状态为完成
	     Hero:ActFun(1080,"step += 1",24)				--设置任务步骤数加1
	     --Hero:ActFun(1080,"task delete 1",24)			--删除任务
	     --Hero:ActFun(1080,"mask += 24",24)				--任务结束，加掩码
		Hero:ActFun(498,"1",150003)			--删除任务道具
	     Hero:ActFun(1001,"exp += 421000",0)			--给经验
	     --Hero:ActFun(1001,"petexp += 3000",0)			--给宠物经验
	     Hero:ActFun(1001,"money += 21500",2)			--给碎银
	     
	   Hero:ActFun(1046,"24 5",3)					     --马上接取下一个，暂时不用

	   	elseif(Hero:ActFun(1080,"task state 1",24) == true)then					    --判断任务是否满足完成条件，不满足则进入下一步 
	     Hero:ActFun(127,"任务条件不足",0)					   	--显示系统文字
	   	else
	     Hero:ActFun(127,"任务已经完成过了",0)					   	 --显示系统文字
	   	end
	 	else
	   Hero:ActFun(127,"未接受任务",0)						 --显示系统文字
	 	end
	else
	 Hero:ActFun(127,"未接受任务",0)					 --显示系统文字
	end
	
end

--取消任务操作
function npcAct3()

	if(Hero:ActFun(1080,"mask == 24",24) == true)then					--判断掩码，有掩码则进入下一步
 	 Hero:ActFun(127,"任务已经完成过了",0)					 --显示系统文字
	elseif(Hero:ActFun(1080,"task has 0",24) == true)then					--判断任务链是否建立，建立则进入下一步
 	 Hero:ActFun(1080,"step = 4",24)					 --设置此步骤为0
	--Hero:ActFun(498,"0",620074)			--删除任务道具
	else
 	 Hero:ActFun(127,"未接受任务",0)					 --显示系统文字
	end

end

if(gContext==3011253)then	
  npcAct1()
elseif(gContext==3011254)then
  npcAct2()
elseif(gContext==3011255)then
  npcAct3()
end
