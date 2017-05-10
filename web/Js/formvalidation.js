/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

            function isDigit(obj)
			{
				pat=/[0-9]/
				if(pat.test(obj.value))
					return true;
				else
					return false;
			}
			function isPhone(obj)
			{
				pat=/[0-9]{10}/
				if(!pat.test(obj.value)||obj.value.length>10)
					return false;
				else
					return true;
			}
			function isEmailID(obj)
			{
				var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-Z0-9]{2,4}$/
				if(emailExp.test(obj.value))
					return true;
				else
					return false;
			}
			function isEmpty(obj)
			{
				if(obj.value.length==0)
					return true;
				else
					return false;
			}
			function inRange(obj,min,max)
			{
				if(parseInt(obj.value)>=min && parseInt(obj.value)<=max)
					return true;
				else
					return false;
			}	
			function compare(obj1,obj2)
			{
				if(obj1.value==obj2.value)
					return true;
				else
					return false;
			}

