;
var check=new Array();    //每正确填写一个输入框则添加一个元素，添加八个元素之后恢复submit按钮

$(function () {  //判断isbn的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("isbn_alert");
			var auto=document.getElementById("autofill"); 
			var manual=document.getElementById("manualfill");
	
			var reg = /^[9][7][8,9]\d{10}$/;   //正则表达式，判断是否满足isbn的13位标准
            $('#isbn').blur(function(event) {
				var value=$(this).val();
                if (!(reg.test(value))) {
                    text.innerHTML="Invalid ISBN!  Ensure to input only numbers[13 digits].";
					$("#isbn").css('borderColor','red');
					auto.disabled=true;
					manual.disabled=false;
					if(check.includes('1')) check.remove('1');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#isbn").css('borderColor','green');
					if(!check.includes('1'))check.push('1');
					if(check.length>=8) document.getElementById("submit").disabled=false;
					auto.disabled=false;
					manual.disabled=true;
                }
            });
        })


$(function () {  //判断booktitle的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("title_alert");
            $('#title').blur(function(event) {
                if ($(this).val()=='') {
                    text.innerHTML="Title Could't be Null";
					$("#title").css('borderColor','red');
					if(check.includes('2')) check.remove('2');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#title").css('borderColor','green');
					if(!check.includes('2'))check.push('2');
					if(check.length>=8) document.getElementById("submit").disabled=false;
                }
            });
        })

$(function () {  //判断bookauthor的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("author_alert");
            $('#author').blur(function(event) {
                if ($(this).val()=='') {
                    text.innerHTML="Author Could't be Null";
					$("#author").css('borderColor','red');
					if(check.includes('3')) check.remove('3');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#author").css('borderColor','green');
					if(!check.includes('3'))check.push('3');
					if(check.length>=8) document.getElementById("submit").disabled=false;
                }
            });
        })

$(function () {		//判断publisher的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("publisher_alert");
            $('#publisher').blur(function(event) {
                if ($(this).val()=='') {
                    text.innerHTML="Publisher Could't be Null";
					$("#publisher").css('borderColor','red');
					if(check.includes('4')) check.remove('4');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#publisher").css('borderColor','green');
					if(!check.includes('4'))check.push('4');
					if(check.length>=8) document.getElementById("submit").disabled=false;
                }
            });
        })

$(function () {		//判断shelflocation的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("shelflocation_alert");
            $('#shelflocation').blur(function(event) {
                if ($(this).val()=='') {
                    text.innerHTML="Shelflocation Could't be Null";
					$("#shelflocation").css('borderColor','red');
					if(check.includes('5')) check.remove('5');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#shelflocation").css('borderColor','green');
					if(!check.includes('5'))check.push('5');
					if(check.length>=8) document.getElementById("submit").disabled=false;
                }
            });
        })

$(function () {		//判断price的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("price_alert");
			
    		var reg = /(^[1-9]\d*(\.\d{1,2})?$)|(^0(\.\d{1,2})?$)/;

            $('#price').blur(function(event) {
				var value = ($(this).val());
                if (!(reg.test(value))) {
                    text.innerHTML="Invalid price!      Ensure to input only numbers and dot.\nOnly three decimal digits are allowed after the decimal point";
					$("#price").css('borderColor','red');
					if(check.includes('6')) check.remove('6');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#price").css('borderColor','green');
					if(!check.includes('6'))check.push('6');
					if(check.length>=8) document.getElementById("submit").disabled=false;
                }
            });
        })

$(function () {		//判断copies的输入框是否为空，为空则提示错误，并将submit按钮置为灰色
			var text=document.getElementById("copies_alert");
            $('#copies').blur(function(event) {
                if ($(this).val()=='') {
                    text.innerHTML="Invalid Copies!   Ensure to input only positive integer.";
					$("#copies").css('borderColor','red');
					if(check.includes('7')) check.remove('7');
					document.getElementById("submit").disabled=true;
                }else{
					text.innerHTML="";
					$("#copies").css('borderColor','green');
					if(!check.includes('7'))check.push('7');
					if(check.length>=8) document.getElementById("submit").disabled=false;
                }
            });
        })

