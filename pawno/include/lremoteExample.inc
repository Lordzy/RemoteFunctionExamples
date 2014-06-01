//An example include of remote functioning. You must have loaded the remotetest
//gamemode first. Using this include, you can get the values from the player -
//variables present on gamemode and can also set them.
#if defined _included_lremoteEXAMPLE
	#endinput
#endif

#define _included_lremoteEXAMPLE

//variable type defines. Used for GetPlayerVar or SetPlayerVar
#if !defined VAR_TYPE_KILLS
	#define VAR_TYPE_KILLS      0
	#define VAR_TYPE_DEATHS     1
	#define VAR_TYPE_LEVEL      2
	#define VAR_TYPE_SCORE      3
	#define VAR_TYPE_MONEY      4
#endif

/*
native GetPlayerVarKills(playerid);
native GetPlayerVarDeaths(playerid);
native GetPlayerVarScore(playerid);
native GetPlayerVarLevel(playerid);
native GetPlayerVar(playerid, vartype);
native SetPlayerVar(playerid, vartype, value);
native SetPlayerVarKills(playerid, value);
native SetPlayerVarDeaths(playerid, value);
native SetPlayerVarMoney(playerid, value);
native SetPlayerVarScore(playerid, value);
native SetPlayerVarLevel(playerid, value);
*/


#include <a_samp>

stock GetPlayerVarKills(playerid)
	return CallRemoteFunction("GetPlayerVarKills", "i", playerid);
	
stock GetPlayerVarDeaths(playerid)
	return CallRemoteFunction("GetPlayerVarDeaths", "i", playerid);

stock GetPlayerVarScore(playerid)
	return CallRemoteFunction("GetPlayerVarScore", "i", playerid);

stock GetPlayerVarMoney(playerid)
	return CallRemoteFunction("GetPlayerVarMoney", "i", playerid);

stock GetPlayerVarLevel(playerid)
	return CallRemoteFunction("GetPlayerVarLevel", "i", playerid);

stock GetPlayerVar(playerid, vartype)
	return CallRemoteFunction("GetPlayerVar", "ii", playerid, vartype);

stock SetPlayerVar(playerid, vartype)
	return CallRemoteFucntion("SetPlayerVar", "iii", playerid, vartype, value);

stock SetPlayerVarKills(playerid, value)
	return CallRemoteFunction("SetPlayerVarKills", "ii", playerid, kills);

stock SetPlayerVarDeaths(playerid, value)
	return CallRemoteFunction("SetPlayerVarDeaths", "ii", playerid, value);

stock SetPlayerVarMoney(playerid, value)
	return CallRemoteFunction("SetPlayerVarMoney", "ii", playerid, value);

stock SetPlayerVarScore(playerid, value)
	return CallRemoteFunction("SetPlayerVarScore", "ii", playerid, value);

stock SetPlayerVarLevel(playerid, value)
	return CallRemoteFunction("SetPlayerVarLevel", "ii", playerid, value);
	
//End Of File

