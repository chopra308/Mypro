 	dojo.require("dojo.fx");
dojo.ready(function(){
 	dojo.require("dojo.fx");
	 var anim = dojo.fx.wipeIn({node:dojo.byId("line1"),duration:100});
	 var anim2 = dojo.fx.wipeIn({node:dojo.byId("line2"),duration:100});
	 var anim3 = dojo.fx.wipeIn({node:dojo.byId("line3"),duration:100});
     dojo.fx.chain([anim,anim2,anim3]).play();
    // var slide=dojo.fx.slideTo({'node':dojo.byId("sl1"),'top':200,'left':300});
     var slide=dojo.animateProperty({
			node:dojo.byId("sl1"),
			properties: {  left: 300, opacity: 1 }
		}).play();
     var slide1=dojo.animateProperty({
			node:dojo.byId("sl2"),
			properties: {  left: 300, opacity: 1 }
		}).play();
    var slide2= dojo.animateProperty({
			node:dojo.byId("sl3"),
			properties: {  left: 300, opacity: 1 }
		}).play();
    var slide3= dojo.animateProperty({
		node:dojo.byId("sl4"),
		properties: {  left: 300, opacity: 1 }
	}).play();
	
  //  dojo.fx.chain([slide,slide1,slide2,slide3]).play();
	
   /** var isClicked = false;
    var toggler = new Toggler({
    node: "panel1"
    });
	dojo.fx(dojoz.byId("sl1"), "click", function(e){
	    if(isClicked===false){
	       toggler.hide();
	      isClicked=true;
	  }
	  else{
	      toggler.show();
	      isClicked=false;
	  }
	 });
	//});**/
	//dojo.connect(dojo.byId("sl1"), "onClick", tog1, "show");
    var isClicked = false;
   var tog1= dojo.fx.wipeOut({
		node:dojo.byId("panel1"),
		easing : function(x) { return Math.pow(Math.sin(4*x),2);   },
        duration : 5000
	});
    if(isClicked==false){
    	tog1.play();
    }
    else
    	{
    	tog1.stop();
    	}
});
//dojo.fx.wipeIn({node:'mydiv',duration:1000}).play();


















