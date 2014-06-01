//Remote function tests - Lordzy
//Money and score stuffs are only server sided values so it won't do anything to
// the game. This GM is just an example of Remote function calling.

#define FILTERSCRIPT
#include <a_samp>

//variable type defines. Used for GetPlayerVar
#define VAR_TYPE_KILLS      0
#define VAR_TYPE_DEATHS     1
#define VAR_TYPE_LEVEL      2
#define VAR_TYPE_SCORE      3
#define VAR_TYPE_MONEY      4

enum lg_pData {
  L_pKills,
  L_pDeaths,
  L_pLevel,
  L_pScore,
  L_pMoney
}

new
  L_gUserInfo[MAX_PLAYERS][lg_pData];


//Forwards
//Only "public" functions would undergo remote calls.
forward ResetPlayerVars(playerid);
forward GetPlayerVar(playerid, vartype);
forward GetPlayerVarKills(playerid);
forward GetPlayerVarDeaths(playerid);
forward GetPlayerVarLevel(playerid);
forward GetPlayerVarScore(playerid);
forward GetPlayerVarMoney(playerid);

forward SetPlayerVar(playerid, vartype, value);
forward SetPlayerVarKills(playerid, value);
forward SetPlayerVarDeaths(playerid, value);
forward SetPlayerVarLevel(playerid, value);
forward SetPlayerVarScore(playerid, value);
forward SetPlayerVarMoney(playerid, value);

//Public

public ResetPlayerVars(playerid)
{
	for(new i; lg_pData:i < lg_pData; i++) {
	    L_gUserInfo[playerid][lg_pData:i] = 0;
	}
	return 1;
}

public GetPlayerVar(playerid, vartype)
	return L_gUserInfo[playerid][lg_pData:vartype];

public GetPlayerVarKills(playerid)
	return L_gUserInfo[playerid][L_pKills];

public GetPlayerVarDeaths(playerid)
	return L_gUserInfo[playerid][L_pDeaths];

public GetPlayerVarLevel(playerid)
	return L_gUserInfo[playerid][L_pLevel];

public GetPlayerVarScore(playerid)
	return L_gUserInfo[playerid][L_pScore];

public GetPlayerVarMoney(playerid)
	return L_gUserInfo[playerid][L_pMoney];
	
public SetPlayerVar(playerid, vartype, value)
{
	L_gUserInfo[playerid][lg_pData:vartype] = value;
	return 1;
}

public SetPlayerVarKills(playerid, value)
{
	L_gUserInfo[playerid][L_pKills] = value;
	return 1;
}

public SetPlayerVarDeaths(playerid, value)
{
	L_gUserInfo[playerid][L_pDeaths] = value;
	return 1;
}

public SetPlayerVarLevel(playerid, value)
{
	L_gUserInfo[playerid][L_pLevel] = value;
	return 1;
}

public SetPlayerVarScore(playerid, value)
{
	L_gUserInfo[playerid][L_pScore] = value;
	return 1;
}



public SetPlayerVarMoney(playerid, value)
{
	L_gUserInfo[playerid][L_pMoney] = value;
	return 1;
}

public OnPlayerDeath(playerid, killerid, reason)
{
	if(killerid != INVALID_PLAYER_ID) {
		SetPlayerVarKills(killerid, GetPlayerVarKills(killerid)+1);
		SetPlayerVarDeaths(playerid, GetPlayerVarDeaths(playerid)+1);
		SetPlayerVarScore(killerid, GetPlayerVarScore(killerid)+1);
		SetPlayerVarMoney(killerid, GetPlayerVarMoney(killerid)+500);
	}
	return 1;
}

//End Of File


