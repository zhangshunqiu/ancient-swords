<?php echo $this->fetch('pageheader.htm'); ?>
<link type="text/css" href="./templates/js/jquery-ui-1.8.14.custom.css" rel="stylesheet" />	
<script type="text/javascript" src="./templates/js/jquery.min.js"></script>
<script type="text/javascript" src="./templates/js/jquery-ui-1.8.14.custom.min.js"></script>

<script>
$(document).ready(function(){
	$('.id2').hide();
	$('#select1').change(function() {
		if($('#select1  option:selected').val() == "<?php echo $this->_var['lang']['staff']; ?>"){
			$('.id2').show();
		}else{
			$('.id2').hide();
		}
		//alert('#select1 option:selected').val());
	});
	$('#query').click(function(){
		if($('#select1  option:selected').val() == "<?php echo $this->_var['lang']['staff']; ?>"){
			if($('#action').val()==''||$('#request').val()==''){
				alert('<?php echo $this->_var['lang']['user_null']; ?>');
				return false;
			}
	    }
	});
});
</script>


<form action="compensation.php?act=pet" method="post" enctype="multipart/form-data" name="searchForm">
<table width="90%" id="mix-table"  align="center">

    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['is_username']; ?></strong></td>
        <td align="left"><input type ="text" name="username" id="username" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['pet_id']; ?></strong></td>
        <td align="left"><input type ="text" name="typeid" id="typeid" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['compensation_amount']; ?></strong></td>
        <td align="left"><input type ="text" name="amount" id="amount" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['level']; ?></strong></td>
        <td align="left"><input type ="text" name="level" id="level" /></td>
    </tr>  
      
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['jingyan']; ?></strong></td>
        <td align="left"><input type ="text" name="jingyan" id="jingyan" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['sex']; ?></strong></td>
        <td>
            <input type="radio" value="0" name="sex" checked='true'><?php echo $this->_var['lang']['boy']; ?>
            <input type="radio" value="1" name="sex"><?php echo $this->_var['lang']['girl']; ?>
        </td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['child_type']; ?></strong></td>
        <td align="left"><input type ="text" name="child_type" id="child_type" /></td>
    </tr>
        <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['understand']; ?></strong></td>
        <td align="left"><input type ="text" name="understand" id="understand" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['habit']; ?></strong></td>
        <td align="left"><input type ="text" name="habit" id="habit" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['gift']; ?></strong></td>
        <td align="left"><input type ="text" name="gift" id="gift" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['borntime']; ?></strong></td>
        <td align="left"><input type ="text" name="borntime" id="borntime" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['grow']; ?></strong></td>
        <td align="left"><input type ="text" name="grow" id="grow" /></td>
    </tr>
        <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['strchg']; ?></strong></td>
        <td align="left"><input type ="text" name="strchg" id="strchg" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['intchg']; ?></strong></td>
        <td align="left"><input type ="text" name="intchg" id="intchg" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['stachg']; ?></strong></td>
        <td align="left"><input type ="text" name="stachg" id="stachg" /></td>
    </tr>
     <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['spichg']; ?></strong></td>
        <td align="left"><input type ="text" name="spichg" id="spichg" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['agichg']; ?></strong></td>
        <td align="left"><input type ="text" name="agichg" id="agichg" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>1</strong></td>
        <td align="left"><input type ="text" name="skill1" id="skill1" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>2</strong></td>
        <td align="left"><input type ="text" name="skill2" id="skill2" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>3</strong></td>
        <td align="left"><input type ="text" name="skill3" id="skill3" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>4</strong></td>
        <td align="left"><input type ="text" name="skill4" id="skill4" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>5</strong></td>
        <td align="left"><input type ="text" name="skill5" id="skill5" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>6</strong></td>
        <td align="left"><input type ="text" name="skill6" id="skill6" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>7</strong></td>
        <td align="left"><input type ="text" name="skill7" id="skill7" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>8</strong></td>
        <td align="left"><input type ="text" name="skill8" id="skill8" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>9</strong></td>
        <td align="left"><input type ="text" name="skill9" id="skill9" /></td>
    </tr>
    <tr>
        <td width="90"><strong><?php echo $this->_var['lang']['skill']; ?>10</strong></td>
        <td align="left"><input type ="text" name="skill10" id="skill10" /></td>
    </tr>
        <tr>
            <td> <strong><?php echo $this->_var['lang']['add_type']; ?>:</strong></td>
            <td> 
            <select id="select1" name="add_type">
                 <option value="<?php echo $this->_var['lang']['reward']; ?>"><?php echo $this->_var['lang']['reward']; ?></option>
                 <option value="<?php echo $this->_var['lang']['compensation']; ?>" selected="selected"><?php echo $this->_var['lang']['compensation']; ?></option>
                 <option value="<?php echo $this->_var['lang']['staff']; ?>"><?php echo $this->_var['lang']['staff']; ?></option>
             </select>
            </td>
    </tr>
    <tr class="id2">
        <td width="60"> <strong><?php echo $this->_var['lang']['request']; ?>:</strong> </td>
        <td><input type="text" name="request" id="request"  /></td>
    </tr>
    <tr class="id2">
        <td><strong><?php echo $this->_var['lang']['act_man']; ?>:</strong></td>
        <td><input type="text" name="action" id="action"  /></td>
    </tr>
    
    <tr>
        <td colspan="4">
            <input name="query" type="submit" class="button" id="query" value="<?php echo $this->_var['lang']['button_search']; ?>" onclick="return confirm('<?php echo $this->_var['lang']['whether']; ?>')"/>
            <input name="reset" type="reset" class='button' value='<?php echo $this->_var['lang']['button_reset']; ?>' />
        </td>
    </tr>
</table>
</form>

   <?php if ($this->_var['ok'] == 1): ?>
   <script type="text/javascript">
       alert('<?php echo $this->_var['lang']['compensation_success']; ?>');
   </script>
   <?php endif; ?>



<?php echo $this->fetch('pagefooter.htm'); ?>