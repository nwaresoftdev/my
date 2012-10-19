<!--<%@ include file="banner.jsp"%> -->
<%@ include file="removecache.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
	<link rel="stylesheet" href="agrichem.css" media="screen" />
	<link rel="shortcut icon" type="image/png" href="images/bd.png">
	<TITLE>Blood Donor Portal</TITLE>
<meta http-equiv="imagetoolbar" content="no">


<script type="text/javascript">
/* ==== slider nameSpace ==== */
var slider = function() {
	/* ==== private methods ==== */
	function getElementsByClass(object, tag, className) {
		var o = object.getElementsByTagName(tag);
		for ( var i = 0, n = o.length, ret = []; i < n; i++) {
			if (o[i].className == className) ret.push(o[i]);
		}
		if (ret.length == 1) ret = ret[0];
		return ret;
	}
	function setOpacity (obj,o) {
		if (obj.filters) obj.filters.alpha.opacity = Math.round(o);
		else obj.style.opacity = o / 100;
	}
	/* ==== Slider Constructor ==== */
	function Slider(oCont, speed, iW, iH, oP) {
		this.slides = [];
		this.over   = false;
		this.S      = this.S0 = speed;
		this.iW     = iW;
		this.iH     = iH;
		this.oP     = oP;
		this.oc     = document.getElementById(oCont);
		this.frm    = getElementsByClass(this.oc, 'div', 'slide');
		this.NF     = this.frm.length;
		this.resize();
		for (var i = 0; i < this.NF; i++) {
			this.slides[i] = new Slide(this, i);
		}
		this.oc.parent = this;
		this.view      = this.slides[0];
		this.Z         = this.mx;
		/* ==== on mouse out event ==== */
		this.oc.onmouseout = function () {
			this.parent.mouseout();
			return false;
		}
	}
	Slider.prototype = {
		/* ==== animation loop ==== */
		run : function () {
			this.Z += this.over ? (this.mn - this.Z) * .5 : (this.mx - this.Z) * .5;
			this.view.calc();
			var i = this.NF;
			while (i--) this.slides[i].move();
		},
		/* ==== resize  ==== */
		resize : function () {
			this.wh = this.oc.clientWidth;
			this.ht = this.oc.clientHeight;
			this.wr = this.wh * this.iW;
			this.r  = this.ht / this.wr;
			this.mx = this.wh / this.NF;
			this.mn = (this.wh * (1 - this.iW)) / (this.NF - 1);
		},
		/* ==== rest  ==== */
		mouseout : function () {
			this.over      = false;
			setOpacity(this.view.img, this.oP);
		}
	}
	/* ==== Slide Constructor ==== */
	Slide = function (parent, N) {
		this.parent = parent;
		this.N      = N;
		this.x0     = this.x1 = N * parent.mx;
		this.v      = 0;
		this.loaded = false;
		this.cpt    = 0;
		this.start  = new Date();
		this.obj    = parent.frm[N];
		this.txt    = getElementsByClass(this.obj, 'div', 'text');
		this.img    = getElementsByClass(this.obj, 'img', 'diapo');
		this.bkg    = document.createElement('div');
		this.bkg.className = 'backgroundText';
		this.obj.insertBefore(this.bkg, this.txt);
		if (N == 0) this.obj.style.borderLeft = 'none';
		this.obj.style.left = Math.floor(this.x0) + 'px';
		setOpacity(this.img, parent.oP);
		/* ==== mouse events ==== */
		this.obj.parent = this;
		this.obj.onmouseover = function() {
			this.parent.over();
			return false;
		}
	}
	Slide.prototype = {
		/* ==== target positions ==== */
		calc : function() {
			var that = this.parent;
			// left slides
			for (var i = 0; i <= this.N; i++) {
				that.slides[i].x1 = i * that.Z;
			}
			// right slides
			for (var i = this.N + 1; i < that.NF; i++) {
				that.slides[i].x1 = that.wh - (that.NF - i) * that.Z;
			}
		},
		/* ==== HTML animation : move slides ==== */
		move : function() {
			var that = this.parent;
			var s = (this.x1 - this.x0) / that.S;
			/* ==== lateral slide ==== */
			if (this.N && Math.abs(s) > .5) {
				this.obj.style.left = Math.floor(this.x0 += s) + 'px';
			}
			/* ==== vertical text ==== */
			var v = (this.N < that.NF - 1) ? that.slides[this.N + 1].x0 - this.x0 : that.wh - this.x0;
			if (Math.abs(v - this.v) > .5) {
				this.bkg.style.top = this.txt.style.top = Math.floor(2 + that.ht - (v - that.Z) * that.iH * that.r) + 'px';
				this.v = v;
				this.cpt++;
			} else {
				if (!this.pro) {
					/* ==== adjust speed ==== */
					this.pro = true;
					var tps = new Date() - this.start;
					if(this.cpt > 1) {
						that.S = Math.max(2, (28 / (tps / this.cpt)) * that.S0);
					}
				}
			}
			if (!this.loaded) {
				if (this.img.complete) {
					this.img.style.visibility = 'visible';
					this.loaded = true;
				}
			}
		},
		/* ==== light ==== */
		over : function () {
			this.parent.resize();
			this.parent.over = true;
			setOpacity(this.parent.view.img, this.parent.oP);
			this.parent.view = this;
			this.start = new Date();
			this.cpt = 0;
			this.pro = false;
			this.calc();
			setOpacity(this.img, 100);
		}
	}
	/* ==== public method - script initialization ==== */
	return {
		init : function() {
			// create instances of sliders here
			// parameters : HTMLcontainer name, speed (2 fast - 20 slow), Horizontal ratio, vertical text ratio, opacity
			this.s1 = new Slider("slider", 12, 1.84/3, 1/3.2, 70);
			setInterval("slider.s1.run();", 16);
		}
	}
}();
</script>
</head>
<body align=center>
<div id="left">
</div>
<div id="center">
	<div id="slider">
		<div class="slide">
			<img class="diapo" src="images/animation/1.jpg" alt="">
			<div class="text">
				  <span class="title"><h4>Be a blood and organ donor. All it costs is a little love</h4></span>
				  
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/10.jpg" alt="">
			<div class="text">
				<span class="title"><h4>Wherever a man turns he can find someone who needs him</h4></span>
				
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/2.jpg" alt="">
			<div class="text">
				  <span class="title"><h4>Different Kinds Of Blood Groups</h4></span>
				 
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/3.jpg" alt="">
			<div class="text">
				<span class="title"><h4>I am only one, but I am one. I cannot do everything<br>
				  but I can do something. And I will not let what I cannot do <br>
				   interfere with what I can do</h4></span>
				
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/4.jpg" alt="">
			<div class="text">
			  <span class="title"><h4>Open your heart - open it wide <br>
			  someone is standing outside</h4></span>
				 
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/5.jpg" alt="">
			<div class="text">
				  <span class="title"><h4>We make a living by what we get, but we make a life by what we give.</h4></span>
				 
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/6.jpg" alt="">
			<div class="text">
				  <span class="title"><h4>Blood donation gives, a proud feeling of touching someone’s life<br>
				   in such a beautiful way.</h4></span>
				 
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/7.jpg" alt="">
			<div class="text">
				  <span class="title"><h4>The purpose of life is not to be happy - but to matter, <br>to be productive, to be useful,
 to have it make some difference <br> that you have lived at all.</h4> 
</span>
				 
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/8.jpg" alt="">
			<div class="text">
				  <span class="title"><h4>By keeping the blood line flowing, you will greatly contribute <br>
				  towards a healthier, happier society.</h4> </span>
				
			</div>
		</div>
		<div class="slide">
			<img class="diapo" src="images/animation/9.jpg" alt="">
			<div class="text">
				  <a class="title" href="http://www.dhteumeuleu.com"><h4>Do remember, any one may require blood any time. <br>
Including ourselves and our dear ones.</h4> </a>
				 
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
/* ==== start script ==== */
slider.init();
</script>
</body>
</html>