function Literature(name){    //点击后在图书的分类显示处添加一个新的分类
	var labelgroup = document.getElementById("labels");

	var label_var = document.createElement("span");

	label_var.className="label label-success";
	label_var.innerHTML=name;
	labelgroup.appendChild(label_var);
}

Array.prototype.indexOf = function(val) {
	for (var i = 0; i < this.length; i++) {
		if (this[i] == val) return i;
	}
	return -1;
};

Array.prototype.remove = function(val) {
	var index = this.indexOf(val);
	if (index > -1) {
		this.splice(index, 1);
	}
};

$(function(){
	var text=document.getElementById("category_alert");
	$('#myDropdown').on('hidden.bs.dropdown', function () {
		if(document.getElementById("labels").hasChildNodes())
		{
			text.innerHTML="";
			if(!check.includes('8'))check.push('8');
			if(check.length>=8) document.getElementById("submit").disabled=false;
		}
		else{
			text.innerHTML="Category Could't be Null";
			if(check.includes('8')) check.remove('8');
			document.getElementById("submit").disabled=true;
		}
	});
})

function autofillfunc(){
	var auto = document.getElementById("autofill");
	var form1 = document.getElementById("form1")
	form1.action = "BookInfo/AutoFill";
	form1.method = "post";
	console.log(document.getElementById("form1").action);
	var buttonsubmit = document.getElementById("autofill");
	buttonsubmit.type = "submit";
}


$(function (){
    if($('#isbn').val()!=null){
        check.push('1');
    }
    if($('#title').val()!=null){
        check.push('2');
    }
    if($('#author').val()!=null){
        check.push('3');
    }
    if($('#publisher').val()!=null){
        check.push('4');
    }
    if($('#price').val()!=null){
        check.push('6');
    }

})

$(function (){
    document.getElementById("description").value = document.getElementById("introduction").value;
})

function finalSubmit(){

    var form = document.createElement("form");
    form.action = "BookInfo/AddBook";
    form.method = "post";

    var input_isbn = document.createElement("input");
    input_isbn.type = "hidden";
    input_isbn.name = "ISBN";
    input_isbn.value = document.getElementById("isbn").value;
    form.appendChild(input_isbn);

    var input_title = document.createElement("input");
    input_title.type = "hidden";
    input_title.name = "name";
    input_title.value = document.getElementById("title").value;
    form.appendChild(input_title);

    var input_author = document.createElement('input');
    input_author.type = 'hidden';
    input_author.name = 'author';
    input_author.value = document.getElementById('author').value;
    form.appendChild(input_author);

    var input_publisher = document.createElement('input');
    input_publisher.type = 'hidden';
    input_publisher.name = 'publisher';
    input_publisher.value = document.getElementById('publisher').value;
    form.appendChild(input_publisher);

    var input_location = document.createElement('input');
    input_location.type = 'hidden';
    input_location.name = 'location';
    input_location.value = document.getElementById('shelflocation').value;
    form.appendChild(input_location);

    var input_description = document.createElement('input');
    input_description.type = 'hidden';
    input_description.name = 'introduction';
    input_description.value = document.getElementById('description').value;
    form.appendChild(input_description);

    var input_price = document.createElement('input');
    input_price.type = 'hidden';
    input_price.name = 'price';
    input_price.value = document.getElementById('price').value;
    form.appendChild(input_price);

    var input_copies = document.createElement('input');
    input_copies.type = 'hidden';
    input_copies.name = 'copies';
    input_copies.value = document.getElementById('copies').value;
    form.appendChild(input_copies);

    console.log("(*╯3╰)Ready to submit!(*╯3╰)(*╯3╰)");
    document.body.appendChild(form);
    form.submit();

}