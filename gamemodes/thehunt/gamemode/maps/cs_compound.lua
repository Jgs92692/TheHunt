include( "basewaves.lua" )

---------------------- THE HUNT CONFIGURATION FILE ----------------------
CombineFirstWave = 7
CombineSecondWave = 10
CombineThirdWave = 13
CombineFourthWave = 15
CombineFifthWave = 20
CombineInfiniteWave = 20
MAP_PROPS = {'models/props_wasteland/controlroom_desk001b.mdl', 'models/props_c17/furniturecouch001a.mdl', 'models/props_wasteland/cafeteria_table001a.mdl'}
ITEMPLACES = {Vector(1503.660767, -1236.954468, 53.056572), Vector(2307.987793, -399.771088, 45.563347)}
combinespawnzones = {Vector(4111.273926, 1476.617065, 9.482422)}
zonescovered = {Vector(1655.351074, 1792.505493, 18.823072), Vector(729.625977, 163.750000, 0.401537), Vector(2127.364502, 120.411148, 6.362620), Vector(2545.067627, -1246.411987, 1.981143), Vector(1708.075562, 1097.625732, 2.791028)}
HELIPATHS = {Vector(3163.478760, 519.137695, 474.474365),Vector(1719.003296, 1931.211548, 594.918213),Vector(863.858948, 435.957336, 466.349365),Vector(774.040039, -1191.538696, 538.693665),Vector(1801.056152, -1553.289307, 485.869415),Vector(2920.485840, -1029.159546, 488.500427),}
function GM:PlayerInitialSpawn(ply)
timer.Simple(2, function() ply:PrintMessage(HUD_PRINTTALK, '[Overwatch]: Protection team alert, evidence of anticivil activity in this community.') end )
timer.Simple(4, function() ply:PrintMessage(HUD_PRINTTALK, '[Overwatch]: Code: assemble, plan, contain.') end )
timer.Simple(10, function()ply:PrintMessage(HUD_PRINTTALK, 'Type !help to see the game mechanics.') end )
end

function MapSetup()
for k, v in pairs(ents.FindByClass('func_door_rotating')) do print(v:GetClass()) v:SetKeyValue( 'spawnflags', '32' ) v:Fire('Open','',0) end
table.foreach(SPAWNPOINTS_TO_DELETE, function(key,value) for k, v in pairs(ents.FindByClass(value)) do print(v:GetClass()) v:Remove() end end)
SpawnItem('info_player_start', Vector(1609.208496, -1598.214478, 36.425125),Angle(0.011, -0.083, 0.139))
SpawnItem('info_player_start', Vector(1572.560913, 494.265503, 24.227716),Angle(-0.000, -0.000, 0.000))
SpawnAmmoCrate(Vector(1940.366821, -1412.298340, 32.440529),Angle(0.049, -0.023, -0.012),3)
SpawnItem('item_healthcharger', Vector(2075.912354, 414.031250, 48.275494),Angle(0.000, 90.000, 0.000))

end











---------------------- END OF CONFIGURATION FILE ----------------------
