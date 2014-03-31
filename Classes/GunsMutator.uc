//=============================================================================
// GunsMutator.
//
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns   
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
// GunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGunsGuns
//=============================================================================
class GunsMutator extends Mutator config(Guns);

// CVars
var() config int HealthDivisor,DamageMin,DamageMax,KillAmount,GibAmount,
	GunLimit;
var() config float HitMomentumFactor,HitDeviation,HitRandomMin,HitRandomMax,
	DeathVelocityFactor,DeathDeviation,DeathRandomXMin,DeathRandomXMax,
	DeathRandomZMin,DeathRandomZMax;
var() config bool InstigatorVictim;
var() config int GunType;
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
// 13 = Random excl. Redeemer and Enhanced Shock Rifle
// 14 = Random all

var bool bInitialized;
var int GunCount,GunMax;

// Start geimu
function PostBeginPlay()
{
	if ( bInitialized )
		return;
	Level.Game.RegisterDamageMutator(self);
	bInitialized = true;
	GunCount = 0;
	GunMax = 0;
}

// Add counter
function HUDAdd( Pawn Other )
{
	local HUDMutator m;
	local PlayerPawn p;
	if ( !Other.IsA('PlayerPawn') )
		return;
	p = PlayerPawn(Other);
	if ( p.myHUD == None )
		return;
	m = HUDMutator(p.myHUD.HUDMutator);
	while ( m != None )
	{
		if ( m.IsA('GunsCounter') );
			return;
		m = m.NextRHUDMutator;
	}
	m = Spawn(Class'GunsCounter');
	m.RegisterAHUDMutator();
	GunsCounter(m).Mute = Self;
}

// Players
function ModifyPlayer( Pawn Other )
{
	HUDAdd(Other);
	if ( NextMutator != None )
		NextMutator.ModifyPlayer(Other);
}

// Spectators
function bool CheckReplacement( Actor Other, out byte bSuperRelevant )
{
	if ( Other.IsA('Spectator') )
		HUDAdd(Pawn(Other));
	bSuperRelevant = 0;
	return true;
}

// Bleed guns
function MutatorTakeDamage( out int ActualDamage, Pawn Victim,
	Pawn InstigatedBy, out Vector HitLocation, out Vector Momentum,
	Name DamageType )
{
	local GunsGun gun;
	local int i,m;
	// Checking for actual damage prevents freezes with 0% friendly fire
	if ( (Victim != None) && (ActualDamage > 0) )
	{
		i = 0;
		m = Clamp(ActualDamage/HealthDivisor,DamageMin,DamageMax);
		for ( i=0; i<m; i++ )
		{
			if ( GunCount >= GunLimit )
				break;
			gun = Spawn(class'GunsGun',Victim,,HitLocation);
			if ( gun == None )
				continue;
			GunCount++;
			if ( GunType == 14 )
				gun.SetType(Rand(13));
			else if ( GunType == 13 )
				gun.SetType(Rand(11));
			else
				gun.SetType(GunType);
			gun.Mute = Self;
			if ( InstigatorVictim )
				gun.Instigator = Victim;
			else
				gun.Instigator = InstigatedBy;
			gun.Velocity += Momentum*HitMomentumFactor
				+((Normal(Momentum)+VRand()*HitDeviation)
				*RandRange(HitRandomMin,HitRandomMax));
		}
	}
	if ( GunCount > GunMax )
		GunMax = GunCount;
	if ( NextDamageMutator != None )
		NextDamageMutator.MutatorTakeDamage(ActualDamage,Victim,
			InstigatedBy,HitLocation,Momentum,DamageType);
}

// Burst into guns
function ScoreKill( Pawn Killer, Pawn Other )
{
	local GunsGun gun;
	local int i,m;
	local Vector X,Y,Z;
	if ( Other == None )
	{
		if ( NextMutator != None )
			NextMutator.ScoreKill(Killer, Other);
		return;
	}
	GetAxes(Other.Rotation,X,Y,Z);
	i = 0;
	if ( Other.Health < -20 )
		m = GibAmount;
	else
		m = KillAmount;
	for ( i=0; i<m; i++ )
	{
		if ( GunCount >= GunLimit )
			break;
		gun = Spawn(class'GunsGun',Other,,Other.Location);
		if ( gun == None )
			continue;
		GunCount++;
		if ( GunType == 14 )
			gun.SetType(Rand(13));
		else if ( GunType == 13 )
			gun.SetType(Rand(11));
		else
			gun.SetType(GunType);
		gun.Mute = Self;
		if ( InstigatorVictim )
			gun.Instigator = Other;
		else
			gun.Instigator = Killer;
		gun.Velocity += Other.Velocity*DeathVelocityFactor+(X+VRand()
			*DeathDeviation)*RandRange(DeathRandomXMin,
			DeathRandomXMax);
		gun.Velocity += Z*RandRange(DeathRandomZMin,DeathRandomZMax);
	}
	if ( GunCount > GunMax )
		GunMax = GunCount;
	if ( NextMutator != None )
		NextMutator.ScoreKill(Killer, Other);
}

defaultproperties
{
	HealthDivisor=10
	DamageMin=2
	DamageMax=50
	KillAmount=20
	GibAmount=50
	HitMomentumFactor=-0.5
	HitDeviation=0.8
	HitRandomMin=40.0
	HitRandomMax=400.0
	DeathVelocityFactor=0.5
	DeathDeviation=0.8
	DeathRandomXMin=40.0
	DeathRandomXMax=400.0
	DeathRandomZMin=50.0
	DeathRandomZMax=200.0
	GunLimit=65536
	GunType=2
	InstigatorVictim=True
}
