//=============================================================================
// GunsGun.
//
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
//=============================================================================
class GunsGun extends Actor config(Guns);

// Meshes (some yaw-corrected)
// GunSaw
#exec MESH IMPORT MESH=GunSaw ANIVFILE=Models\GunSaw_a.3d DATAFILE=Models\GunSaw_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunSaw X=150 Y=-10 Z=0 PITCH=0 YAW=0 ROLL=-64
#exec MESH SEQUENCE MESH=GunSaw SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunSaw X=0.07 Y=0.07 Z=0.14
// GunImp (corrected)
#exec MESH IMPORT MESH=GunImp ANIVFILE=Models\GunImp_a.3d DATAFILE=Models\GunImp_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunImp X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=-64
#exec MESH SEQUENCE MESH=GunImp SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunImp X=0.1 Y=0.1 Z=0.2
// GunGun
#exec MESH IMPORT MESH=GunGun ANIVFILE=Models\GunGun_a.3d DATAFILE=Models\GunGun_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunGun X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunGun SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunGun X=0.05 Y=0.05 Z=0.1
// GunBio
#exec MESH IMPORT MESH=GunBio ANIVFILE=Models\GunBio_a.3d DATAFILE=Models\GunBio_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunBio X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunBio SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunBio X=0.05 Y=0.05 Z=0.1
// GunShock
#exec MESH IMPORT MESH=GunShock ANIVFILE=Models\GunShock_a.3d DATAFILE=Models\GunShock_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunShock X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunShock SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunShock X=0.07 Y=0.07 Z=0.14
// GunPulse (corrected)
#exec MESH IMPORT MESH=GunPulse ANIVFILE=Models\GunPulse_a.3d DATAFILE=Models\GunPulse_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunPulse X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunPulse SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunPulse X=0.08 Y=0.08 Z=0.16
// GunRip (corrected)
#exec MESH IMPORT MESH=GunRip ANIVFILE=Models\GunRip_a.3d DATAFILE=Models\GunRip_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunRip X=0 Y=0 Z=0 PITCH=0 YAW=0 ROLL=0
#exec MESH SEQUENCE MESH=GunRip SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunRip X=0.1 Y=0.1 Z=0.2
// GunMini
#exec MESH IMPORT MESH=GunMini ANIVFILE=Models\GunMini_a.3d DATAFILE=Models\GunMini_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunMini X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunMini SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunMini X=0.1 Y=0.1 Z=0.2
// GunFlak (corrected)
#exec MESH IMPORT MESH=GunFlak ANIVFILE=Models\GunFlak_a.3d DATAFILE=Models\GunFlak_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunFlak X=0 Y=-540 Z=0 PITCH=0 YAW=-64 ROLL=0
#exec MESH SEQUENCE MESH=GunFlak SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunFlak X=0.07 Y=0.07 Z=0.14
// GunRocket (corrected)
#exec MESH IMPORT MESH=GunRocket ANIVFILE=Models\GunRocket_a.3d DATAFILE=Models\GunRocket_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunRocket X=0 Y=170 Z=0 PITCH=0 YAW=-64 ROLL=0
#exec MESH SEQUENCE MESH=GunRocket SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunRocket X=0.12 Y=0.12 Z=0.24
// GunRifle
#exec MESH IMPORT MESH=GunRifle ANIVFILE=Models\GunRifle_a.3d DATAFILE=Models\GunRifle_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunRifle X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunRifle SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunRifle X=0.1 Y=0.1 Z=0.2
// GunDeemer
#exec MESH IMPORT MESH=GunDeemer ANIVFILE=Models\GunDeemer_a.3d DATAFILE=Models\GunDeemer_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunDeemer X=150 Y=-10 Z=0 PITCH=0 YAW=0 ROLL=-64
#exec MESH SEQUENCE MESH=GunDeemer SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunDeemer X=0.1 Y=0.1 Z=0.2
// GunSShock
#exec MESH IMPORT MESH=GunSShock ANIVFILE=Models\GunSShock_a.3d DATAFILE=Models\GunSShock_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=GunSShock X=0 Y=0 Z=0 PITCH=0 YAW=64 ROLL=0
#exec MESH SEQUENCE MESH=GunSShock SEQ=All STARTFRAME=0 NUMFRAMES=1
#exec MESHMAP SCALE MESHMAP=GunSShock X=0.07 Y=0.07 Z=0.14

