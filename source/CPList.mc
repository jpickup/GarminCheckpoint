class CPList
{
	var cps;
	function initialize() 
	{
			cps = new[14];
			
/** 10 Peaks ** (not in metres, won't work)
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
/** LAKELAND100 **	(not in metres, won't work)		
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
/** Scottish4000s **/
cps[0] = new CPData("P1","Ben Nevis",56.7969510331749,-5.00342999584972,7000.0,1.75);
cps[1] = new CPData("P2","Carn Mor Dearg",56.8051409907639,-4.98670600354671,2050.0,2.2625);
cps[2] = new CPData("P3","Aonach Mor",56.8129820097237,-4.96159398928284,2550.0,2.9);
cps[3] = new CPData("B1","Stob Coire Bealach",56.7949269711971,-4.94554499164223,2800.0,3.6);
cps[4] = new CPData("CP1","Corrour Station",56.760337036103,-4.69058501534164,20400.0,8.7);
cps[5] = new CPData("CP2","Dalwhinnie",56.92905401811,-4.24172898754477,36600.0,17.85);
cps[6] = new CPData("CP3","Glen Feshy Bothy",57.0118900202214,-3.90029702335596,30600,25.5);
cps[7] = new CPData("P4","Cairn Toul",57.0543310325592,-3.71081697754561,15000,29.25);
cps[8] = new CPData("P5","Sgor an Lochain Uaine",57.0583840180188,-3.72569099999964,1000.0,29.5);
cps[9] = new CPData("P6","Carn na Criche",57.0626830123364,-3.75127097591757,2000.0,30);
cps[10] = new CPData("P7","Braeriach",57.0782020222395,-3.72879699803888,2000.0,30.5);
cps[11] = new CPData("P8","Ben Macdui",57.0702559780329,-3.6690429970622,5000.0,31.75);
cps[12] = new CPData("P9","Cairn Gorm",57.1166840102523,-3.64492298103869,6000.0,33.25);
cps[13] = new CPData("F","Cairn Gorm Lodge",57.16438,-3.6755831,7000.0,35);

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

