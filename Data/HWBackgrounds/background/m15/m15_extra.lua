usesharp = 1.0 -- load a 2nd sharper environment map?

draw_pre = 1.0
draw_sphere = 0.0
draw_stars = 1.0
draw_post = 1.0
clear_depth = 1.0

sun = 
{
    position = { 12.6348, 16.0675, 97.8887 },
    rayBoost = 1.01,    -- AFTER the god rays math has been done and bound to 'brighter than base pixel' - we mult the difference by this, and add.
    rayDensity = 0.45,    -- The 'distance' towards the center, as a percentage, that a ray will go from it's original spot on screen.  This effectively controls the max length of rays - lower numbers are less GPU intensive for many reasons.
    rayExposure = 0.635,    -- Per ray we have to average all of the pixels we touch, this scales the final value - affecting where god rays tend to over-brighten the background.
    rayFalloff = 0.25,    -- The weight from start to finish of a ray's samples.  Hard to explain.
    rayArcRange = { 12.0, 24.0, 64.0, 0.25 },    -- The 'arc' size of the area that spawns rays - Inner, Outer (min), Outer (max), Bias.  This 'cone' animates...
    rayArcMotion = { 0.04, 0.17 },    -- Speed of the 2 octaves of noise that control the radial cone animation.
    rayArcCurve = { 5.0, 0.75 },    -- The falloff curve of the arc at outer min/max.
}

ship_gamma =
{
	gammaCurves = { 0.68625, 0.68625, 0.68625 }, -- ship gamma
	gammaScale = 1.19 -- bloom headroom
}

bloom =
{
	lumiMin = { 0.299, 0.587, 0.114 },	-- RGB to Lumi
	lumiMax = { 0.299, 0.587, 0.114 },
	inMin = { 0.68, 1.3, 1.6 }, -- Thresh, Boost, Curve
	inMax = { 0.68, 1.3, 1.6 },
	outMin = { 0.8, 0.75, 0.3 }, -- Mask, Curve, Scale
	outMax = { 0.8, 0.75, 0.3 },
	
	nodes = {
		{
			direction = { 12.6348, 16.0675, 97.8887  },
			faceIn = 1.01,
			faceOut = -1.01,
			bloomIn = 1.0,
			bloomOut = 1.0
		}
	}
}

env =
{

refl_scale=0.95483

}