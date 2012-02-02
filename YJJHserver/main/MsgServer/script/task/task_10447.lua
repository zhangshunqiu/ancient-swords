--接受任务操作
function npcAct1()
  if(Hero:ActFun(1080,"mask == 10",10) == true)then		--判断掩码
    Hero:ActFun(127,"任务已经完成过了",0)				--显示系统文字
  elseif(Hero:ActFun(1080,"task has 0",10) == true)then				--判断任务链
    if(Hero:ActFun(1080,"step == 2",10) == true)then		--判断任务步骤
      if(Hero:ActFun(1080,"task state 0",10) == true)then				  --判断任务状态
        Hero:ActFun(1080,"task accept 2",10)				  --设置任务状态为1
      else
        Hero:ActFun(127,"已经接受了任务",0)				--显示系统文字
      end
    else
      Hero:ActFun(127,"已经完成了任务",0)  	 	 --显示系统文字
    end
  else
    Hero:ActFun(1080,"task accept 2",10)				--设置任务状态为1
  end
end

--完成任务操作
function npcAct2()
  if(Hero:ActFun(1080,"mask == 10",10) == true)then				--判断掩码
  elseif(Hero:ActFun(1080,"task has 0",10) == true)then				--判断任务链
    if(Hero:ActFun(1080,"step == 2",10) == true)then				--判断任务步骤
      if(Hero:ActFun(1080,"task state 0",10) == true)then				--判断任务状态
        Hero:ActFun(127,"任务未接受",0)				--显示系统文字
    --判断任务是否已完成，已完成则进入下一步
    elseif(Hero:ActFun(1080,"task state 2",10) == true)then				--判断任务状态
      Hero:ActFun(127,"任务已经完成了",0)				--显示系统文字
    elseif(Hero:ActFun(1080,"task state 3",10) == true)then				--判断任务状态
      Hero:ActFun(1080,"task end 2",10)				--设置第一步状态为完成
      Hero:ActFun(1080,"step += 1",10)				--设置任务步骤数加1
      Hero:ActFun(1001,"exp += 110000",0)			--给经验
      --Hero:ActFun(1001,"petexp += 110000",0)			--给宠物经验
	     Hero:ActFun(1001,"money += 8100",2)
      Hero:ActFun(1046,"10 3",3)
    elseif(Hero:ActFun(1080,"task state 1",10) == true)then					    --判断任务是否满足完成条件，不满足则进入下一步
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
  if(Hero:ActFun(1080,"mask == 10",10) == true)then
    Hero:ActFun(127,"任务已经完成过了",0)
  elseif(Hero:ActFun(1080,"task has 0",10) == true)then
    Hero:ActFun(1080,"step = 2",10)
  else
    Hero:ActFun(127,"未接受任务",0)
  end
end

if(gContext==3010447)then
  npcAct1()
elseif(gContext==3010448)then
  npcAct2()
elseif(gContext==3010449)then
  npcAct3()
end