// Sounds
#exec AUDIO IMPORT NAME=GunHit1 FILE=Sounds\GunHit1.wav
#exec AUDIO IMPORT NAME=GunHit2 FILE=Sounds\GunHit2.wav
#exec AUDIO IMPORT NAME=GunHit3 FILE=Sounds\GunHit3.wav

// CVars
var() config float GunBounce,GunLife,GunDelayMin,GunDelayMax,PreChance,
	PreDelayMin,PreDelayMax,FlyLife;
var() config int ShotsSaw,ShotsImpact,ShotsGun,ShotsBio,ShotsASMD,ShotsPulse,
	ShotsRip,ShotsMini,ShotsFlak,ShotsRocket,ShotsRifle,ShotsDeemer,
	ShotsGib;

var int GunType;
// 0 = Chainsaw
// 1 = Impact Hammer
// 2 = Enforcer
// 3 = Biorifle
// 4 = Shock Rifle
// 5 = Pulsegun (Altfire)
// 6 = Ripper
// 7 = Minigun
// 8 = Flak Cannon
// 9 = Rocket Launcher
// 10 = Sniper Rifle
// 11 = Redeemer (seriously)
// 12 = Enhanced Shock Rifle

var() Sound HitSound[3];
var Actor e;
var GunsMutator Mute;
var Vector FireOffset;
var bool Premature,TouchEffect,Pumping,Beaming;
var GunsBeam PlasmaBeam;
var int Shots;
var float FiringSpeed;

event Destroyed()
{
	if ( PlasmaBeam != None )
		PlasmaBeam.Destroy();
	if ( Mute != None )
		Mute.GunCount--;
}

event PostBeginPlay()
{
	SetTimer(0.01,false);
	Premature = False;
	TouchEffect = False;
	Beaming = False;
	Shots = 0;
}

