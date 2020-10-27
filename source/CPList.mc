class CPList
{
	var cps;
	function initialize() 
	{
			cps = new[18];
			
/** 10 Peaks **
cps[0] = new CPData("CP1","Helvellyn",54.526851,-3.0175523,2.2,2.08836206896552);
cps[1] = new CPData("AS1","Steel End",54.506232,-3.0482365,2.9,3);
cps[2] = new CPData("CP2","Bowfell",54.44781,-3.1663108,7.86,6.39774557165861);
cps[3] = new CPData("CP3","Great End",54.465563,-3.1964392,2.09,7.29951690821256);
cps[4] = new CPData("CP4","Scafell Pike",54.454171,-3.2113311,1.2,8);
cps[5] = new CPData("CP5","Scafell",54.447465,-3.2247663,1.05,8.39817166074149);
cps[6] = new CPData("CP6","Pillar",54.497436,-3.2811687,5.73,12.1767394616557);
cps[7] = new CPData("CP7","Great Gable",54.48214,-3.2193815,2.97,14.0782122905028);
cps[8] = new CPData("CP8","Green Gable",54.485722,-3.2135759,0.370000000000001,14.3463687150838);
cps[9] = new CPData("AS2","Honister Pass",54.511451,-3.1984444,2.44,16);
cps[10] = new CPData("CP9","High Spy",54.535399,-3.1851901,1.94,16.9527595884004);
cps[11] = new CPData("AS3","Nichol End",54.5951,-3.1557357,4.85,19.5);
cps[12] = new CPData("CP10","Skiddaw",54.651391,-3.147739,4.92,21.8162197514716);
cps[13] = new CPData("END","Keswick",54.605368,-3.1371545,5.27999999999999,24);
**/			
/** LAKELAND100 **			
cps[0] = new CPData("CP1","Seathwaite",54.354578,-3.1878105,7,2.5);
cps[1] = new CPData("CP2","Boot",54.399073,-3.2702445,7,4.7);
cps[2] = new CPData("CP3","Wasdale Head",54.468286,-3.2566186,5.4,6.3);
cps[3] = new CPData("CP4","Buttermere",54.541392,-3.2762545,6.9,9.3);
cps[4] = new CPData("CP5","Braithwaite",54.602542,-3.19084,6.5,11.9);
cps[5] = new CPData("CP6","Blencathra",54.621133,-3.0821487,8.5,14.9);
cps[6] = new CPData("CP7","Dockray",54.588725,-2.9607842,7.7,18.1);
cps[7] = new CPData("CP8","Dalemain",54.634692,-2.8098874,10.1,21.7666666666667);
cps[8] = new CPData("CP9","Howtown",54.568633,-2.8625422,7.1,24.2);
cps[9] = new CPData("CP10","Mardale",54.489027,-2.8208519,9.39999999999999,28.2);
cps[10] = new CPData("CP11","Kentmere",54.429311,-2.8398045,6.5,31);
cps[11] = new CPData("CP12","Ambleside",54.430994,-2.9657524,7.30000000000001,33.6);
cps[12] = new CPData("CP13","Chapel Stile",54.442042,-3.0608132,5.59999999999999,35.5);
cps[13] = new CPData("CP14","Tilberthwaite",54.399996,-3.0702179,6.5,37.8);
cps[14] = new CPData("END","Coniston",54.367497,-3.0742978,3.5,40);
*/
/** Welsh3000s **/
cps[0] = new CPData("CP1","Snowdon",53.068149,-4.0767453,4,1.34303301622832);
cps[1] = new CPData("CP2","Carnedd Ugain",53.075736,-4.0747219,0.65,1.56127588136542);
cps[2] = new CPData("CP3","Crib Goch",53.075736,-4.0747219,0.899999999999999,1.86345831001679);
cps[3] = new CPData("CP4","Elldir Fawr",53.130641,-4.0763206,5.15,3.59261331841074);
cps[4] = new CPData("CP5","Y Garn",53.115682,-4.0472076,2.7,4.49916060436486);
cps[5] = new CPData("CP6","Glyder Fawr",53.101426,-4.0292022,1.3,4.93564633463906);
cps[6] = new CPData("CP7","Glyder Fach",53.105022,-4.0080085,1.1,5.30498041410185);
cps[7] = new CPData("CP8","Tryfan",53.11482,-3.9974076,1,5.64073866815893);
cps[8] = new CPData("CP9","Pen yr Ole Wen",53.137519,-4.0108698,3.2,6.71516508114158);
cps[9] = new CPData("CP10","Carmedd Dafydd",53.147685,-3.9998302,0.949999999999999,7.0341354224958);
cps[10] = new CPData("CP11","Yr Elen",53.166446,-3.985443,2.45,7.85674314493565);
cps[11] = new CPData("CP12","Carnedd Llewelyn",53.160044,-3.9703388,0.900000000000002,8.15892557358702);
cps[12] = new CPData("CP13","Foel Grach",53.17373,-3.9636342,1.1,8.5282596530498);
cps[13] = new CPData("CP14","Carnedd Uchaf",53.183225,-3.9657144,0.700000000000003,8.76329043088976);
cps[14] = new CPData("CP15","Foel-fras",53.194589,-3.9526115,1,9.09904868494684);
cps[15] = new CPData("CP16","Drum",53.207542,-3.9356802,1.2,9.50195858981533);
cps[16] = new CPData("CP17","Drosgl",53.220872,-3.9397266,1.2,9.90486849468383);
cps[17] = new CPData("CP18","Finish",53.268259,-3.9391725,6.24,12);

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
	
	function size() {
		return cps.size();
	}
}

