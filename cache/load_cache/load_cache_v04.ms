cache_path = maxFilePath+@"cache\"
shot_start = -50
shot_end = 220
cache_comp="no"

for cur_obj in selection do
(
if cur_obj.modifiers[#Point_Cache]==undefined do (addmodifier cur_obj (Point_Cache ()))
--use original frame range
cur_obj.modifiers[#Point_Cache].playbackType=0
cur_obj.modifiers[#Point_Cache].playbackStart = shot_start
cur_obj.modifiers[#Point_Cache].playbackEnd = shot_end

if cache_comp=="yes" then
(cur_obj.modifiers[#Point_Cache].filename = (cache_path+"cachecomp//"+cur_obj.name+".pc2"))
else
(cur_obj.modifiers[#Point_Cache].filename = (cache_path+cur_obj.name+".pc2"))


)