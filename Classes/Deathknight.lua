local currentClass = select(2, UnitClass("player"))

if (currentClass ~= "DEATHKNIGHT") then
	return
end

SpellsByLevel = {
	[20] = {49158}, 
	[50] = {49143,55050,55090}, 
	[55] = {45462,45477,45902,47541}, 
	[56] = {49998}, 
	[58] = {48721}, 
	[59] = {49926,55258}, 
	[60] = {43265,49184,49917,51325,51416}, 
	[61] = {49020,49896}, 
	[62] = {49892}, 
	[63] = {49999}, 
	[64] = {49927,55259}, 
	[65] = {49918,51417,57330}, 
	[66] = {49939}, 
	[67] = {49903,49936,51423,55265}, 
	[68] = {49893}, 
	[69] = {49928,55260}, 
	[70] = {45463,49919,51326,51409,51418}, 
	[72] = {49940}, 
	[73] = {49904,49937,51424,55270}, 
	[74] = {49929,55261}, 
	[75] = {49920,49923,51327,51410,51419}, 
	[76] = {49894} 
}