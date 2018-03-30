usesharp = 1.0 -- load a 2nd sharper environment map?

draw_pre = 1.0
draw_sphere = 0.0
draw_stars = 1.0
draw_post = 1.0
clear_depth = 1.0

sun = 
{
    position = { 78.4723, 6.35322, -72.6029 },
		follow = "Flare_Key",
    rayBoost = 1.21,    -- AFTER the god rays math has been done and bound to 'brighter than base pixel' - we mult the difference by this, and add.
    rayDensity = 0.51,    -- The 'distance' towards the center, as a percentage, that a ray will go from it's original spot on screen.  This effectively controls the max length of rays - lower numbers are less GPU intensive for many reasons.
    rayExposure = 0.735,    -- Per ray we have to average all of the pixels we touch, this scales the final value - affecting where god rays tend to over-brighten the background.
    rayFalloff = 0.25,    -- The weight from start to finish of a ray's samples.  Hard to explain.
    rayArcRange = { 12.0, 24.0, 64.0, 0.25 },    -- The 'arc' size of the area that spawns rays - Inner, Outer (min), Outer (max), Bias.  This 'cone' animates...
    rayArcMotion = { 0.04, 0.17 },    -- Speed of the 2 octaves of noise that control the radial cone animation.
    rayArcCurve = { 5.0, 0.75 },    -- The falloff curve of the arc at outer min/max.

}

ship_gamma =
{
	gammaCurves = { 0.647, 0.647, 0.647 }, -- ship gamma
	gammaScale = 1.02 -- bloom headroom
}

bloom =
{
	lumiMin = { 0.299, 0.587, 0.114 },	-- RGB to Lumi
	lumiMax = { 0.299, 0.587, 0.114 },
	inMin = { 0.7, 1.1, 1.2 }, -- Thresh, Boost, Curve
	inMax = { 0.7, 1.1, 1.4 },
	outMin = { 0.8, 0.95, 0.643 }, -- Mask, Curve, Scale
	outMax = { 0.8, 0.95, 0.643 },
	
	nodes = {
		{
			direction = { 57.2291, 43.5857, -69.4631 },
			faceIn = 1.01,
			faceOut = -1.01,
			bloomIn = 1.0,
			bloomOut = 1.0
		}
	}
}



anims = {
	{
		Anim_Name = "PlanetSpin",
		Anim_Loops = -1,
		Anim_Rate = 0.0003;
	},
}

post_offset =
{
    global_scale = { 0, 0, 0 },
    delta_scale = { -0.000005, -0.000005, -0.000005 },
    delta_radius = 3,
    delta_curve = 1,
}

env =
{

refl_scale=0.95483

}