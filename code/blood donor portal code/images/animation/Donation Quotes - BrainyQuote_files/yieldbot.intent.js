var ybotq=ybotq||[],yieldbot=yieldbot||{};
(function(){var g=window,h=document,q=navigator,i=g,y=escape,D=unescape,z,s="http://i.yldbt.com/m/",u=!1,v=[],w=function(a){if(0===arguments.length)return z;z=a},E=function(a){if(0===arguments.length)return s;s=a},m=function(a){var b,c=a.length,d="";for(b=0;b<c;b++)1===a[b].length&&(d+=a[b][0]+"&"),2===a[b].length&&(d+=a[b][0]+"="+y(a[b][1])+"&");return d+"e"},r=function(a,b){var c=new Image(1,1);c.onLoad=function(){};c.src=s+w()+"/"+a+"?"+b},A=function(a,b){h.write('<script type="text/javascript" src="'+
(s+w()+"/"+a)+"?"+b+'"><\/script>')},k=function(a){try{var b=RegExp("(^|;)[ ]*ybot"+a+"=([^;]*)").exec(h.cookie);return b?D(b[2]):void 0}catch(c){return b=[],b.push(["op","getCookie"]),b.push(["ts",+new Date]),b.push(["k",a]),b.push(["m",c?c.message||c:"_info"]),r("info.gif",m(b)),!1}},l=function(a,b,c,d,f,e){try{var g;c&&(g=new Date,g.setTime(g.getTime()+c));h.cookie="ybot"+a+"="+y(b)+(c?";expires="+g.toGMTString():"")+";path="+(d||"/")+(f?";domain="+f:"")+(e?";secure":"")}catch(o){return c=[],c.push(["op",
"setCookie"]),c.push(["ts",+new Date]),c.push(["k",a]),c.push(["v",b]),c.push(["m",o?o.message||o:"_info"]),r("info.gif",m(c)),!1}},t=function(){return"xxxxxxxxxx".replace(/[x]/g,function(){return(16*Math.random()|0).toString(16)}).toLowerCase()},B=function(){var a,b,c,d,f,e,n=screen;a=t();e=(new Date).getTime();f=k("_lv");c=k("_visitor")||t();(d=k("_session"))?(b=!1,f="true"===d.split("_")[1]):(b=!0,f=f?!1:!0,d=t()+"_"+f);l("_pvi",a,36E5);l("_session",d,36E5);l("_visitor",c,31556E7);l("_lv",e,2592E6);
e=[];e.push(["pvi",a]);e.push(["vi",c]);e.push(["si",d.split("_")[0]]);f&&e.push(["nv"]);b&&e.push(["ln"]);"boolean"===typeof q.cookieEnabled?a=!q.cookieEnabled:(l("__foo","1"),a="1"===k("__foo")?!1:!0);a&&e.push(["cd"]);e.push(["lo",h.location.href]);e.push(["r",function(){var a="";try{a=g.top.document.referrer}catch(b){if(g.parent)try{a=g.parent.document.referrer}catch(c){a=""}}if(""===a)a=h.referrer;return a}()]);e.push(["sd",n.width+"x"+n.height]);e.push(["la",q.language||q.userLanguage]);e.push(["np",
q.platform]);e.push(["ua",q.userAgent]);return m(e)},F=function(a){function b(){return"<head><style>"+a.style+"</style></head><body>"+n+"</body>"}var c=a.request_id,d=a.size[0],f=a.size[1],e=a.interstitial,n=a.html;e&&(n="<table cellspacing='0' cellpadding='0' border='0'><tr><td width='"+d+"' height='"+f+"' bgcolor='#eee' align='center' valign='middle'>"+n+"</td></tr></table>");var n=n+('<script type="text/javascript">var y=window.parent.yieldbot;y.impression("'+c+'");<\/script>'),o=h.body,i=h.getElementById("ybot-"+
c),p=i.style,j=h.createElement("iframe"),k;p.width=d+"px";p.height=f+"px";if(e){p.position="absolute";p.zIndex=32767;p.border="solid 1px #000";i.innerHTML="<div style='position:absolute;top:0;right:0'><a href='javascript:;' onClick='ybotq._close_interstitial();return false;'><img src='http://ui.yieldbot.com/ybm/cdn/img/close.gif' width='7' height='7' alt='Close' border='0' style='display:block;padding:2px'></a></div>";var l=function(){var a,b,c;c=h.documentElement;a=0<=g.innerHeight?g.innerWidth:
c&&0<c.clientWidth?c.clientWidth:0<o.clientHeight?o.clientWidth:0;h.all&&!g.opera?(b=o.scrollLeft||c.scrollLeft,c=o.scrollTop||c.scrollTop):(b=g.pageXOffset,c=g.pageYOffset);p.left=parseInt(b+(a-d)/2,10)+(g.opera?"":"px");p.top=parseInt(c,10)+(g.opera?"":"px")},m;ybotq._close_interstitial=function(){g.clearInterval(m);l=function(){};p.display="none";i.innerHTML=""};m=g.setInterval(l,10)}j.frameBorder="0";j.width=d;j.height=f;j.scrolling="no";j.id="ybot-frame-"+c;/MSIE[ ]+6/.test(q.userAgent)&&(j.src=
"javascript:false");j.allowTransparency="true";i.appendChild(j);try{j.contentWindow.document.open()}catch(s){k="javascript:var d=document.open();d.domain='"+h.domain+"';",j.src=k+"void(0);"}try{var r=j.contentWindow.document;r.write(b());r.close()}catch(t){j.src=k+'d.write("'+b().replace(/"/g,String.fromCharCode(92)+'"')+'");d.close();'}},G=function(a){l("_ad_slots",a.join("."),36E5)},H=function(a){var b,c,d,f,e;c=k("_ad_slots");if(!c)return!1;f=c.split(".");c=f.length;e=a.split(",");d=e.length;for(a=
0;a<d;a++)for(b=0;b<c;b++)if(e[a]===f[b]||"any"===f[b])return e[a];return!1},I=function(){r("track.gif",B())},J=function(){A("init.js",B());u=!0},K=function(a){var b,c,d=[];c=t();d.push(["pvi",k("_pvi")]);d.push(["ri",c]);for(b in a)a.hasOwnProperty(b)&&d.push([b,a[b]]);h.write('<div id="ybot-'+c+'"></div>');A("ad/creative.js",m(d))},L=function(a){var b=[];b.push(["ri",a]);r("ad/impression.gif",m(b))},C=function(a){var b,c,d,f;if("function"===typeof a)b=a;else if(d=a[0],f=a.slice(1),yieldbot.hasOwnProperty(d))b=
yieldbot[d],f&&(c=f);else throw d+" function not available";u&&"resume"!==d?v.push(a):b.apply(yieldbot,c||[])},x=function(a){var b,c;if(!a.framework){c=a.length;for(b=0;b<c;b++)C(a[b])}},M=function(){u=!1;x(v);v=[]};if(!yieldbot.framework)for(;i!==g.top;)if(i=i.parent,i.ybotq&&i.ybotq.framework){yieldbot=i.yieldbot;yieldbot.run_queue(ybotq);ybotq=i.ybotq;break}if(!yieldbot.framework)yieldbot.psn=w,yieldbot.track=I,yieldbot.init=J,yieldbot.resume=M,yieldbot.run_queue=x,yieldbot.ad=K,yieldbot.impression=
L,yieldbot.set_slots=G,yieldbot.slot_available=H,yieldbot._render=F,yieldbot._url_prefix=E,yieldbot.framework="0.1",x(ybotq),ybotq={push:function(a){C(a)},framework:yieldbot.framework}})();