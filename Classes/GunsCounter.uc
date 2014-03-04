//=============================================================================
// GunsCounter.
//
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
//=============================================================================
class GunsCounter extends HUDMutator;

var GunsMutator Mute;

function PostRender( Canvas Canvas )
{
	if ( PlayerOwner == None )
	{
		Destroy();
		if ( NextRHUDMutator != None )
			NextRHUDMutator.PostRender(Canvas);
		return;
	}

	if ( Mute == None )
		return;
	Canvas.Font = Font'Engine.SmallFont';
	Canvas.DrawColor.R = 255;
	Canvas.DrawColor.G = 255;
	Canvas.DrawColor.B = 255;
	Canvas.SetPos(0.1*Canvas.ClipX,0.8*Canvas.ClipY-24);
	Canvas.DrawText("GUNS CURRENT:");
	if ( Mute.GunCount < 1 )
	{
		Canvas.DrawColor.R = 0;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 0;
	}
	else if ( Mute.GunCount < 10 )
	{
		Canvas.DrawColor.R = 128;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 0;
	}
	else if ( Mute.GunCount < 100 )
	{
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 0;
	}
	else if ( Mute.GunCount < 1000 )
	{
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 128;
		Canvas.DrawColor.B = 0;
	}
	else
	{
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 0;
		Canvas.DrawColor.B = 0;
	}
	Canvas.SetPos(0.1*Canvas.ClipX+8,0.8*Canvas.ClipY-16);
	Canvas.DrawText(Mute.GunCount);
	Canvas.DrawColor.R = 255;
	Canvas.DrawColor.G = 255;
	Canvas.DrawColor.B = 255;
	Canvas.SetPos(0.1*Canvas.ClipX,0.8*Canvas.ClipY-8);
	Canvas.DrawText("GUNS PEAK:");
	if ( Mute.GunMax < 1 )
	{
		Canvas.DrawColor.R = 0;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 0;
	}
	else if ( Mute.GunMax < 10 )
	{
		Canvas.DrawColor.R = 128;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 0;
	}
	else if ( Mute.GunMax < 100 )
	{
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 255;
		Canvas.DrawColor.B = 0;
	}
	else if ( Mute.GunMax < 1000 )
	{
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 128;
		Canvas.DrawColor.B = 0;
	}
	else
	{
		Canvas.DrawColor.R = 255;
		Canvas.DrawColor.G = 0;
		Canvas.DrawColor.B = 0;
	}
	Canvas.SetPos(0.1*Canvas.ClipX+8,0.8*Canvas.ClipY);
	Canvas.DrawText(Mute.GunMax);
	if ( NextRHUDMutator != None )
		NextRHUDMutator.PostRender(Canvas);
}