function SetType( int Gun )
{
	GunType = Gun;
	if ( (GunType < 0) || (GunType > 12) )
		GunType = 2;
	if ( GunType == 0 )
	{
		Mesh = LodMesh'GunSaw';
		Texture = Texture'JChainSawPick1';
		SetCollisionSize(16.0,16.0);
		Mass = 50.0;
		Buoyancy = 30.0;
		FireOffset = vect(40,3,3);
		Shots = ShotsSaw;
		FiringSpeed = 1.0;
	}
	else if ( GunType == 1 )
	{
		Mesh = LodMesh'GunImp';
		Texture = Texture'JImpPick1';
		SetCollisionSize(16.0,16.0);
		Mass = 50.0;
		Buoyancy = 45.0;
		FireOffset = vect(0,0,0);
		Shots = ShotsImpact;
		FiringSpeed = 1.0;
	}
	else if ( GunType == 2 )
	{
		Mesh = LodMesh'GunGun';
		Texture = Texture'Jautot1';
		SetCollisionSize(12.0,12.0);
		Mass = 15.0;
		Buoyancy = 10.0;
		FireOffset = vect(20,0,3);
		Shots = ShotsGun;
		FiringSpeed = 0.4;
	}
	else if ( GunType == 3 )
	{
		Mesh = LodMesh'GunBio';
		Texture = Texture'JBRifle2';
		SetCollisionSize(18.0,18.0);
		Mass = 30.0;
		Buoyancy = 20.0;
		FireOffset = vect(20,0,2);
		Shots = ShotsBio;
		FiringSpeed = 0.5;
	}
	else if ( GunType == 4 )
	{
		Mesh = LodMesh'GunShock';
		Texture = Texture'ASMD_t';
		SetCollisionSize(8.0,8.0);
		Mass = 50.0;
		Buoyancy = 30.0;
		FireOffset = vect(45,0,2);
		Shots = ShotsASMD;
		FiringSpeed = 0.7;
	}
	else if ( GunType == 5 )
	{
		Mesh = LodMesh'GunPulse';
		Texture = Texture'JPulsePickup_01';
		SetCollisionSize(20.0,20.0);
		Mass = 50.0;
		Buoyancy = 40.0;
		FireOffset = vect(32,0,4);
		Shots = ShotsPulse;
		FiringSpeed = 1.0;
	}
	else if ( GunType == 6 )
	{
		Mesh = LodMesh'GunRip';
		Texture = Texture'JRazorw';
		SetCollisionSize(8.0,8.0);
		Mass = 50.0;
		Buoyancy = 40.0;
		FireOffset = vect(5,0,8);
		Shots = ShotsRip;
		FiringSpeed = 0.8;
	}
	else if ( GunType == 7 )
	{
		Mesh = LodMesh'GunMini';
		Texture = Texture'Mini_t';
		SetCollisionSize(8.0,8.0);
		Mass = 80.0;
		Buoyancy = 30.0;
		FireOffset = vect(40,0,0);
		Shots = ShotsMini;
		FiringSpeed = 0.13;
	}
	else if ( GunType == 8 )
	{
		Mesh = LodMesh'GunFlak';
		Texture = Texture'Flak_t';
		SetCollisionSize(20.0,20.0);
		Mass = 100.0;
		Buoyancy = 60.0;
		FireOffset = vect(22,0,2);
		Shots = ShotsFlak;
		FiringSpeed = 0.7;
	}
	else if ( GunType == 9 )
	{
		Mesh = LodMesh'GunRocket';
		Texture = Texture'Eight_t';
		SetCollisionSize(10.0,10.0);
		Mass = 80.0;
		Buoyancy = 40.0;
		FireOffset = vect(25,0,8);
		Shots = ShotsRocket;
		FiringSpeed = 0.7;
	}
	else if ( GunType == 10 )
	{
		Mesh = LodMesh'GunRifle';
		Texture = Texture'JRifle2';
		SetCollisionSize(8.0,8.0);
		Mass = 70.0;
		Buoyancy = 40.0;
		FireOffset = vect(60,0,2);
		Shots = ShotsRifle;
		FiringSpeed = 0.8;
	}
	else if ( GunType == 11 )
	{
		Mesh = LodMesh'GunDeemer';
		Texture = Texture'Jwhpick1';
		SetCollisionSize(20.0,20.0);
		Mass = 100.0;
		Buoyancy = 50.0;
		FireOffset = vect(50,0,0);
		Shots = ShotsDeemer;
		FiringSpeed = 0.9;
	}
	else if ( GunType == 12 )
	{
		Mesh = LodMesh'GunSShock';
		Texture = Texture'SASMD_t';
		SetCollisionSize(8.0,8.0);
		Mass = 15.0;
		Buoyancy = 10.0;
		FireOffset = vect(45,0,2);
		Shots = ShotsGib;
		FiringSpeed = 0.7;
	}
}

event Timer()
{
	SetRotation(Rotator(Normal(Velocity)+0.4*VRand()));
	RotationRate.Pitch = FRand()*34000*(VSize(Velocity)/200);
	RotationRate.Yaw = FRand()*42000*(VSize(Velocity)/200);
	RotationRate.Roll = FRand()*56000*(VSize(Velocity)/200);
}

event Tick( float deltatime )
{
	if ( !Beaming )
		return;
	if ( PlasmaBeam == None )
		FirePulse();
}

event Touch( Actor Other )
{
	if ( Other.IsA('GunsGun') )
		return;
	if ( TouchEffect )
	{
		if ( GunType == 0 )
		{
			if ( (Location.Z-Other.Location.Z)
				> (Other.CollisionHeight*0.6) )
				Other.TakeDamage(110,Instigator,Location,
				vect(0,0,0),'Decapitated');
			else
				Other.TakeDamage(20,Instigator,Location,
				vect(0,0,0),'slashed');
		}
		else if ( GunType == 1 )
		{
			FireImpact();
			TouchEffect = False;
		}
	}
	SetPhysics(PHYS_Falling);
	Velocity += Other.Velocity*0.4;
	RotationRate.Pitch = FRand()*34000*(VSize(Velocity)/200);
	RotationRate.Yaw = FRand()*42000*(VSize(Velocity)/200);
	RotationRate.Roll = FRand()*56000*(VSize(Velocity)/200);
	if ( (Other == Owner) || (VSize(Velocity)<400) )
		return;
	PlaySound(HitSound[Rand(3)],SLOT_Interact,0.5);
	Other.TakeDamage((Mass*VSize(Velocity))/100,Instigator,Location,
		Velocity*Mass,'Crushed');
}

