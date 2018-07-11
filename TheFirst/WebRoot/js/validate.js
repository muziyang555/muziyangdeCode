(function() {
	/**
	 * ������Ļ��࣬�ṩ�̳л���
	 */
	var initializing = false, fnTest = /xyz/.test(function() {xyz;}) ? /\b_super\b/ : /.*/;
	this.Class = function() {};
	Class.extend = function(prop) {
		var _super = this.prototype;
		initializing = true;
		var prototype = new this();
		initializing = false;
		for ( var name in prop) {
			prototype[name] = typeof prop[name] == "function" 
					&& typeof _super[name] == "function" && fnTest.test(prop[name]) ? 
				(function(name, fn) {
					return function() {
						var tmp = this._super;

						this._super = _super[name];

						var ret = fn.apply(this, arguments);
						this._super = tmp;

						return ret;
					};
				})(name, prop[name]) : prop[name];
		}
		function Class() {
			if (!initializing && this.init)
				this.init.apply(this, arguments);
		}
		Class.prototype = prototype;
		Class.prototype.constructor = Class;
		Class.extend = arguments.callee;
		return Class;
	};
})();
var validate = Class
		.extend({
			defaultCfg:{
				rules:{},
				submitFun:function(){},
				errorLabel:'<label style="color:red"></label>',
				errorFun:function(){}
			},
			init:function(cfg){				
				this.cfg = $.extend({},this.defaultCfg,cfg);
				this.flag=0;
				this.toAction(this);
				if(this.flag==0){
					for(var i in this.cfg.rules){
						$("#"+i).unbind("keyup");
					}
					this.cfg.submitFun();
				}
			},
			toAction:function(that){				
				for(var i in that.cfg.rules){
					this.toVal("#"+i,that.cfg.rules[i]);
				}
			},
			toVal:function(ele,constant){
				validateConstant[constant].test($(ele).val())?
					this.toRemoveError(ele):this.toShowError(ele,errorMsg[constant]);

			},
			toRemoveError:function(ele){
				var that = this;
				if($(ele).closest(".form-group").attr("not-allow")){
					$(ele).removeAttr("style").closest(".form-group").removeAttr("style")
							.removeAttr("not-allow");
					$(ele).next().remove();		
					$(ele).keyup(function(){
						ele = ele.replace("#","");
						that.toVal("#"+ele,that.cfg.rules[ele]);
					});							
				}				
			},
			toShowError:function(ele,message){
				var error = $(this.cfg.errorLabel).text(message);
				if(!$(ele).closest(".form-group").attr("not-allow")){
					$(ele).after(error);
					$(ele).css("border","1px solid red").closest(".form-group")
							.css("color","red").attr("not-allow","true");
					$(ele).keyup(function(){
						ele = ele.replace("#","");
						that.toVal("#"+ele,that.cfg.rules[ele]);
					});
				}	
				this.flag++;	
				var that = this;			
				
			}
		})
