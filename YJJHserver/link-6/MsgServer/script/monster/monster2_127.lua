function npcdrop1()    
    if(Hero:ActFun(1050,"200",620040) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 5000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620040)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end

function npcdrop2()    
    if(Hero:ActFun(1050,"8",620065) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 5000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620065)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end

function npcdrop3()    
    if(Hero:ActFun(1050,"6",620066) == false)then       --�ж�������Ʒ����
	    if(Hero:ActFun(508,"49 1",0) == true)then       --�ж����񱳰��ռ�
		    local x=math.random()*10000                 --�����
  		    if(x < 5000)then                            --�������
  		  	  Hero:ActFun(519,"1 1",620066)               --������Ʒ
  		    end
  	    else
  	    	Hero:ActFun(127,"���񱳰�����",0)
  	    end
    end
end

if(Hero:ActFun(1080,"daymask == 12",91) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",91) == true)then            --����
      	--if(Hero:ActFun(1080,"step == 1",91) == true)then        --����
				if(Hero:ActFun(1080,"task state 1",91) == true)then  --����״̬
				npcdrop1()
			--end
		end
	end
end

if(Hero:ActFun(1080,"mask == 20",20) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",20) == true)then            --����
      	if(Hero:ActFun(1080,"step == 7",20) == true)then        --����
				if(Hero:ActFun(1080,"task state 1",20) == true)then  --����״̬
				npcdrop2()
			end
		end
	end
end

if(Hero:ActFun(1080,"mask == 20",20) == false)then                --����
	if(Hero:ActFun(1080,"task has 0",20) == true)then            --����
      	if(Hero:ActFun(1080,"step == 10",20) == true)then        --����
				if(Hero:ActFun(1080,"task state 1",20) == true)then  --����״̬
				npcdrop3()
			end
		end
	end
end
result=true;