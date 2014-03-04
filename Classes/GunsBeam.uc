//=============================================================================
// GunsBeam.
//
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
//=============================================================================
class GunsBeam extends PBolt;

var GunsGun Gun;
var float AnimTime;

function PostBeginPlay()
{
	Super.PostBeginPlay();
	SpriteAnim[0] = Texture'Botpack.sbolt0';
	SpriteAnim[1] = Texture'Botpack.sbolt1';
	SpriteAnim[2] = Texture'Botpack.sbolt2';
	SpriteAnim[3] = Texture'Botpack.sbolt3';
	SpriteAnim[4] = Texture'Botpack.sbolt4';
}

function Tick( float DeltaTime )
{
	local Vector X,Y,Z,FLoc;
	AnimTime += DeltaTime;
	if ( AnimTime > 0.05 )
	{
		AnimTime -= 0.05;
		SpriteFrame++;
		if ( SpriteFrame == ArrayCount(SpriteAnim) )
			SpriteFrame = 0;
		Skin = SpriteAnim[SpriteFrame];
	}
	if ( Gun == None )
	{
		Destroy();
		return;
	}
	GetAxes(Gun.Rotation,X,Y,Z);
	FLoc = Gun.Location+Gun.FireOffset.X*X+Gun.FireOffset.Y*Y
		+Gun.FireOffset.Z*Z;
	SetLocation(FLoc);
	SetRotation(Gun.Rotation);
	CheckBeam(X,DeltaTime);
}

defaultproperties
{
	RemoteRole=ROLE_SimulatedProxy
	LightType=LT_Steady
	LightEffect=LE_NonIncidence
	LightBrightness=255
	LightHue=83
	LightSaturation=50
	LightRadius=5
}