event Landed( Vector HitNormal )
{
	HitWall(HitNormal,Level);
}

event HitWall( Vector HitNormal, Actor Wall )
{
	local Vector RealHitNormal,X,Y,Z;
	local Rotator AlignRot;
	RealHitNormal = HitNormal;
	HitNormal = Normal(HitNormal+0.4*VRand());
	if ( (HitNormal dot RealHitNormal) < 0 )
		HitNormal *= -0.5;
	Velocity = GunBounce*(Velocity-2*HitNormal*(Velocity dot HitNormal));
	if ( Wall != None )
		Velocity += Wall.Velocity*0.5;
	RotationRate.Pitch = FRand()*34000*(VSize(Velocity)/200);
	RotationRate.Yaw = FRand()*42000*(VSize(Velocity)/200);
	RotationRate.Roll = FRand()*56000*(VSize(Velocity)/200);
	PlaySound(HitSound[Rand(3)],SLOT_Interact,0.5);
	if ( VSize(Velocity) > 40 )
		return;
	if ( HitNormal.Z < 0.6 )
	{
		Velocity += HitNormal*45;
		return;
	}
	Velocity *= 0;
	RotationRate *= 0;
	AlignRot = Rotation;
	AlignRot.Pitch = 0;
	AlignRot.Roll = 0;
	GetAxes(AlignRot,X,Y,Z);
	X = Y cross RealHitNormal;
	SetRotation(Rotator(X));
	SetPhysics(PHYS_None);
	// No redundant state changes
	if ( !IsInState('Ignite') )
		GotoState('Ignite');
}

event ZoneChange( ZoneInfo NewZone )
{
	local float SplashSize;
	local Actor Splash;
	if ( NewZone.bWaterZone&&!Region.Zone.bWaterZone&&(Velocity.Z<-200) )
	{
		SplashSize = FClamp(0.0001*Mass*(250-0.5*FMax(-600,
			Velocity.Z)),1.0,3.0);
		if ( NewZone.EntrySound != None )
			PlaySound(NewZone.EntrySound,SLOT_Interact,SplashSize);
		if ( NewZone.EntryActor != None )
		{
			Splash = Spawn(NewZone.EntryActor);
			if ( Splash != None )
			{
				Splash.DrawScale = SplashSize;
				Splash.RemoteRole = ROLE_None;
			}
		}
	}
}

event TakeDamage( int Damage, Pawn InstigatedBy, Vector HitLocation,
	Vector Momentum, Name DamageType )
{
	SetPhysics(PHYS_Falling);
	Velocity += Momentum/Mass;
	RotationRate.Pitch = FRand()*34000*(VSize(Velocity)/200);
	RotationRate.Yaw = FRand()*42000*(VSize(Velocity)/200);
	RotationRate.Roll = FRand()*56000*(VSize(Velocity)/200);
	PlaySound(HitSound[Rand(3)],SLOT_Interact,0.5);
}

