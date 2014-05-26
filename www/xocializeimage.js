cordova.define("com.xocialize.cordova.xocializeimage.xocializeimage", function(require, exports, module) { // JavaScript Document
CDV = ( typeof CDV == 'undefined' ? {} : CDV );
var cordova = window.cordova || window.Cordova;

CDV.XocializeImage = {

	addImage: function(url,cb) {
	  
		cordova.exec(function callback(data) {
                
				if(typeof cb == 'function'){ cb.call(this,data); }
            
			},
			function errorHandler(err){
				
			},'XocializeImage','CDVSaveImage',[url]);
  	}
	
}

});
