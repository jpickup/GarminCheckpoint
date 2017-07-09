class CPList
{
	var cps;
	function initialize() 
	{
			cps = new[15];
cps[0] = new CPData("CP1","Seathwaite",54.354578,-3.1878105,7,2.5);
cps[1] = new CPData("CP2","Eskdale",54.398673,-3.270725,7,4.7);
cps[2] = new CPData("CP3","Wasdale Head",54.468033,-3.2559011,5.4,6.3);
cps[3] = new CPData("CP4","Buttermere",54.541513,-3.2767065,6.9,9.3);
cps[4] = new CPData("CP5","Braithwaite",54.60261,-3.1903775,6.5,11.9);
cps[5] = new CPData("CP6","Blencathra",54.620699,-3.0824933,8.5,14.9);
cps[6] = new CPData("CP7","Dockray",54.588472,-2.960933,7.7,18.1);
cps[7] = new CPData("CP8","Dalemain",54.63451,-2.8101936,10.1,21.7666666666667);
cps[8] = new CPData("CP9","Howtown",54.56854,-2.8630197,7.1,24.2);
cps[9] = new CPData("CP10","Mardale",54.488845,-2.8212033,9.39999999999999,28.2);
cps[10] = new CPData("CP11","Kentmere",54.429399,-2.8400529,6.5,31);
cps[11] = new CPData("CP12","Ambleside",54.431013,-2.9656758,7.30000000000001,33.6);
cps[12] = new CPData("CP13","Chapel Stile",54.442042,-3.0608132,5.59999999999999,35.5);
cps[13] = new CPData("CP14","Tilberthwaite",54.399715,-3.0705032,6.5,37.8);
cps[14] = new CPData("CP15","Coniston",54.367507,-3.0741596,3.5,40);


/** TEST 
cps = new[11];
cps[0] = new CPData("CP1","Mickleham",51.272811,-0.30078382,1.4,0.264150943396226);
cps[1] = new CPData("CP2","Druids",51.26803,-0.34175711,2.35,0.707547169811321);
cps[2] = new CPData("CP3","Crabtree",51.25933,-0.3415112,0.75,0.849056603773585);
cps[3] = new CPData("CP4","Ranmore",51.241415,-0.36888885,2.1,1.24528301886792);
cps[4] = new CPData("CP5","Westcott",51.22543,-0.36464195,1.26,1.48301886792453);
cps[5] = new CPData("CP6","Dukes",51.189537,-0.36317944,2.84,2.0188679245283);
cps[6] = new CPData("CP7","Skip Leith",51.176526,-0.3710223,0.5,2.11320754716981);
cps[7] = new CPData("CP8","Holmwood",51.200706,-0.32880248,1.4,2.37735849056604);
cps[8] = new CPData("CP9","Brockham",51.232322,-0.29499919,4.15,3.16037735849057);
cps[9] = new CPData("CP10","Box Hill",51.251499,-0.28418755,2.75,3.67924528301887);
cps[10] = new CPData("CP11","Headley",51.270324,-0.27402495,1.7,4);
**/
	}
	
	function get(idx)
	{
		if (idx < 0) {
			return cps[0];
		}
		
		if (idx >= cps.size()) {
			return cps[cps.size()-1];
		}
		
		return cps[idx];
	}
}

