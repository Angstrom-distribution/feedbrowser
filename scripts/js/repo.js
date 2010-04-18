/* feed.js
(c) Koen Kooi 2009-2010
Licensed under the GPLv2
*/

var qsParm = new Array();
qsParm['pkgsearch'] = null;
qsParm['arch'] = null;
qsParm['section'] = null;
qsParm['pkgname'] = null;


function qs() {
	var query = window.location.search.substring(1);
	var parms = query.split('&');
	for (var i=0; i<parms.length; i++) {
		var pos = parms[i].indexOf('=');
		if (pos > 0) {
			var key = parms[i].substring(0,pos);
			var val = parms[i].substring(pos+1);
			qsParm[key] = val;
		}
	}
	if (qsParm['pkgsearch']) {
		document.getElementById('pkgsearch').value = qsParm['pkgsearch'];
		pkgQuery();
	}
	if (qsParm['pkgname']) {
		document.getElementById('pkgsearch').value = qsParm['pkgname'];
		pkgQuery();
	}
	if (qsParm['section']) {
		pkgQuery();
	}
	
}

function pkgQuery() {
	var action = 'pkgquery';
	var params = '';
	
	if (qsParm['pkgname']) {
		action = 'pkgname';
		params = '&pkgname=' + qsParm['pkgname'];
		qsParm['pkgname'] = null;
	} 
	
	if (document.getElementById('pkgsearch').value != "") {
		params = params + '&pkgsearch=' + document.getElementById('pkgsearch').value;
	} else {
		if (qsParm['pkgsearch']) {
			params = params + '&pkgsearch=' + qsParm['pkgsearch'];
		}
	}
	if (qsParm['arch']) {
		params = params + '&arch=' + qsParm['arch'];
		qsParm['arch'] = null;
	}
	if (qsParm['section']) {
		action = 'section';
		params = params + '&section=' + qsParm['section'];
		qsParm['section'] = null;
	}
	
	params = '&action=' + action + params;
	document.getElementById('opkgoutput').innerHTML = "loading, please wait";	
	$.ajax({
	   type: "POST",
	   url: 'section.php',
	   data: params,
	   success: function(msg){
		document.getElementById('opkgoutput').innerHTML = msg;
	   }
	 });	
}

function getLetter() {
	var params = 'action=searchletter';
	$.ajax({
	   type: "POST",
	   url: 'section.php',
	   data: params,
	   success: function(msg){
		document.getElementById('searchletter').innerHTML = msg;
	   }
	 });
} 

function getSection() {
	var params = 'action=sectionslist';
	$.ajax({
	   type: "POST",
	   url: 'section.php',
	   data: params,
	   success: function(msg){
		document.getElementById('sectionslist').innerHTML = msg;
	   }
	 }); 
} 


function toggleVisibility(elementId) {
	var elementObj = document.getElementById(elementId);
	if (elementObj.style.display == '') {
		elementObj.style.display = 'none';
	}
	else {
		elementObj.style.display = '';
	}
}

