module Geometry (
 sphereVolume
 ,sphereArea
 ,cubeVolume
 ,cubeArea
 ,cuboidVolume
 ,cuboidArea
) where

sphereVolume :: Float -> Float
sphereVolume raduis = (4.0 /3.0) * pi * (raduis ^3)

sphereArea :: Float -> Float 
sphereArea raduis = 4 * pi * (raduis ^2)

cubeVolume :: Float -> Float
cubeVolume side = cuboidVolume side side side

cubeArea :: Float -> Float
cubeArea side = cuboidArea side side side

cuboidVolume :: Float -> Float -> Float -> Float
cuboidVolume a b c = rectArea a b * c

cuboidArea :: Float -> Float -> Float -> Float
cuboidArea a b c  = rectArea a b * 2 + rectArea a c * 2 + rectArea c b * 2

rectArea :: Float -> Float -> Float
rectArea a b = a * b