function DoCocking()
{
	if ( (GunType < 0) || (GunType > 12) )
		GunType = 1;
	if ( GunType == 0 )
		PlaySound(Sound'ChainPickup',SLOT_Interact,1.0);
	else if ( GunType == 1 )
		PlaySound(Sound'ImpactPickup',SLOT_Interact,1.0);
	else if ( GunType == 2 )
		PlaySound(Sound'Cocking',SLOT_Interact,1.0);
	else if ( GunType == 3 )
		PlaySound(Sound'GelSelect',SLOT_Interact,1.0);
	else if ( GunType == 4 )
		PlaySound(Sound'TazerSelect',SLOT_Interact,1.0);
	else if ( GunType == 5 )
		PlaySound(Sound'PulsePickup',SLOT_Interact,1.0);
	else if ( GunType == 6 )
		PlaySound(Sound'beam',SLOT_Interact,1.0);
	else if ( GunType == 7 )
		PlaySound(Sound'MiniSelect',SLOT_Interact,1.0);
	else if ( GunType == 8 )
		PlaySound(Sound'Hidraul2',SLOT_Interact,1.0);
	else if ( GunType == 9 )
		PlaySound(Sound'Selecting',SLOT_Interact,1.0);
	else if ( GunType == 10 )
		PlaySound(Sound'RiflePickup',SLOT_Interact,1.0);
	else if ( GunType == 11 )
		PlaySound(Sound'WarheadPickup',SLOT_Interact,1.0);
	else if ( GunType == 12 )
		PlaySound(Sound'TazerSelect',SLOT_Interact,1.0);
}

function DoFire()
{
	if ( (GunType < 0) || (GunType > 12) )
		GunType = 2;
	if ( GunType == 0 )
		FireSaw();
	else if ( GunType == 1 )
		FireImpact();
	else if ( GunType == 2 )
		FireEnforcer();
	else if ( GunType == 3 )
		FireBio();
	else if ( GunType == 4 )
		FireASMD();
	else if ( GunType == 5 )
		FirePulse();
	else if ( GunType == 6 )
		FireRip();
	else if ( GunType == 7 )
		FireMini();
	else if ( GunType == 8 )
		FireFlak();
	else if ( GunType == 9 )
		FireRocket();
	else if ( GunType == 10 )
		FireSniper();
	else if ( GunType == 11 )
		FireRedeemer();
	else if ( GunType == 12 )
		FireEnhanced();
}

function FireSaw()
{
	// DUMMY
}

