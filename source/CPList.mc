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
cps[11] = new CPData("CP12","Ambleside",54.430251,-2.9664749,7.30000000000001,33.6);
cps[12] = new CPData("CP13","Chapel Stile",54.442042,-3.0608132,5.59999999999999,35.5);
cps[13] = new CPData("CP14","Tilberthwaite",54.399715,-3.0705032,6.5,37.8);
cps[14] = new CPData("CP15","Coniston",55.265808,-3.0983972,3.5,40);

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
