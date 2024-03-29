using Toybox.Math as Math;

class CPData
{
	var id;
	var name;
	var rlat;
	var rlon;
	var cosrlat;
	var dist;			// Distance from previous checkpoint to this one. NOTE: Now in metres
	var cutoff;	

	const DMMEANRADIUS = 6371000.0;  
	const D2R = (Math.PI / 180.0);    
	
	function initialize(_id, _name, _lat, _lon, _dist, _cutoff) 
	{
		self.id = _id;
		self.name = _name;
		self.rlat = deg2rad(_lat);
		self.rlon = deg2rad(_lon);
		self.cosrlat = Math.cos(rlat);
		self.dist = _dist;
		self.cutoff = _cutoff * 1000 * 60 * 60;	// convert cutoff hours to milliseconds
	}
	
	
	function deg2rad(deg) 
	{
		return deg * D2R;
	}
	
	/**
	 * Return the distance, in metres, that the input coordinates are from the checkpoint
	**/
	function haversineDist(other_rlat, other_rlon)  
 	{  
		var hs1 = rlat - other_rlat;  
		var hs2 = rlon - other_rlon;
		var c2 = Math.cos((rlat + other_rlat)/2.0); 
  		return DMMEANRADIUS * Math.sqrt(hs1*hs1+c2*c2*hs2*hs2);  
 	}  
	
	/**
	 * return true if the provided position (in degrees) is within a bounding box of delta metres from the checkpoint location
	**/
	function isNearerThan(other_rlat, other_rlon, delta) 
	{
		var latdiff = (rlat - other_rlat).abs() * DMMEANRADIUS;
		var londiff = (rlon - other_rlon).abs() * DMMEANRADIUS * cosrlat;
//		System.println(id + ": LatDiff: " + latdiff + "   / LonDiff: " + londiff);
		return (latdiff < delta) && (londiff < delta);		
	}
	
	function timeToCutoff(currentTime)
	{
		return cutoff - currentTime;
	}
}
