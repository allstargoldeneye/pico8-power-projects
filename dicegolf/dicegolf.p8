pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
function _init()
	p_init()
end

function _update()
 club_cycle()
 swing()
end

function _draw()
 cls()
 print(club_select.."   "..
 clubs[club_select].name.." pow="..
 clubs[club_select].pow.." dex="..
 clubs[club_select].dex)
 --[[for f in all(clubs) do
  print(f.name.." "..f.dire)
 end --]]
 print("direction:"..s_direction
 .."  distance:"..s_distance)
end
-->8
--p_init player stuff
function p_init()
 strokes=0
 club_select=1
 clubs={}
 s_direction=0
 s_distance=0
 
 add(clubs,{name="driver",
     pow=20,
     dex=20})
 add(clubs,{name="3 wood",
     pow=16,
     dex=18})
 --{"3 wood",dire=16,dist=18},
 --{"5 wood",dire=12,dist=12},
 add(clubs,{name="2 iron",
     pow=14,
     dex=17})
 --{"3 iron",dire=12,dist=16}
          --more--!
 --club_select=clubs.name[1]
end
-->8
--math functions --
function dice_roll(sides)
 roll = 1+flr(rnd(sides))
 return roll
end
 
-->8
--gameplay functions
function club_cycle()
 if (btnp(⬆️) and club_select!=count(clubs)) then --and not the end
  club_select=club_select+1
 end
 if (btnp(⬇️) and club_select!=1) then
  club_select=club_select-1
 end  
end

function swing()
 if (btnp(❎)) then
  s_direction=dice_roll(clubs[club_select].pow)
  s_distance=dice_roll(clubs[club_select].dex)
 end
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000670000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000007767000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000007676000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000770000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
00020000000000000013050180501b0501e0501f050160501405014050140500000014050150500000017050000001c0500000000000000000000000000000000000000000000000000000000000000000000000