function FireImpact()
{
	local Actor GotHit;
	local Vector HitLocation, HitNormal, X,Y,Z, FLoc;
	PlaySound(Sound'ImpactAltFireRelease',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	GotHit = Trace(HitLocation,HitNormal,FLoc+(Vector(Rotation)
		+VRand()*0.08)*200,FLoc,true);
	if ( GotHit == None )
		return;
	GotHit.TakeDamage(100,Instigator,HitLocation,80000*X,'impact');
	if ( GotHit == Level || GotHit.IsA('Mover') )
		Spawn(Class'ImpactMark',,,HitLocation+HitNormal,
			Rotator(HitNormal));
	if ( !GotHit.bIsPawn && !GotHit.IsA('Carcass') )
		Spawn(Class'UT_SpriteSmokePuff',,,HitLocation+HitNormal*9);
}

function FireEnforcer()
{
	local Actor GotHit;
	local Vector HitLocation, HitNormal, X,Y,Z, FLoc;
	local UT_ShellCase s;
	PlaySound(Sound'E_Shot',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	s = Spawn(Class'UT_ShellCase',,,Location+20*X);
	if ( s != None )
		s.Eject(((FRand()*0.3+0.4)*X+(FRand()*0.2+0.2)*Y+(FRand()*0.3
			+1.0)*Z)*160);
	GotHit = Trace(HitLocation,HitNormal,FLoc+(Vector(Rotation)
		+VRand()*0.08)*10000,FLoc,true);
	if ( GotHit == None )
		return;
	GotHit.TakeDamage(17,Instigator,HitLocation,X*4000,'shot');
	if ( GotHit == Level )
		Spawn(Class'UT_WallHit',,,HitLocation+HitNormal,
			Rotator(HitNormal));
	if ( GotHit.bIsPawn || GotHit.IsA('Carcass') )
		GotHit.PlaySound(Sound'ChunkHit',,4.0,,100);
	else
		Spawn(Class'UT_SpriteSmokePuff',,,HitLocation+HitNormal*9);
}

function FireBio()
{
	local Vector X,Y,Z, FLoc;
	PlaySound(Sound'GelShot',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	Spawn(Class'UT_BioGel',,,FLoc,Rotator(X+VRand()*0.08));
}

function FireASMD()
{
	local Actor GotHit;
	local Vector HitLocation, HitNormal, X,Y,Z, FLoc;
	local ShockBeam Smoke;
	local Vector DVector;
	local int NumPoints;
	local Rotator SmokeRotation;
	PlaySound(Sound'TazerFire',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	GotHit = Trace(HitLocation,HitNormal,FLoc+(Vector(Rotation)+VRand()
		*0.08)*10000,FLoc,true);
	if ( GotHit == None )
	{
		HitNormal = -X;
		HitLocation = FLoc+X*10000;
	}
	DVector = HitLocation-FLoc;
	NumPoints = VSize(DVector)/135;
	if ( NumPoints > 0 )
	{
		SmokeRotation = Rotator(DVector);
		SmokeRotation.roll = Rand(65536);
		Smoke = Spawn(Class'ShockBeam',,,FLoc,SmokeRotation);
		if ( Smoke != None )
		{
			Smoke.MoveAmount = DVector/NumPoints;
			Smoke.NumPuffs = NumPoints-1;
		}
	}
	if ( (GotHit != None) && GotHit.IsA('ShockProj') )
	{
		ShockProj(GotHit).SuperExplosion();
		return;
	}
	Spawn(Class'UT_RingExplosion5',,,HitLocation+HitNormal*8,
		Rotator(HitNormal));
	GotHit.TakeDamage(40,Instigator,HitLocation,X*60000,'jolted');
}

function FirePulse()
{
	local Vector X,Y,Z, FLoc;
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	PlasmaBeam = Spawn(Class'GunsBeam',,,FLoc,Rotation);
	if ( PlasmaBeam != None )
		PlasmaBeam.Gun = Self;
}

function FireRip()
{
	local Vector X,Y,Z, FLoc;
	PlaySound(Sound'StartBlade',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	Spawn(Class'Razor2',,,FLoc,Rotator(X+VRand()*0.08));
}

function FireMini()
{
	local Actor GotHit;
	local Vector HitLocation, HitNormal, X,Y,Z, FLoc;
	local UT_ShellCase s;
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	s = Spawn(Class'MiniShellCase',,,Location+30*X+5*Y-Z*5);
	if ( s != None )
		s.Eject(((FRand()*0.3+0.4)*X+(FRand()*0.3+0.2)*Y+(FRand()*0.3
			+1.0)*Z)*160);
	if ( Rand(4) == 0 )
		Spawn(Class'MTracer',,,FLoc,Rotator(X+VRand()*0.2));
	GotHit = Trace(HitLocation,HitNormal,FLoc+(Vector(Rotation)
		+VRand()*0.2)*10000,FLoc,true);
	if ( GotHit == None )
		return;
	GotHit.TakeDamage(9+Rand(6),Instigator,HitLocation,X*5000,'shot');
	if ( GotHit == Level )
		Spawn(Class'UT_LightWallHitEffect',,,HitLocation+HitNormal,
			Rotator(HitNormal));
	if ( GotHit.bIsPawn || GotHit.IsA('Carcass') )
		GotHit.PlaySound(Sound'ChunkHit',,4.0,,100);
	else
		Spawn(Class'UT_SpriteSmokePuff',,,HitLocation+HitNormal*9);
}

function FireFlak()
{
	local Vector X,Y,Z, FLoc;
	PlaySound(Sound'shot1',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	Spawn(Class'UTChunk1',,,FLoc,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk2',,,FLoc-Z,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk3',,,FLoc+2*Y+Z,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk4',,,FLoc-Y,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk1',,,FLoc+2*Y-Z,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk2',,,FLoc,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk3',,,FLoc+y-Z,Rotator(X+VRand()*0.08));
	Spawn(Class'UTChunk4',,,FLoc+2*Y+Z,Rotator(X+VRand()*0.08));
}

function FireRocket()
{
	local Vector X,Y,Z, FLoc;
	PlaySound(Sound'Ignite',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	Spawn(Class'RocketMk2',,,FLoc,Rotator(X+VRand()*0.08));
}

function FireSniper()
{
	local Actor GotHit;
	local Vector HitLocation, HitNormal, X,Y,Z, FLoc;
	local UT_ShellCase s;
	PlaySound(Sound'SniperFire',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	s = Spawn(Class'UT_ShellCase',,,Location+30*X);
	if ( s != None )
	{
		s.DrawScale = 2.0;
		s.Eject(((FRand()*0.3+0.4)*X+(FRand()*0.2+0.2)*Y+(FRand()*0.3
			+1.0)*Z)*160);
	}
	GotHit = Trace(HitLocation,HitNormal,FLoc+(Vector(Rotation)
		+VRand()*0.08)*10000,FLoc,true);
	if ( GotHit == None )
		return;
	if ( (HitLocation.Z-GotHit.Location.Z) > (0.6*GotHit.CollisionHeight) )
		GotHit.TakeDamage(100,Instigator,HitLocation,X*35000,
			'Decapitated');
	else
		GotHit.TakeDamage(45,Instigator,HitLocation,X*30000,'shot');
	if ( GotHit == Level )
		Spawn(Class'UT_HeavyWallHitEffect',,,HitLocation+HitNormal,
			Rotator(HitNormal));
	if ( GotHit.bIsPawn || GotHit.IsA('Carcass') )
		GotHit.PlaySound(Sound'ChunkHit',,4.0,,100);
	else
		Spawn(Class'UT_SpriteSmokePuff',,,HitLocation+HitNormal*9);
}

function FireRedeemer()
{
	local Vector X,Y,Z, FLoc;
	PlaySound(Sound'WarheadShot',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	Spawn(Class'WarShell',,,FLoc,Rotator(X+VRand()*0.08));
}

function FireEnhanced()
{
	local Actor GotHit;
	local Vector HitLocation, HitNormal, X,Y,Z, FLoc;
	local SuperShockBeam Smoke;
	local Vector DVector;
	local int NumPoints;
	local Rotator SmokeRotation;
	PlaySound(Sound'TazerFire',SLOT_Interact,2.0);
	GetAxes(Rotation,X,Y,Z);
	FLoc = Location+FireOffset.X*X+FireOffset.Y*Y+FireOffset.Z*Z;
	GotHit = Trace(HitLocation,HitNormal,FLoc+(Vector(Rotation)+VRand()
		*0.08)*10000,FLoc,true);
	if ( GotHit == None )
	{
		HitNormal = -X;
		HitLocation = FLoc+X*10000;
	}
	DVector = HitLocation-FLoc;
	NumPoints = VSize(DVector)/135;
	if ( NumPoints > 0 )
	{
		SmokeRotation = Rotator(DVector);
		SmokeRotation.roll = Rand(65536);
		Smoke = Spawn(Class'SuperShockBeam',,,FLoc,SmokeRotation);
		if ( Smoke != None )
		{
			Smoke.MoveAmount = DVector/NumPoints;
			Smoke.NumPuffs = NumPoints-1;
		}
	}
	if ( (GotHit != None) && GotHit.IsA('ShockProj') )
	{
		ShockProj(GotHit).SuperExplosion();
		return;
	}
	Spawn(Class'UT_SuperRing2',,,HitLocation+HitNormal*8,
		Rotator(HitNormal));
	GotHit.TakeDamage(1000,Instigator,HitLocation,X*60000,'jolted');
}

Auto State Flying
{

Sawchain:
	SoundVolume = 255;
	AmbientSound = Sound'SawHit';
	TouchEffect = True;
	while( Shots-- > 0 )
		Sleep(FiringSpeed);
	Goto('Sleeper');
Pump:
	SoundVolume = 255;
	AmbientSound = Sound'ImpactLoop';
	Pumping = True;
	TouchEffect = True;
	while( Shots-- > 0 )
		Sleep(FiringSpeed);
	Goto('Sleeper');
Beam:
	SoundVolume = 255;
	AmbientSound = Sound'PulseBolt';
	Beaming = True;
	FirePulse();
	while( Shots-- > 0 )
		Sleep(FiringSpeed);
	Goto('Sleeper');
Dakka:
	SoundVolume = 255;
	AmbientSound = Sound'M2RegFire';
	while( Shots-- > 0 )
	{
		Sleep(FiringSpeed);
		FireMini();
	}
	Goto('Sleeper');
Begin:
	Sleep(RandRange(PreDelayMin,PreDelayMax));
	if ( FRand() < PreChance )
	{
		DoCocking();
		Premature = True;
		if ( GunType == 0 )
			Goto('Sawchain');
		if ( GunType == 1 )
			Goto('Pump');
		if ( GunType == 5 )
			Goto('Beam');
		if ( GunType == 7 )
			Goto('Dakka');
		Sleep(RandRange(GunDelayMin,GunDelayMax));
		while ( Shots-- > 0 )
		{
			DoFire();
			Sleep(FiringSpeed);
		}
	}
	Goto('Sleeper');
Sleeper:
	Beaming = False;
	if ( PlasmaBeam != None )
		PlasmaBeam.Destroy();
	SoundVolume = 0;
	AmbientSound = None;
	TouchEffect = False;
	Sleep(FlyLife);
	while ( DrawScale > 0.0 )
	{
		DrawScale -= 0.1;
		Sleep(0.1);
	}
	Destroy();
}

State Ignite
{

Die:
	Beaming = False;
	if ( PlasmaBeam != None )
		PlasmaBeam.Destroy();
	SoundVolume = 0;
	AmbientSound = None;
	TouchEffect = False;
	Sleep(GunLife);
	while ( DrawScale > 0.0 )
	{
		DrawScale -= 0.1;
		Sleep(0.1);
	}
	Destroy();
Sawchain:
	SoundVolume = 255;
	AmbientSound = Sound'SawHit';
	TouchEffect = True;
	while ( Shots-- > 0 )
		Sleep(FiringSpeed);
	Goto('Die');
Pump:
	SoundVolume = 255;
	AmbientSound = Sound'ImpactLoop';
	Pumping = True;
	TouchEffect = True;
	while ( Shots-- > 0 )
		Sleep(FiringSpeed);
	Goto('Die');
Beam:
	SoundVolume = 255;
	AmbientSound = Sound'PulseBolt';
	Beaming=True;
	FirePulse();
	while ( Shots-- > 0 )
		Sleep(FiringSpeed);
	Goto('Die');
Dakka:
	SoundVolume = 255;
	AmbientSound = Sound'M2RegFire';
	while ( Shots-- > 0 )
	{
		Sleep(FiringSpeed);
		FireMini();
	}
	Goto('Die');
Begin:
	DoCocking();
	if ( Premature )
		Goto('Die');
	if ( GunType == 0 )
		Goto('Sawchain');
	if ( GunType == 1 )
		Goto('Pump');
	if ( GunType == 5 )
		Goto('Beam');
	if ( GunType == 7 )
		Goto('Dakka');
	Sleep(RandRange(GunDelayMin,GunDelayMax));
	while ( Shots-- > 0 )
	{
		DoFire();
		Sleep(FiringSpeed);
	}
	Goto('Die');
}

defaultproperties
{
	bCollideActors=True
	bCollideWorld=True
	Physics=PHYS_Falling
	bHidden=False
	DrawScale=1.0
	DrawType=DT_Mesh
	CollisionRadius=0.0
	CollisionHeight=0.0
	Mass=100.0
	Buoyancy=99.0
	bUnlit=False
	bProjTarget=True
	bBounce=True
	bFixedRotationDir=True
	bGameRelevant=True
	GunBounce=0.45
	GunLife=5.0
	FlyLife=30.0
	GunDelayMin=0.5
	GunDelayMax=2.0
	PreChance=0.0
	PreDelayMin=1.0
	PreDelayMax=10.0
	ShotsSaw=20
	ShotsImpact=20
	ShotsGun=10
	ShotsBio=5
	ShotsASMD=4
	ShotsPulse=20
	ShotsRip=3
	ShotsMini=60
	ShotsFlak=2
	ShotsRocket=3
	ShotsRifle=4
	ShotsDeemer=1
	ShotsGib=3
	LODBias=16.0
	HitSound(0)=Sound'Guns.GunHit1'
	HitSound(1)=Sound'Guns.GunHit2'
	HitSound(2)=Sound'Guns.GunHit3'
}
