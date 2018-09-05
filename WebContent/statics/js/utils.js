/**
 * 用来判断参数是否为空
 */
function isEmpty(string){
	if(string == null || string.trim() == ""){
		return true;
	}
	return false;
}
function isNotEmpty(string){
	if(string == null || string.trim() == ""){
		return false;
	}
	return true;
}