pico-8 cartridge // http://www.pico-8.com
version 29
__lua__
function _init()
 make_player()
end

function _update()
 move_player()
end

function _draw()
 cls()
 map(0,0,0,0)
 spr(p.sprite,p.x,p.y)
end
-->8
--collision functions

--comments for this code can be
--found in pixel_movement.p8.png

function can_move(x,y,w,h)		
 if (solid(x,y)) return false
 if (solid(x+w,y)) return false
 if (solid(x,y+h)) return false
 if (solid(x+w,y+h)) return false
	return true
end

function solid(x,y)
 local map_x=flr(x/8)
 local map_y=flr(y/8)
 local map_sprite=mget(map_x,map_y)
 local flag=fget(map_sprite)
 return flag==1
end
-->8
--function player

function make_player()
	p={}	
	p.x=56
	p.y=56	
	p.dx=0
	p.dy=0
	p.w=7
	p.h=7	
	p.sprite=1
end

function move_player()
	if (btn(⬅️)) p.dx-=1
	if (btn(➡️)) p.dx+=1
	if (btn(⬆️)) p.dy-=1
	if (btn(⬇️)) p.dy+=1

 if (can_move(p.x+p.dx,p.y,p.w,p.h)) then
	 p.x+=p.dx
 end
 
 if (can_move(p.x,p.y+p.dy,p.w,p.h)) then
		p.y+=p.dy
	end

	p.dx,p.dy=0,0
end
__gfx__
0000000000999900ccccccccddddddddcccccccccccccccccccccccccccccccccc3333cc00000000000000000000000000000000000000000000000000000000
000000000aaaaaa0ccccccccddddddddccccccccccccccccccccccccccccccccc333333c00000000000000000000000000000000000000000000000000000000
007007009a8aa8a9ccccccccddddddddcccccccccccccccccccccccccccccccc3333333300000000000000000000000000000000000000000000000000000000
000770009aaaaaa9ccccccccddddddddcccccccccccccccccccccccccccccccc3333333300000000000000000000000000000000000000000000000000000000
000770009aaaaaa9ccccccccddddddddcccccccccccccccccccccccccccccccc3333333300000000000000000000000000000000000000000000000000000000
007007009a8aa8a9ccccccccddddddddcccccccccccccccccccccccccccccccc3334433300000000000000000000000000000000000000000000000000000000
000000000aa88aa0ccccccccddddddddccccccccccccccccccccccccccccccccc334433c00000000000000000000000000000000000000000000000000000000
0000000000999900ccccccccddddddddccccccccccccccccccccccccccccccccccc44ccc00000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000cccccccccccccccccccccccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000ccccccccccc1111111111ccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000ccccccccccc1111111111ccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000ccccccccccc1111111111ccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000ccccccccccc1111111111ccccccccccc0000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000ccccccccccc1111111111ccccccccccc0000000000000000000000000000000000000000000000000000000000000000
__gff__
0000000001010101010000000000000000000000010101010000000000000000000000000101010100000000000000000000000001010101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020202020202020202020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0202020202020802020208080802020200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0303030303030303030303030303030300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000