var validateConstant = {
	"notEmpty" : /^.+$/,// �Ϸ��ַ�
	"password" : /^[0-9A-Za-z]{1,18}$/,// ����
	"rightfulString" : /^[A-Za-z0-9_-]+$/,// �Ϸ��ַ�
	"number" : /^\d+$/,// ����
	"endlish" : /^[A-Za-z]+$/,// ��Ӣ��
	"numberEnglish" : /^[A-Za-z0-9]+$/,// Ӣ�ĺ�����
	"float" : /^[+]?\d+(\.\d+)?$/,// ������
	"money" : /(^[1-9]\d{0,9}(\.\d{1,2})?$)/,
	"chinese" : "/^[\u4e00-\u9fa5]+$/",// ������
	"mobile" : /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1})|(14[0-9]{1}))+\d{8})$/,// �ֻ���
	"tel" : /^(\d{3,4}-?)?\d{7,9}$/g,// �绰
	"qq" : /^[1-9]\d{4,12}$/,// qq
	"zipCode" : /^[0-9]{6}$/,// ��������
	"email" : /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/,// ����
	"positive":/^[1-9][0-9]+$/,//����0������
	"checkIdCard" : function(idcard) {// У�����֤
		var area={11:"����",12:"���",13:"�ӱ�",14:"ɽ��",15:"���ɹ�",21:"����",22:"����",23:"������",31:"�Ϻ�",32:"����",33:"�㽭",34:"����",35:"����",36:"����",
				37:"ɽ��",41:"����",42:"����",43:"����",44:"�㶫",45:"����",46:"����",50:"����",51:"�Ĵ�",52:"����",53:"����",54:"����",61:"����",62:"����",
				63:"�ຣ",64:"����",65:"�½�",71:"̨��",81:"���",82:"����",91:"����"} 
		var idcard,Y,JYM; 
		var S,M; 
		var idcard_array = new Array(); 
		idcard_array = idcard.split(""); 
		
		//�������� 
		if(area[parseInt(idcard.substr(0,2))]==null){
			return false; 
		}
		//��ݺ���λ������ʽ���� 
		switch(idcard.length){ 
			case 15: 
				if ( (parseInt(idcard.substr(6,2))+1900) % 4 == 0 || ((parseInt(idcard.substr(6,2))+1900) % 100 == 0 && (parseInt(idcard.substr(6,2))+1900) % 4 == 0 )){ 
					ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/;
					//���Գ������ڵĺϷ��� 
				} else { 
					ereg=/^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/;
					//���Գ������ڵĺϷ��� 
				} 
		
				if(ereg.test(idcard)){ 
					return true; 
				}else{ 
					return false;
				}
				break; 
			case 18: 
				//18λ��ݺ����� 
				//�������ڵĺϷ��Լ�� 
				//��������:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9])) 
				//ƽ������:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8])) 
				if ( parseInt(idcard.substr(6,4)) % 4 == 0 || (parseInt(idcard.substr(6,4)) % 100 == 0 && parseInt(idcard.substr(6,4))%4 == 0 )){ 
					ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/;
					//����������ڵĺϷ���������ʽ 
				} else { 
					ereg=/^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/;
					//ƽ��������ڵĺϷ���������ʽ 
				} 
				if(ereg.test(idcard)){//���Գ������ڵĺϷ��� 
					//����У��λ 
					S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7 + (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9 
					+ (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10 + (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5 
					+ (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8 + (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4 
					+ (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2 + parseInt(idcard_array[7]) * 1 + parseInt(idcard_array[8]) * 6 
					+ parseInt(idcard_array[9]) * 3 ; 
					Y = S % 11; 
					M = "F"; 
					JYM = "10X98765432"; 
					M = JYM.substr(Y,1);//�ж�У��λ 
					if(M == idcard_array[17].toUpperCase()) {
						return true; //���ID��У��λ 
					}else{
						return false;
					}
				}else{
					return false;
				}
				break; 
			default: 
				return false; 
				break; 
		} 
	}
}
var errorMsg = {
	"notEmpty" : "����Ϊ��",
	"password" : "��������ȷ������",
	"rightfulString" : "������Ϸ��ַ�",// �Ϸ��ַ�
	"number" : "ֻ����������",// ����
	"endlish" : "ֻ������Ӣ��",// ��Ӣ��
	"numberEnglish" : "ֻ������Ӣ�Ļ�����",// Ӣ�ĺ�����
	"float" : "ֻ������С��",// ������
	"money" : "������Ϸ��۸�",
	"chinese" : "ֻ�����뺺��",// ������
	"mobile" : "��������ȷ���ֻ���",// �ֻ���
	"tel" : "��������ȷ�ĵ绰����",// �绰
	"qq" : "��������ȷ��QQ��",// qq
	"zipCode" : "��������ȷ��QQ��",
	"email" : "��������ȷ������",// ����
	"positive":"���������0������",//����0������
	"checkIdCard" : "��������ȷ�����֤��"// У�����֤
}