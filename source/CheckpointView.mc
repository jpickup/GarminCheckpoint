using Toybox.WatchUi as Ui;
using Toybox.Graphics as Gfx;
using Toybox.System as Sys;
using Toybox.Lang as Lang;
using Toybox.Position as Position;
using Toybox.Math as Math;

	
class CheckpointView extends Ui.DataField {
	var cpidx;
	var legstart;
	var checkpoints;
	var delta;
	var nextCpRemain;
	var nextCpName;
	var nextCpId;
	var mLabelX;
	var mLabelY;
	var mCutoffX;
	var mCutoffY;
	var mDistanceY;
	var labelFont;
	var distanceFont;
	var timeToCutoff;

    function initialize() {
        DataField.initialize();
        checkpoints = new CPList();
        cpidx = 0;
        legstart = 0.0;
        delta = 150;        
    }
    
    function compute(info) {
        if ((info.elapsedDistance != null) && (info.currentLocation != null))
        {	
        	var loc = info.currentLocation;
        	var locRad = loc.toRadians();
        	var rlat = locRad[0];
        	var rlon = locRad[1];
        	var nextCp = checkpoints.get(cpidx);
        	var nextButOneCp = checkpoints.get(cpidx+1);
        	
        	if (nextCp.isNearerThan(rlat, rlon, delta)) {
     			legstart = info.elapsedDistance;
        		cpidx = cpidx + 1;
        		nextCp = checkpoints.get(cpidx);
        	}
        	// skip at most one CP
        	else if (nextButOneCp.isNearerThan(rlat, rlon, delta)) {
       			legstart = info.elapsedDistance;
        		cpidx = cpidx + 2;
        		nextCp = checkpoints.get(cpidx);
        	}
        	
        	/* Use in distance view */
        	var dist = (info.elapsedDistance - legstart) / 1609.34;
        	nextCpRemain = nextCp.dist - dist;   
        	
			/* use in name view */   
			nextCpId = nextCp.id;     	
        	nextCpName = nextCp.name;
        	
        	timeToCutoff = nextCp.timeToCutoff(info.elapsedTime);
        }
    }
    
    function onLayout(dc) {
        var width = dc.getWidth();
        var height = dc.getHeight();
        
        labelFont = Gfx.FONT_LARGE;
        var labelHeight = height;
        while ((labelHeight > height / 3) && (labelFont > 0)) {
        	labelFont--;
        	labelHeight = dc.getFontHeight(labelFont);
        }        
        
        distanceFont = Gfx.FONT_NUMBER_THAI_HOT + 1;
        var distanceHeight = height;
        while ((distanceHeight > height * 2 / 3) && (distanceFont > 0)) {
        	distanceFont--;
        	distanceHeight = dc.getFontHeight(distanceFont);        
        }
        
        mLabelX = width / 2;
        mLabelY = height / 10;
        mCutoffX = width / 2;
        mCutoffY = mLabelY + labelHeight;
        
        mDistanceY = height - distanceHeight - height / 10;
    }
    
    function onUpdate(dc) {
        var bgColor = getBackgroundColor();
        var fgColor = Gfx.COLOR_WHITE;

        if (bgColor == Gfx.COLOR_WHITE) {
            fgColor = Gfx.COLOR_BLACK;
        }

        dc.setColor(fgColor, bgColor);
        dc.clear();
        dc.setColor(fgColor, Gfx.COLOR_TRANSPARENT);

        
        var cpIdStr = "CP";
        if (nextCpId != null) {
        	cpIdStr = nextCpId;
        }
        dc.drawText( mLabelX, 0, labelFont, cpIdStr, Gfx.TEXT_JUSTIFY_CENTER );
                
        var cpStr = "Checkpoint";
        if (nextCpName != null) {
        	cpStr = nextCpName;
        }
        dc.drawText( mLabelX, mLabelY, labelFont, cpStr, Gfx.TEXT_JUSTIFY_CENTER );
        
        var cutoffStr = "--:--";
        if (timeToCutoff != null) {
        	cutoffStr = formatTimeHM(timeToCutoff);
        	// compute pace required but only if +ve distance and time to go
        	if ((nextCpRemain != null) && (nextCpRemain > 0.1) && (timeToCutoff > 0.0)) {
        		cutoffStr = cutoffStr + " (" + formatTimeMS(timeToCutoff / nextCpRemain) + "/mi)";
        	}
        }
        dc.drawText( mCutoffX, mCutoffY, labelFont, cutoffStr, Gfx.TEXT_JUSTIFY_CENTER );
        
		var distanceStr = "--.-";
        if (nextCpRemain != null) {
        	distanceStr = nextCpRemain.format("%.1f");
        }
        dc.drawText( mLabelX, mDistanceY, distanceFont, distanceStr, Gfx.TEXT_JUSTIFY_CENTER );
            	
    }
    
    function formatTimeHM(millis) {
        var minutes = Math.floor(millis / 1000 / 60);
      	var hours = Math.floor(minutes / 60);
       	minutes = minutes - (hours * 60);
        	 
       	return hours.format("%d") + ":" + minutes.format("%02d");	
    }
    
    function formatTimeMS(millis) {
        var seconds = Math.floor(millis / 1000);
      	var minutes = Math.floor(seconds / 60);
       	seconds = seconds - (minutes * 60);
        	 
       	return minutes.format("%d") + ":" + seconds.format("%02d");	
    }    

}