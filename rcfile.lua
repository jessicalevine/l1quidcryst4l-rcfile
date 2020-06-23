# TEAMNAME Gay Orb Desirers
# TEAMMEMBERS autonomousgrandpa Grumpdoggo crybernetics

# == l1quidcryst4l Crawl Opts ==
# Eating QoL
easy_eat_chunks  = true
auto_eat_chunks = true
auto_drop_chunks = yes
confirm_butcher = never
auto_butcher = hungry

# Autoexplore
travel_key_stop = false
explore_wall_bias = 3
explore_auto_rest = true

# Autofight
fire_order = launcher
fire_order += javelin, boomerang, stone, return
autofight_stop = 60                                                

# UI Tweaks
show_more=false
sort_menus = true        
view_delay = 200
warn_hatches = true
equip_unequip = true
view_max_height = 71
msg_min_height = 12
msg_max_height = 20
show_game_time = false
item_stack_summary_minimum = 6
hp_colour = 100:green, 99:lightgray, 75:yellow, 50:lightred, 25:red

# Misc options
default_manual_training = true
allow_self_target = false
drop_filter += forbidden

# Item slot assignments
# Treat a, b, i, t, r, w as taken so no wrong scrolls on familiar keys
item_slot ^= scroll:cdefghjklmnopqsuvxyz
item_slot ^= blinking:b
item_slot ^= identify:i
item_slot ^= teleport:t
item_slot ^= remove curse:r
item_slot ^= enchant armour:a
item_slot ^= enchant weapon:w

item_slot ^= heal wounds:H

item_slot ^= lightning rod:L
item_slot ^= paralysis:P
item_slot ^= flame:F
item_slot ^= digging:D

# from Yermak
is := item_slot
is ^= silver boomerang:u
is ^= silver javelin:x
is ^= (^|[0-9] )javelin:v
is ^= (^|[0-9] )boomerang:t
is ^= curare:C

# Class and god conditional options
: if you.god():find("Beogh") then
  force_more_message += Your orc.*dead
  force_more_message += Your orc.*dies
: end 

: if you.god() == "No God" and you.class() == "Fighter" then
  force_more_message += Found.*Okawaru 
  force_more_message += Found.*Trog
  force_more_message += Found.*Shining One
: end 

: if you.class() == "Fighter" then
  drop_filter += wizardry, magical power, amnesia, brilliance, intelligence
  drop_filter += stabbing, stealth
: end

# Force More messages for autoplaying quickly
force_more_message += MONSTERS ARE TOO THREATENING
force_more_message += Done exploring
force_more_message += Partly explored

# Force More messages from mobwarnings
force_more_message += YOU ARE IN FLIGHT VS. AIRSTRIKE!!!

# Macros
macros += M \{223} \{6}artefact\{32}||\{32}ego\{32}||\{32}whip\{32}||\{32}plate\{13}
macros += M \{169} \{6}altar\{13}
macros += M p ===autoplay
macros += M - ===print_nearby_killhole
# macros += M _ ===walk_one_step_to_killhole
# a* needs fixing first

### BORROWED ###

msc := message_colour
msc += mute:You start butchering
msc += mute:You continue butchering
msc += mute:This raw flesh tastes terrible

# == Reddit force_mores ==
# https://www.reddit.com/r/dcss/comments/6brrs8/formatting_force_more_message_option/dhpu179/

# PORTALS
force_more_message += Found a frozen archway
force_more_message += Found a gateway leading out of the Abyss
force_more_message += Found a labyrinth entrance
force_more_message += Found a staircase to the Ecumenical Temple
force_more_message += The mighty Pandemonium lord.*resides here
force_more_message += distant snort
force_more_message += interdimensional caravan
force_more_message += invites you to visit
force_more_message += oppressive heat
force_more_message += roar of battle
force_more_message += sound of rushing water
force_more_message += The drain falls to bits
force_more_message += There is an entrance to a bailey on this level
force_more_message += tolling of a bell
force_more_message += wave of frost

# GODBITS
force_more_message += you are ready to make a new sacrifice
force_more_message += grants you a gift
force_more_message += mollified
force_more_message += wrath finds you
force_more_message += sends forces
force_more_message += sends monsters
force_more_message += Vehumet offers

# TIDBITS
force_more_message += You fall through a shaft
force_more_message += Your transformation is almost over
force_more_message += You are starting to lose your buoyancy
force_more_message += The blast of calcifying dust hits you
force_more_message += evaporates and reforms
force_more_message += sentinel's mark
force_more_message += Your lamp of fire has recharged.
force_more_message += You have got your breath back.
# ' end quote for lua syntax highlighting

# UNIQUE WARNINGS
force_more_message += Agnes .*into view.
force_more_message += Aizul .*into view.
force_more_message += Antaeus .*into view.
force_more_message += Arachne .*into view.
force_more_message += Asmodeus .*into view.
force_more_message += Asterion .*into view.
force_more_message += Azrael .*into view.
force_more_message += Bai Suzhen .*into view.
force_more_message += Blork .*into view.
force_more_message += Boris .*into view.
force_more_message += Cerebov .*into view.
force_more_message += Crazy Yiuf .*into view.
force_more_message += Dispater .*into view.
force_more_message += Dissolution .*into view.
force_more_message += Donald .*into view.
force_more_message += Dowan .*into view.
force_more_message += Duvessa .*into view.
force_more_message += Edmund .*into view.
force_more_message += Ereshkigal .*into view.
force_more_message += Erica .*into view.
force_more_message += Erolcha .*into view.
force_more_message += Eustachio .*into view.
force_more_message += Fannar .*into view.
force_more_message += Frances .*into view.
force_more_message += Frederick .*into view.
force_more_message += Gastronok .*into view.
force_more_message += Geryon .*into view.
force_more_message += Gloorx Vloq .*into view.
force_more_message += Grinder .*into view.
force_more_message += Grum .*into view.
force_more_message += Harold .*into view.
force_more_message += Ignacio .*into view.
force_more_message += Ijyb .*into view.
force_more_message += Ilsuiw .*into view.
force_more_message += Jorgrun .*into view.
force_more_message += Jory .*into view.
force_more_message += Jessica .*into view.
force_more_message += Joseph .*into view.
force_more_message += Josephine .*into view.
force_more_message += Khufu .*into view.
force_more_message += Kirke .*into view.
force_more_message += Lom Lobon .*into view.
force_more_message += Louise .*into view.
force_more_message += Mara .*into view.
force_more_message += Margery .*into view.
force_more_message += Maurice .*into view.
force_more_message += Menkaure .*into view.
force_more_message += Mennas .*into view.
force_more_message += Mnoleg .*into view.
force_more_message += Murray .*into view.
force_more_message += Natasha .*into view.
force_more_message += Nergalle .*into view.
force_more_message += Nessos .*into view.
force_more_message += Nikola .*into view.
force_more_message += Pikel .*into view.
force_more_message += slave .*into view.
force_more_message += Polyphemus .*into view.
force_more_message += Prince Ribbit .*into view.
force_more_message += Psyche .*into view.
force_more_message += Purgy .*into view.
force_more_message += Robin .*into view.
force_more_message += Roxanne .*into view.
force_more_message += Rupert .*into view.
force_more_message += Saint Roka .*into view.
force_more_message += Sigmund .*into view.
force_more_message += Snorg .*into view.
force_more_message += Sojobo .*into view.
force_more_message += Sonja .*into view.
force_more_message += Terence .*into view.
force_more_message += The Lernaean hydra .*into view.
force_more_message += you hear.*crashing.
force_more_message += The royal jelly .* into view.
force_more_message += The Serpent of Hell .*into view.
force_more_message += Tiamat .*into view.
force_more_message += Urug .*into view.
force_more_message += Vashnia .*into view.
force_more_message += Xtahua .*into view.

# HilariousDeathArtist

# Bad things happening to you
more := force_more_message

more += corrodes your equipment
more += Your corrosive artefact corrodes you
more += are blown away by the wind
more += dispelling energy hits you
more += infuriates you
more += lose consciousness
more += mark forms upon you
more += MASSIVE DAMAGE
more += Ouch! That really hurt!
more += silver sears you
more += Space bends around you
more += Space warps horribly around you
more += surroundings become eerily quiet
more += Terrible wounds (open|spread) all over you
more += The acid corrodes your
more += The air around.*erupts in flames
more += The air twists around and violently strikes you in flight
more += You shudder from the earth-shattering force
more += The arrow of dispersal hits you[^r]
more += The barbed spikes become lodged in your body
more += The barbed spikes dig painfully into your body as you move
more += The blast of calcifying dust hits you[^r]
more += The poison in your body grows stronger
more += The pull of.*song draws you forwards
more += The.*engulfs you in water
more += You (are|feel) drained
more += You are (blasted|electrocuted)
more += You are blown backwards
more += You are burned terribly
more += You are encased in ice
more += You are engulfed in calcifying dust
more += You are engulfed in dark miasma
more += You are engulfed in mutagenic fog
more += You are knocked back
more += You are mesmerised
more += You are slowing down
more += You are trampled
more += You convulse
more += You feel a (horrible|terrible) chill
more += You feel haunted
more += You feel less vulnerable to poison
more += You feel your attacks grow feeble
more += You feel your flesh.*rot
more += You feel your power drain away
# more += You feel your power leaking away
more += You feel yourself grow more vulnerable to poison
more += You stumble backwards
more += You.*re (confused|more confused|too confused)
more += You.*re (poisoned|more poisoned|lethally poisoned)
more += Your body is wracked with pain
more += Your damage is reflected back at you
more += Your limbs are stiffening
more += Your magical defenses are stripped away
more += Your?.*suddenly stops? moving

# Abyssal Rune
more += Found .* abyssal rune of Zot

# Entrances, Exits, and Arrivals
more += Found a frozen archway
more += Found a gateway leading out of the Abyss
more += Found a labyrinth entrance
more += Found a staircase to the Ecumenical Temple
more += The mighty Pandemonium lord.*resides here

# Portal Timers
more += distant snort
more += interdimensional caravan
more += invites you to visit
more += oppressive heat
more += roar of battle
more += sound of rushing water
more += The drain falls to bits
more += There is an entrance to a bailey on this level
more += tolling of a bell
more += wave of frost
more += You hear the drain falling apart
more += You hear.*crackle.*magical portal
more += You hear.*crackling.*archway
more += You hear.*creaking.*(oriflamme|portcullis)
more += You hear.*hiss.*sand
more += You hear.*rumble.*avalanche
more += You hear.*rusting.*drain
more += You hear.*ticking.*clock

# https://crawl.xtahua.com/crawl/rcfiles/crawl-0.19/quik.rc

force_more_message += Deactivating autopickup
force_more_message += You now have enough gold to buy
force_more_message += hits you.*distortion

# Gained mutation
force_more_message += Gained mutation

# A mob wielding a weapon of distortion shows up
force_more_message += is wielding a .* of distortion  

# And flashes the screen
flash_screen_message += distortion

# == Autoinscribe ==

# Set alias for autoinscribe
ai := autoinscribe

# Do not automatically throw throwing nets
ai += throwing net:=f

# Do not list useless items on ground
ai += club:=k
ai += skeleton:=k

# HilariousDeathArtist

ai += dispersal:=f
ai += amulet of faith:Faith, !P

# Consumables to confirm before use
ai += (bad|dangerous)_item.*potion:!q
ai += potions? of berserk rage:!q
ai += potions? of cure mutation:!q
ai += potions? of heal wounds:!q

ai += (bad|dangerous)_item.*scroll:!r
ai += scrolls? of blinking:!r
ai += scrolls? of holy word:!r
ai += scrolls? of magic mapping:!r
ai += scrolls? of vulnerability:!r
ai += scrolls? of summoning:!r

ai += box of beasts:!r

# Body Armour
ai += fire dragon (armour|hide):rF++, rC-
ai += gold dragon (armour|hide):rC+, rF+, rPois
ai += ice dragon (armour|hide):rC++, rF-
ai += mottled dragon (armour|hide):rSticky
ai += pearl dragon (armour|hide):rN+
ai += quicksilver dragon armour:MR+
ai += shadow dragon (armour|hide):Stlth++++
ai += steam dragon (armour|hide):rSteam
ai += storm dragon (armour|hide):rElec
ai += swamp dragon (armour|hide):rPois
ai += troll (hide|leather armour):regen
: if not string.find(you.race(), "Troll") then
  ai += troll (hide|leather armour):=k
: end

# Body Armour Egos
ai += ([^l] leather armour|mail|plate armour|robe|skin) of cold resistance:rC+
ai += ([^l] leather armour|mail|plate armour|robe|skin) of fire resistance:rF+
ai += (leather armour|mail|plate armour|robe) of magic resistance:MR+
ai += (leather armour|mail|plate armour|robe) of positive energy:rN+
ai += (leather armour|mail|plate armour) of poison resistance:rPois
ai += plate armour of ponderousness:Speed-
ai += robe of resistance:rC+, rF+
ai += robe of the archmagi:Spellpower+
ai += troll leather armour of cold resistance:, rC+
ai += troll leather armour of fire resistance:, rF+

# Accessory Egos
ai += (barding|boots|buckler|cloak|gloves|hat|helmet|shield) of cold resistance:rC+
ai += (barding|boots|buckler|cloak|gloves|hat|helmet|shield) of fire resistance:rF+
ai += (barding|boots) of flight:+Fly
ai += (barding|boots) of stealth:Stlth+
ai += (barding|boots) of running:Speed+
ai += (barding|boots) of jumping:+Jump
ai += (buckler|cloak|shield) of poison resistance:rPois
ai += (buckler|shield) of positive energy:rN+
ai += (buckler|shield) of protection:AC+3
ai += (buckler|shield) of reflection:Reflect
ai += (buckler|shield) of resistance:rC+, rF+
ai += (cloak|hat|helmet) of magic resistance:MR+
ai += (hat|helmet) of intelligence:Int+3
ai += (hat|helmet) of see invisible:sInv
ai += cloak of darkness:+Inv
ai += gloves of strength:Str+3
ai += gloves of dexterity:Dex+3
ai += gloves of archery:Ranged Slay+4
ai += hat of spirit shield:Spirit

{
  -- Begin lua scripting --
  local verbose = false
  function debug_print(str)
    if verbose then
      crawl.mpr("<cyan>" .. str .. "</cyan>")
      crawl.flush_prev_message()	
    end
  end

  -- Dumps table to string
  --
  -- Useful for debugging but also used by my fixed version of RapidFire
  -- Studio's A* implementation (I replaced table-keys with dumped table
  -- keys because you can't effectively compare tables.)
  function dump(o)
    if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
        if type(k) == 'table' then
          s = s .. '['..dump(k)..'] = ' .. dump(v) .. ','
        else
          if type(k) ~= 'number' then k = '"'..k..'"' end
          s = s .. '['..k..'] = ' .. dump(v) .. ','
        end
      end
      return s .. '} '
    else
      return tostring(o)
    end
  end

  local surrounding_coords = {}
  surrounding_coords.y = {-1, -1}
  surrounding_coords.k = { 0, -1}
  surrounding_coords.u = { 1, -1}
  surrounding_coords.h = {-1,  0}
  surrounding_coords.l = { 1,  0}
  surrounding_coords.b = {-1,  1}
  surrounding_coords.j = { 0,  1}
  surrounding_coords.n = { 1,  1}

  local surrounding_tiles = {}
  for k, v in pairs(surrounding_coords) do
    table.insert(surrounding_tiles, {x=v[1],y=v[2]})
  end


  -- TODO Use 2D arrays not table keys cuz dump is sensitive to x/y reversal
  -- == Imported A* algorithm for autoplay pathing (with l1quidcryst4l bugfixes) == --
  --
  -- Copyright (c) 2012 RapidFire Studio Limited 
  -- All Rights Reserved. 
  -- http://www.rapidfirestudio.com

  -- Permission is hereby granted, free of charge, to any person obtaining
  -- a copy of this software and associated documentation files (the
  -- "Software"), to deal in the Software without restriction, including
  -- without limitation the rights to use, copy, modify, merge, publish,
  -- distribute, sublicense, and/or sell copies of the Software, and to
  -- permit persons to whom the Software is furnished to do so, subject to
  -- the following conditions:

  -- The above copyright notice and this permission notice shall be
  -- included in all copies or substantial portions of the Software.

  -- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
  -- EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
  -- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
  -- IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
  -- CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
  -- TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
  -- SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

  ----------------------------------------------------------------
  -- local variables
  ----------------------------------------------------------------

  local INF = 1/0
  local cachedPaths = nil

  ----------------------------------------------------------------
  -- local functions
  ----------------------------------------------------------------

  function dist ( x1, y1, x2, y2 )

    return math.sqrt ( math.pow ( x2 - x1, 2 ) + math.pow ( y2 - y1, 2 ) )
  end

  function dist_between ( nodeA, nodeB )

    return dist ( nodeA.x, nodeA.y, nodeB.x, nodeB.y )
  end

  function heuristic_cost_estimate ( nodeA, nodeB )

    return dist ( nodeA.x, nodeA.y, nodeB.x, nodeB.y )
  end

  function node_equal(node1, node2)
    return node1.x == node2.x and node1.y == node2.y
  end

  function lowest_f_score ( set, f_score )

    local lowest, bestNode = INF, nil
    for _, node in ipairs ( set ) do
      local score = f_score [ dump(node) ]
      if score < lowest then
        lowest, bestNode = score, node
      end
    end
    return bestNode
  end

  function neighbor_nodes ( theNode, nodes )

    local neighbors = {}
    for k,v in pairs ( surrounding_coords ) do
      neighbor = {x=theNode.x+v[1],y=theNode.y+v[2]}
      if valid_node_func ( theNode, neighbor ) then
        table.insert ( neighbors, neighbor )
      end
    end
    return neighbors
  end

  function not_in ( set, theNode )

    for _, node in ipairs ( set ) do
      if node_equal(node, theNode) then return false end
    end
    return true
  end

  function remove_node ( set, theNode )

    for i, node in ipairs ( set ) do
      if node_equal(node, theNode) then 
        set [ i ] = set [ #set ]
        set [ #set ] = nil
        break
      end
    end	
  end

  function unwind_path ( flat_path, map, current_node, start )
    if node_equal(current_node, start) then
      return flat_path
    end

    mapv = map[dump({x=current_node.x,y=current_node.y})] or map[dump({y=current_node.y,x=current_node.x})] 
    if mapv then
      table.insert ( flat_path, 1, mapv ) 
      return unwind_path ( flat_path, map, mapv, start )
    end
  end

  ----------------------------------------------------------------
  -- pathfinding functions
  ----------------------------------------------------------------

  function a_star ( start, goal, nodes  )

    local closedset = {}
    local openset = { start }
    local came_from = {}

    local g_score, f_score = {}, {}
    g_score [ dump(start) ] = 0
    f_score [ dump(start) ] = g_score [ dump(start) ] + heuristic_cost_estimate ( start, goal )

    while #openset > 0 do

      local current = lowest_f_score ( openset, f_score )
      if current.x == goal.x and current.y == goal.y then
        local path = unwind_path ( {}, came_from, goal, start )
        debug_print(dump(came_from))
        debug_print(fmt_coords(start.x,start.y) .. " " .. fmt_coords(goal.x,goal.y))
        table.insert ( path, goal )
        return path
      end

      remove_node ( openset, current )		
      table.insert ( closedset, current )

      local neighbors = neighbor_nodes ( current, nodes )
      for _, neighbor in ipairs ( neighbors ) do 
        if not_in ( closedset, neighbor ) then

          local tentative_g_score = g_score [ dump(current) ] + dist_between ( current, neighbor )

          if not_in ( openset, neighbor ) or tentative_g_score < g_score [ dump(neighbor) ] then 
            came_from 	[ dump(neighbor) ] = current
            g_score 	[ dump(neighbor) ] = tentative_g_score
            f_score 	[ dump(neighbor) ] = g_score [ dump(neighbor) ] + heuristic_cost_estimate ( neighbor, goal )
            if not_in ( openset, neighbor ) then
              table.insert ( openset, neighbor )
            end
          end
        end
      end
    end
    return nil -- no valid path
  end

  ----------------------------------------------------------------
  -- exposed functions
  ----------------------------------------------------------------

  function clear_cached_paths ()
    valid_crawl_feature_cache = {}
    cachedPaths = nil
  end

  function distance ( x1, y1, x2, y2 )

    return dist ( x1, y1, x2, y2 )
  end

  function path ( start, goal, nodes, ignore_cache  )

    if not cachedPaths then cachedPaths = {} end
    if not cachedPaths [ dump(start) ] then
      cachedPaths [ dump(start) ] = {}
    elseif cachedPaths [ dump(start) ] [ dump(goal) ] and not ignore_cache then
      debug_print("Returning cached pathing!")
      return cachedPaths [ dump(start) ] [ dump(goal) ]
    end

    local resPath = a_star ( start, goal, nodes )
    if not cachedPaths [ dump(start) ] [ dump(goal) ] and not ignore_cache then
      cachedPaths [ dump(start) ] [ dump(goal) ] = resPath
    end

    return resPath
  end

  -- execute

  valid_crawl_feature_cache = {}
  function valid_crawl_feature(node)
    valid_crawl_feature_cache[node.x] = valid_crawl_feature_cache.x or {}

    local cached = valid_crawl_feature_cache[node.x][node.y] 
    if cached ~= nil then
      debug_print("Using cached")
      return cached
    else
      local feature =  view.feature_at (node.x, node.y)
      debug_print("feature is: " .. feature)
      local validity = not (travel.feature_solid(feature) or feature == "unseen")

      debug_print("feature validity: " .. tostring(validity))
      valid_crawl_feature_cache[node.x][node.y] = validity
      return validity
    end
  end
  -- this function determines which neighbors are valid (e.g., within range)
  -- assumes you only pass it adjacenct tiles, just checks they're not out of bounds
  function valid_node_func( node, neighbor ) 

    if math.abs(neighbor.x) < 9 and math.abs(neighbor.y) < 9 then
      return valid_crawl_feature(neighbor)
    end

    return false
  end


  function node_compare(left, right)
    dleft = distance (0, 0, left.x, left.y) 
    dright = distance (0, 0, right.x, right.y)
    return dleft < dright
  end

  ordered_potentially_visible_tiles = {}
  for x=-8,8 do
    for y=-8,8 do
      table.insert(ordered_potentially_visible_tiles, {x = x, y = y})
    end
  end
  table.sort(ordered_potentially_visible_tiles, node_compare)

  local ignore = false -- dont ignore cached paths
  function path_to_player(goal)
    path_to({x=0,y=0}, goal)
  end

  function path_from_player(goal)
    path_to(goal, {x=0,y=0})
  end

  function Tile(x, y)
    return {x=x,y=y}
  end

  function manhattan_distance(start, goal)
    return math.abs(start.x - goal.x) + math.abs(start.y - goal.y)
  end

  -- @return list of tiles from adjacent to start at index 2 to goal
  -- will return nil if start = goal
  function path_to(start, goal)
    -- start == goal returns nil via pathing anyway so just skip the math
    if (start.x == goal.x) and (start.y == goal.y) then
      return nil
    end

    -- Just don't do long pathing, it lags too much. Assume you can't path.
    -- TODO This is inelegant and yields false negative for
    -- monster_will_enter_killhole for long distances and we need to figure
    -- out a way to fix that
    if manhattan_distance(start, goal) > 5 then
      return nil
    end

    local goal_feature = view.feature_at (goal.x, goal.y)
    if goal_feature == "unseen" or travel.feature_solid (goal_feature) then
      return nil
    end

    debug_print("Pathing goal " ..fmt_coords(goal.x, goal.y) .. "; start " .. fmt_coords(start.x, start.y))

    return path (start, goal, ordered_potentially_visible_tiles, ignore  )
  end

  -- @return the tile adjacent to start in path, nil if no path
  function adj_tile_from_path(start, goal)
    local path = path_to(start, goal)
    if not path then
      return nil
    else
      return path[2]
    end
  end

  -- end A* pathing

  -- From AnnounceDamage
  -- (some also in use by autoplay)
  local previous_hp = 0
  local previous_mp = 0
  local previous_form = ""
  local was_berserk_last_turn = false
  -- End AnnounceDamage locals

  -- === l1quidcryst4l autoplay === --
  local turns_waited = 0
  local yelled_in_killhole = false
  local was_in_killhole = false

  -- Top level autoplay function
  -- Handles updating state and setting options
  function autoplay()
    -- Don't animate when playing for speed
    crawl.setopt("use_animations = 0")

    did_exit_killhole()
    if in_absolute_killhole() or get_monster_threat_level() < 2 then
      crawl.setopt("autofight_stop = 40")
    end

    all_actions()

    crawl.setopt("autofight_stop = 60")
    crawl.setopt("use_animations = beam, range, hp, monster_in_sight, pickup, monster, player, branch_entry")
  end

  -- Main logic for taking actions during autoplay
  function all_actions()
    local mp, max_mp = you.mp()
    local hp, max_hp = you.hp()
    local need_to_recover = should_rest(hp, mp, max_hp, max_mp)

    -- Handle dangerous hunger first
    if really_need_eat() and not need_to_recover then
      if you.feel_safe() then
        -- (Maybe) Eat via autoexplore
        autoexplore()
        record_acted()
        return
      elseif get_monster_threat_level() < 2 and find_in_inventory("chunk") then
        -- Eat in combat if it's safe to do so and you need
        crawl.sendkeys("ee")
        crawl.mpr("Autoeating")
        record_acted()
        return
      end
    end

    if you.feel_safe() then
      if need_to_recover then
        rest()
        crawl.mpr("Resting to recover.")
        return
      end

      -- Greater turns for more safety, less for more speed
      if turns_waited > 1 then
        autoplay_act_from_safety()
        crawl.mpr("Done waiting for monsters. Taking action.")
        return
      end

      if maybe_yell_in_killhole_or_wait() then
        return -- You already acted
      end
    end

    autoplay_act_from_safety()
  end

  -- @return true if took action or waited
  -- If false, caller should take actions
  function maybe_yell_in_killhole_or_wait()
    if you.feel_safe() then
      if in_absolute_killhole() and not yelled_in_killhole then
        crawl.sendkeys('tt')
        yelled_in_killhole = true
        return true
      elseif in_absolute_killhole() and yelled_in_killhole then

        if turns_waited > 3 then
          crawl.mpr("Done waiting for monsters. Taking action.")
          autoplay_act_from_safety()
          return true
        end

        wait()
        return true
      end
    end

    return false
  end

  -- @return true if the biggest threats are trivial or easy bats
  -- helps ensure we don't waste time waiting, instead approaching gnats
  function just_gnats()
    local threat_level = get_monster_threat_level()
    local monster_names = get_all_monster_names()

    if threat_level < 1 and #monster_names < 3 then
      return true
    elseif get_monster_threat_level() < 2 then
      if util.exists(monster_names, function(i) return i == "bat" end) then
        return true
      end
    end

    return false
  end

  -- Encapsulates the logic for what action to take in safe situations so that
  -- top level caller can invoke this logic conditionally
  --
  -- Checks to ensure you're safe, just in case
  function autoplay_act_from_safety()
    if you.feel_safe() then
      autoexplore()
      record_acted()
    elseif monsters_too_threatening() and not in_any_killhole() then
      print_nearby_killhole(true)
      crawl.mpr("<lightred>MONSTERS ARE TOO THREATENING!</lightred> Retreat to a killhole or stairdance.")
    elseif items.fired_item() and not can_see_reach_or_threatening_ranged_monsters() then
      -- Only if something is quivered
      hit_closest_nomove()
      record_acted()
    else
      if not in_immediate_danger() and monster_will_enter_killhole() and not just_gnats() then
        wait()
        crawl.mpr("Waiting for monster approach.")
      else
        hit_closest()
        record_acted()
      end
    end
  end

  -- Get list of all hostile monsters in view
  --
  -- Adapted from HDA getMonsterList
  --
  -- WARNING monsters_in_view_memoized is memoized for performance and MUST be
  -- reset in ready() at the start of each turn
  local monsters_in_view_memoized = nil
  function get_all_monsters()
    if monsters_in_view_memoized then
      return monsters_in_view_memoized
    end

    local monsters = {}
    for x = -8,8 do
      for y = -8,8 do
        m = monster.get_monster_at(x, y)
        local attitude_hostile = 0
        if m and (m:attitude() == attitude_hostile) and not (m:is_firewood()) then
          table.insert(monsters, m)
        end
      end
    end

    monsters_in_view_memoized = monsters
    return monsters
  end

  function reset_memoized_monster_list()
    monsters_in_view_memoized = nil
  end

  function get_all_monster_names()
    return util.map(function(monster) return monster:name() end, get_all_monsters())
  end

  function monster_will_enter_killhole()
    ms = get_all_monsters()

    -- TODO Yields false negatives in order to prevent lag due to inefficient
    -- pathing, could use improvement
    local total_distance = 0
    if ms then
      for _, m in ipairs(ms) do
         total_distance = total_distance + manhattan_distance(Tile(0,0), Tile(m:x_pos(), m:y_pos()))
      end
    end
    if total_distance > 15 then
      return false
    end

    local all_monsters_enter = true
    if ms then
      for _, m in ipairs(ms) do
        local m_adj_tile = adj_tile_from_path({x=0,y=0}, {x=m:x_pos(), y=m:y_pos()})
        
        -- 
        if m_adj_tile and not in_any_killhole(m_adj_tile.x, m_adj_tile.y) then
          return false
        elseif not m_adj_tile then
          -- TODO Yields false negatives with path_to distance issues but necessary for now
          return false
        end
      end
    end

    return true
  end

  function print_nearby_killhole(dont_print_message_if_not_found)
    nearby_killhole = find_nearby_killhole()

    if nearby_killhole then
      print_suggestion("Use nearby killhole: " .. color_msg(fmt_coords(nearby_killhole.x, nearby_killhole.y),"yellow"))
    elseif not dont_print_message_if_not_found then
      -- Double negative cuz keybinding calls with no arguments
      crawl.mpr("No visible killhole found.")
    end
  end

  function path_to_nearby_killhole()
    nearby_killhole = find_nearby_killhole()
    if nearby_killhole then
      return path_from_player(nearby_killhole)
    else
      return nil
    end
  end

  -- TODO Evaluates distance as the crow flies, meaning killhole may be far
  -- away by foot or even unreachable. Improve the calculate by path distance
  -- taking into account performance and unseen tiles
  --
  -- WARNING nearby_killhole_memoized and no_nearby_killhole are memoized for
  -- performance and MUST be reset in ready() at the start of each turn
  nearby_killhole_memoized = nil
  no_nearby_killhole = nil
  function find_nearby_killhole()
    if nearby_killhole_memoized or no_nearby_killhole then
      return nearby_killhole_memoized
    end

    local nonsolid_terrain = nonsolid_terrain_in_view()
    for _, terrain in ipairs(nonsolid_terrain) do
      debug_print("Next killhole terrain loop")
      if in_absolute_killhole(terrain.x, terrain.y) or in_relative_killhole(terrain.x, terrain.y) then
      -- if in_absolute_killhole(terrain.x, terrain.y) then
        nearby_killhole_memoized = terrain
        return nearby_killhole_memoized
      end
    end

    debug_print("No nearby killhole!")
    no_nearby_killhole = true
    return nil
  end

  function reset_memoized_nearby_killhole()
    nearby_killhole_memoized = nil
    no_nearby_killhole = nil
  end

  -- makes sure we dont yell and wait every step through a killhole
  function did_exit_killhole()
    -- reset yelled_in_killhole
    if was_in_killhole and not in_absolute_killhole then
      yelled_in_killhole = false
      return true
    end

    was_in_killhole = in_absolute_killhole
    return false
  end

  function wait()
    crawl.mpr("Waiting. Turns waited so far: " .. turns_waited)
    turns_waited = turns_waited + 1
    crawl.sendkeys('.')
  end

  function record_acted()
    turns_waited = 0
  end

  function hp_lost()
    local hp, max_hp = you.hp()
    -- previous_hp comes from imported script below
    local lost_hp = previous_hp - hp
    return lost_hp
  end

  function in_immediate_danger()
    local current_hp, max_hp = you.hp()
    local lost_big_chunk = (hp_lost() > (max_hp * 0.2))
    local hp_too_low = (current_hp < (max_hp * 0.8))
    local ranged = can_see_reach_or_threatening_ranged_monsters()
    return monster_adjacent() or ((lost_big_chunk or hp_too_low) and not you.feel_safe) or ranged
  end

  -- TODO improve to check if reach is within 2 spaces
  function can_see_reach_or_threatening_ranged_monsters()
    local ranged_threat_count = 0
    for _, m in ipairs(get_all_monsters()) do
      if m:reach_range() > 1 then
        return true
      elseif m:name():find("priest") or m:name():find("wizard") then
        ranged_threat_count = ranged_threat_count + m:threat()
      end
      -- TODO Solve attempt to call method 'has_ranged_attack' (a nil value)
    end

    return ranged_threat_count > 2
  end

  function monster_adjacent()
    for k,v in pairs(surrounding_coords) do
      local m = monster.get_monster_at(v[1], v[2]) 
      if m then
        return true
      end
    end

    return false
  end

  -- Get map of terrain in view ordered by nearest
  --
  -- @return Array of {feature, x, y} tables, ascending by dist from player
  --
  -- WARNING terrain_in_view_memoized is memoized for performance and MUST be
  -- reset in ready() at the start of each turn
  local terrain_in_view_memoized = nil
  function terrain_in_view()
    if terrain_in_view_memoized then
      return terrain_in_view_memoized
    end

    ordered_terrain_in_view = {}
    for _, tile in ipairs(ordered_potentially_visible_tiles) do
      feature = view.feature_at(tile.x, tile.y)
      if feature ~= "unseen" then
        table.insert(ordered_terrain_in_view, {feature=feature,x=tile.x,y=tile.y})
      end
    end

    terrain_in_view_memoized = ordered_terrain_in_view
    return terrain_in_view_memoized
  end

  function reset_memoized_terrain_in_view()
    terrain_in_view_memoized = nil
  end

  -- @return {feature, x, y} of closest matching terrain, nil if no match
  function find_terrain_feature_in_view(feature)
    for _, terrain_table in ipairs(terrain_in_view()) do
      if terrain_table.feature:find(feature) then
        debug_print("Found terrain: " .. feature)
        return terrain_table
      end
    end

    debug_print("Did not find terrain: " .. feature)
    return nil
  end

  function nonsolid_terrain_in_view()
    return util.filter(function(terrain) 
      return not travel.feature_solid(terrain.feature)
    end, terrain_in_view()) 
  end

  function in_any_killhole(tile_rel_to_player_x, tile_rel_to_player_y)
    -- Defaults to checking if player in killhole
    if tile_rel_to_player_x == nil then
      tile_rel_to_player_x = 0
      tile_rel_to_player_y = 0
    end

    if in_absolute_killhole(tile_rel_to_player_x, tile_rel_to_player_y) then
      return true
    elseif in_relative_killhole(tile_rel_to_player_x, tile_rel_to_player_y) then
      return true
    end

    return false
  end

  -- Player has max two open tiles around them (like a hallway)
  -- TODO Fix for out of view but remembered tiles (Crawl Lua doesn't expose?)
  function in_absolute_killhole(tile_rel_to_player_x, tile_rel_to_player_y)
    -- Defaults to checking if player in killhole
    if tile_rel_to_player_x == nil then
      tile_rel_to_player_x = 0
      tile_rel_to_player_y = 0
    end

    debug_print("Checking abs killhole: " .. tile_rel_to_player_x .. " " .. tile_rel_to_player_y)

    local empty_spaces = 0
    for k,v in pairs(surrounding_coords) do
      x, y = v[1], v[2]
      local feature = view.feature_at(tile_rel_to_player_x+x, tile_rel_to_player_y+y)

      -- debug_print("feature at: " ..
      --             fmt_coords(tile_rel_to_player_x+x, tile_rel_to_player_y+y) ..
      --             " " .. feature)
      --
      if feature and not (travel.feature_solid(feature) or feature == "unseen") then
        empty_spaces = empty_spaces + 1
      end
    end

    if empty_spaces < 3 then
      debug_print("In absolute killhole")
      return true
    else
      return false
    end
  end

  function tile_in_tiles(tile, tiles)
    debug_print("Finding tile in tiles")
    for _, array_tile in ipairs(tiles) do
      if array_tile.x == tile.x and array_tile.y == tile.y then
        debug_print("Found tile in tiles")
        return true
      end
    end
    
    debug_print("Did not find tile in tiles")
    return false
  end

  -- Ensures all monsters will path to a tile in which there are no open tiles
  -- both around it and around player, and therefore all visible monsters will
  -- approach single file, even if player has open tiles behind them
  --
  -- Returns false for farther adjacent from player because
  -- it gets ridiculously inefficient to look outward from there. I could
  -- refuse to call it with those args and technically that's more correct but
  -- this is easier when we're calculating both abs and rel together often
  function in_relative_killhole(tile_rel_to_player_x, tile_rel_to_player_y)
    -- Defaults to checking if player in killhole
    if tile_rel_to_player_x == nil then
      tile_rel_to_player_x = 0
      tile_rel_to_player_y = 0
    elseif math.abs(tile_rel_to_player_x) > 1 or math.abs(tile_rel_to_player_y) > 1 then
      return false
    end

    debug_print("Checking rel killhole: " .. tile_rel_to_player_x .. " " .. tile_rel_to_player_y)

    monsters = get_all_monsters()
    if #monsters < 2 then
      -- No such thing as a relative killhole against 0/1 monster, as all
      -- pathing leads to single-file, but that doesn't actually mean you're
      -- in a relative killhole if another monster comes up.
      return false
    end

    local adj_approach_x, adj_approach_y = nil, nil
    for _, monster in ipairs(monsters) do
      -- Find the tile adjacent to player that the monster will take if going
      -- shortest path
      local adj_tile_in_path = adj_tile_from_path(
        {x=tile_rel_to_player_x, y=tile_rel_to_player_y},
        {x=monster:x_pos(), y=monster:y_pos()}
      )

      if adj_tile_in_path then
        -- If the monster has no path, we're 'safe' enough and can skip iter
        if not adj_approach_x then
          -- On first iteration, store where that monster is going
          adj_approach_x, adj_approach_y = adj_tile_in_path.x, adj_tile_in_path.y
        else
          -- If the monsters can approach at different tiles, you're not in a killhole
          -- NOTE It's extra sensitive: they can't be on either side in a hallway
          if adj_approach_x ~= adj_tile_in_path.x or adj_approach_y ~= adj_tile_in_path.y then
            debug_print("Monsters approach in different places")
            return false
          end
        end
      else
        debug_print("Monster has no path " .. monster:name())
      end
    end

    if not adj_approach_x then
      -- Couldn't path monster, probably due to false negative path_to issue
      -- so just assume we're not in a killhole for safety. TODO improve.
      return false
    end

    local tiles_around_target_tile = util.map(function(tile)
      return {x=tile.x+adj_approach_x,y=tile.y+adj_approach_y}
    end, surrounding_tiles)

    -- The adjacent approach tile must not have open spaces also adjacent to
    -- target tile (otherwise, this algo could miss non-shortest path approaches)
    empty_spaces_arround_adj_approach = {}
    for _, tile in ipairs(surrounding_tiles) do
      adj_to_adj_approach_tile = {x = adj_approach_x + tile.x, y = adj_approach_y + tile.y}

      -- Is this tile, which is adjacent to the adjacent approach tile, also 
      -- adjacent to the target tile (usually player)?
      if tile_in_tiles(adj_to_adj_approach_tile, tiles_around_target_tile) then
        local feature = view.feature_at(adj_to_adj_approach_tile.x, adj_to_adj_approach_tile.y)
        debug_print("Feature at adj_to_adj_approach_tile: " .. feature)

        if not travel.feature_solid(feature) then
          -- Open space next to monster approach and player!
          return false
        end
      end
    end 

    return true
  end

  function walk_one_step_to_killhole()
    if in_absolute_killhole() then
      crawl.mpr("You're already in a killhole!")
      return
    end

    nearby_killhole = find_nearby_killhole()
    if nearby_killhole then
      local path_to = path_to_nearby_killhole()
      if path_to then
        walk_one_step_to_tile(path_to[2])
        return
      else
        crawl.mpr("Can't find path to killhole")
        return
      end
    end

    crawl.mpr("Can't walk when no nearby killhole!")
  end

  function walk_one_step_to_tile(target_tile)
    for direction_button, tile in pairs(surrounding_coords) do
      -- crawl.mpr(tile.x .. target_tile.x .. tile.y .. target_tile.y)
      if tile[1] == target_tile.x and tile[2] == target_tile.y then
        crawl.mpr("Walking towards killhole.")
        crawl.sendkeys(direction_button)
      end
    end
  end

  function rest()
    crawl.sendkeys('5')
  end

  function autoexplore()
    crawl.sendkeys('o')
  end

  function monsters_too_threatening()
    ms = get_all_monsters() 

    total_threat = 0
    for _, m in ipairs(ms) do
      if m:threat() > 2 then
        return true
      end

      total_threat = total_threat + m:threat()
    end

    return total_threat > 4
  end

  function get_monster_threat_level()
    ms = get_all_monsters() 

    total_threat = 0
    for _, m in ipairs(ms) do
      total_threat = total_threat + m:threat()
    end

    debug_print("Monster threat: " .. total_threat)
    return total_threat
  end

  function really_need_eat()
    local hungry = 3
    return you.hunger() < hungry
  end

  -- Borrowed from HDATravel
  function should_rest(hp, mp, max_hp, max_mp)
    local you_are_mummy = string.find(you.race(), "Mummy")
    local you_are_deep_dwarf = string.find(you.race(), "Deep Dwarf")
    return (mp < (max_mp*0.50) or ((max_mp-mp) > 20)
    or ((hp < (max_hp*0.80)) or ((max_hp-hp) > 30) 
    and not you_are_deep_dwarf)
    or you.slowed()
    or you.poisoned()
    or you.confused()
    or you.exhausted()
    or (((hp < max_hp) or (mp < max_mp)) and you_are_mummy))
  end

  -- == AnnounceDamage == --
  -- From HilariousDeathArtist HDamage
  -- NOTE Some AnnounceDamage locals are defined before l1quidcryst4l autoplay

  function AnnounceDamage()
    local current_hp, max_hp = you.hp()
    local current_mp, max_mp = you.mp()
    --Things that increase hp/mp temporarily really mess with this
    local current_form = you.transform()
    local you_are_berserk = you.berserk()
    local max_hp_increased = false
    local max_hp_decreased = false

    if (current_form ~= previous_form) then
      if (previous_form:find("dragon") or
        previous_form:find("statue") or
        previous_form:find("tree") or
        previous_form:find("ice")) then
        max_hp_decreased = true
      elseif (current_form:find("dragon") or
        current_form:find("statue") or
        current_form:find("tree") or
        current_form:find("ice")) then
        max_hp_increased = true
      end
    end
    if (was_berserk_last_turn and not you_are_berserk) then
      max_hp_decreased = true
    elseif (you_are_berserk and not was_berserk_last_turn) then
      max_hp_increased = true
    end

    --crawl.mpr(string.format("previous_form is: %s", previous_form))
    --crawl.mpr(string.format("current_form is: %s", current_form))
    --crawl.mpr(string.format("max_hp_increased is: %s", max_hp_increased and "True" or "False"))
    --crawl.mpr(string.format("max_hp_decreased is: %s", max_hp_decreased and "True" or "False"))

    --crawl.mpr(string:format("you_are_berserk is: %s", you_are_berserk and "True" or "False"))
    --crawl.mpr(string:format("was_berserk_last_turn is: %s", was_berserk_last_turn and "True" or "False"))


    --Skips message on initializing game
    if previous_hp > 0 then
      local hp_difference = previous_hp - current_hp
      local mp_difference = previous_mp - current_mp

      if max_hp_increased or max_hp_decreased then
        if max_hp_increased then
          crawl.mpr("<green>You now have " .. current_hp .. "/" .. max_hp .. " hp.</green>")
        else
          crawl.mpr("<yellow>You now have " .. current_hp .. "/" .. max_hp .. " hp.</yellow>")
        end
      else
        --On losing health
        if (current_hp < previous_hp) then
          if current_hp <= (max_hp * 0.30) then
            crawl.mpr("<red>You take " .. hp_difference .. " damage,</red><lightred> and have " .. current_hp .. "/" .. max_hp .. " hp.</lightred>")
          elseif current_hp <= (max_hp * 0.50) then
            crawl.mpr("<red>You take " .. hp_difference .. " damage, and have " .. current_hp .. "/" .. max_hp .. " hp.</red>")
          elseif current_hp <= (max_hp *  0.70) then
            crawl.mpr("<red>You take " .. hp_difference .. " damage,</red><yellow> and have " .. current_hp .. "/" .. max_hp .. " hp.</yellow>")
          elseif current_hp <= (max_hp * 0.90) then
            crawl.mpr("<red>You take " .. hp_difference .. " damage,</red><lightgrey> and have " .. current_hp .. "/" .. max_hp .. " hp.</lightgrey>")
          else
            crawl.mpr("<red>You take " .. hp_difference .. " damage,</red><green> and have " .. current_hp .. "/" .. max_hp .. " hp.</green>")
          end
          if hp_difference > (max_hp * 0.20) then
            crawl.mpr("<lightred>MASSIVE DAMAGE!!</lightred>")
          end
        end

        --On gaining more than 1 health
        if (current_hp > previous_hp) then
          --Removes the negative sign
          local health_inturn = (0 - hp_difference)
          if (health_inturn > 1) and not (current_hp == max_hp) then
            if current_hp <= (max_hp * 0.30) then
              crawl.mpr("<green>You regained " .. health_inturn .. " hp,</green><lightred> and now have " .. current_hp .. "/" .. max_hp .. " hp.</lightred>")
            elseif current_hp <= (max_hp * 0.50) then
              crawl.mpr("<green>You regained " .. health_inturn .. " hp,</green><red> and now have " .. current_hp .. "/" .. max_hp .. " hp.</red>")
            elseif current_hp <= (max_hp *  0.70) then
              crawl.mpr("<green>You regained " .. health_inturn .. " hp,</green><yellow> and now have " .. current_hp .. "/" .. max_hp .. " hp.</yellow>")
            elseif current_hp <= (max_hp * 0.90) then
              crawl.mpr("<green>You regained " .. health_inturn .. " hp,</green><lightgrey> and now have " .. current_hp .. "/" .. max_hp .. " hp.</lightgrey>")
            else
              crawl.mpr("<green>You regained " .. health_inturn .. " hp, and now have " .. current_hp .. "/" .. max_hp .. " hp.</green>")
            end
          end
          if (current_hp == max_hp) then
            crawl.mpr("<green>Health restored: " .. current_hp .. "</green>")
          end
        end

        --On gaining more than 1 magic
        if (current_mp > previous_mp) then
          --Removes the negative sign
          local mp_inturn = (0 - mp_difference)
          if (mp_inturn > 1) and not (current_mp == max_mp) then
            if current_mp < (max_mp * 0.25) then
              crawl.mpr("<lightcyan>You regained " .. mp_inturn .. " mp,</lightcyan><red> and now have " .. current_mp .. "/" .. max_mp .. " mp.</red>")
            elseif current_mp < (max_mp * 0.50) then
              crawl.mpr("<lightcyan>You regained " .. mp_inturn .. " mp,</lightcyan><yellow> and now have " .. current_mp .. "/" .. max_mp .. " mp.</yellow>")
            else
              crawl.mpr("<lightcyan>You regained " .. mp_inturn .. " mp,</lightcyan><green> and now have " .. current_mp .. "/" .. max_mp .. " mp.</green>")
            end
          end
          if (current_mp == max_mp) then
            crawl.mpr("<lightcyan>MP restored: " .. current_mp .. "</lightcyan>")
          end
        end

        --On losing magic
        if current_mp < previous_mp then
          if current_mp <= (max_mp / 5) then
            crawl.mpr("<lightcyan>You now have </lightcyan><red>" .. current_mp .. "/" ..max_mp .." mp.</red>")
          elseif current_mp <= (max_mp / 2) then
            crawl.mpr("<lightcyan>You now have </lightcyan><yellow>" .. current_mp .. "/" ..max_mp .." mp.</yellow>")
          else
            crawl.mpr("<lightcyan>You now have </lightcyan><green>" .. current_mp .. "/" ..max_mp .." mp.</green>")
          end
        end
      end
    end

    --Set previous hp/mp and form at end of turn
    previous_hp = current_hp
    previous_mp = current_mp
    previous_form = current_form
    was_berserk_last_turn = you_are_berserk
  end

  local force_mores_XL5 = false
  function l1quidcryst4l_dynamic_force_mores()
    -- Don't care when we're grabbed early
    if you.xl() > 5 and not force_mores_XL5 then
      crawl.setopt("force_more_message += The.*grabs you[^r]")
      force_mores_XL5 = true
    end
  end

  function fmt_coords(x, y)
    local x_coord
    local y_coord

    if x > 0 then
      x_coord = x .. "E"
    elseif x == 0 then
      x_coord = "0"
    else
      x_coord = (-1 * x) .. "W"
    end

    if y > 0 then
      y_coord = y .. "S"
    elseif y == 0 then
      y_coord = "0"
    else
      y_coord = (-1 * y) .. "N"
    end

    return "x: " .. x_coord .. ", y: " .. y_coord
  end

  function color_msg(msg, color)
    return "<" .. color .. ">" .. msg .. "</" .. color .. ">"
  end

  function print_suggestion(suggestion_str)
    crawl.mpr("<yellow>SUGGESTION:</yellow> " .. suggestion_str)
  end

  function movement_strategy_reminders()
    if get_monster_threat_level() > 1 or #get_all_monsters() > 7 then
      debug_print("Monster threat high enough to look for terrain")

      local terrain_table = find_terrain_feature_in_view("stairs_up") 
      if terrain_table then
        stair_loc_str = color_msg(fmt_coords(terrain_table.x, terrain_table.y), "yellow")
        print_suggestion("Why not stairdance?! Stairs at " .. stair_loc_str .. ".")
      end

      if get_monster_threat_level() > 2 and #get_all_monsters() > 2 then
        debug_print("Monster threat high enough to look for killhole")
        local killhole = find_nearby_killhole()

        if killhole and not (killhole.x == 0 and killhole.y == 0) then
          killhole_loc_str = color_msg(fmt_coords(killhole.x, killhole.y), "yellow")
          print_suggestion("Use nearby killhole at " .. killhole_loc_str .. ".")
        else
          if killhole and (killhole.x == 0 and killhole.y == 0) then
            debug_print("In killhole already")
          else
            debug_print("No killhole found")
          end
        end
      end
    end
  end

  function try_autoequip(equip_letter, item_name)
    if you.feel_safe() then
      item = find_in_inventory(item_name)

      if not item or item.equipped then
        return
      end

      item_terse_name = item:name("plain", true)

      crawl.mpr("Autoequipping " .. item_terse_name)
      crawl.sendkeys(equip_letter .. items.index_to_letter(item.slot))
      -- crawl.mpr("Tried to equip item you don't have: " .. item_terse_name)
    else
      -- crawl.mpr("Can't equip " .. item_terse_name .. "because it's not safe. Do it yourself")
    end
  end

  function maybe_equip_early()
    if you.branch() == "D" and you.depth() < 5 and you.class() == "Fighter" then
      try_autoequip("W", "plate armour")
      if best_weapon_skill() == "Maces & Flails" then
        try_autoequip("w", "whip")
      end
    end
  end

  function ch_stop_running(kind)
    -- Runs on autoexplore stop or item pickup
    if kind == "explore_greedy" then
      maybe_equip_early()
    end
  end

  function reset_memoized_variables()
    debug_print("Resetting memoized variables.")
    reset_memoized_monster_list()
    reset_memoized_terrain_in_view()
    reset_memoized_nearby_killhole()
    clear_cached_paths()
  end

  function ready()
    reset_memoized_variables()
    just_gnats()

    -- HDA functions
    AnnounceDamage()
    SpoilerAlert()
    OpenSkills()

    movement_strategy_reminders()

    l1quidcryst4l_dynamic_force_mores()
  end

  -- == Opens skill menu == --
  -- From HDA? and my mods
  local need_skills_opened = true
  function OpenSkills()
    if you.turns() < 2 and need_skills_opened then
      if you.class() == "Fighter" then
        you.set_training_target("Maces & Flails", 12)
        you.train_skill("Maces & Flails", 2)
        you.set_training_target("Shields", 5)
        you.train_skill("Shields", 2)
        you.set_training_target("Throwing", 2)
        you.train_skill("Throwing", 1)
      end

      need_skills_opened = false
      crawl.sendkeys("m")
    end
  end

  -- == Armour/Weapon autopickup by rwbarton, enhanced by HDA with fixes from Bloaxor == --
  -- with l1quidcryst4l mods
  
  function best_weapon_skill()
    weapon_skills = {}
    weapon_skills["Short Blades"] = you.skill("Short Blades")
    weapon_skills["Long Blades"] = you.skill("Long Blades")
    weapon_skills["Axes"] = you.skill("Axes")
    weapon_skills["Maces & Flails"] = you.skill("Maces & Fails")
    weapon_skills["Polearms"] = you.skill("Polearms")
    weapon_skills["Staves"] = you.skill("Staves")
    weapon_skills["Unarmed Combat"] = you.skill("Unarmed Combat")

    local max_skill_name = next(weapon_skills)
    local max_skill_int = weapon_skills[max_skill_name]

    for k, v in pairs(weapon_skills) do
      if weapon_skills[k] > max_skill_int then
        max_skill_name, max_skill_int = k, v
      end
    end

    return max_skill_name
  end

  function find_in_inventory(item_name)
    for _, item in ipairs(items.inventory()) do
      if item.name():find(item_name) then
        return item
      end
    end

    return nil
  end

  function maybe_early_pickup(found_item_name, desired_item_name)
    local item_matches = found_item_name:find(desired_item_name)
    return item_matches and you.xl() < 5 and not find_in_inventory(desired_item_name)
  end

  local acquired_gold_dragon = false
  add_autopickup_func(function(it, name)

    -- l1quidcryst4l figher gotos
    if you.class() == "Fighter" then
      if name:find("curare") then return true end
      if name:find("silver") then return true end
      if name:find("throwing net") then return true end

      if name:find("gold dragon scales") and not acquired_gold_dragon then
        acquired_gold_dragon = true
        return true
      end

      if maybe_early_pickup(name, "whip") then return true end
      if maybe_early_pickup(name, "plate") then return true end

      if name:find("wizardry") then return false end
      if name:find("magical power") then return false end
      if name:find("amnesia") then return false end
      if name:find("brilliance") then return false end

      if name:find("stealth") then return false end
      if name:find("intelligence") then return false end

      if name:find("datura") then return false end
      if name:find("stabbing") then return false end
    end
    -- end


    local class = it.class(true)
    local armour_slots = {cloak="Cloak", helmet="Helmet", gloves="Gloves", boots="Boots", body="Armour", shield="Shield"}

    if (class:find("wand")) then
      local sub_type = it.subtype()

      -- Wands are identified on walking over now, so approach unidentified wands
      if not sub_type then return true end

      if sub_type:find("digging") then return true end
      if sub_type:find("acid") then return true end
      if sub_type:find("random effects") then return false end

      if you.skill("Evocations") > 9 then
        if sub_type:find("clouds") then return true end
        if sub_type:find("iceblast") then return true end
        if sub_type:find("paralysis") then return true end
        if sub_type:find("enslavement") then return true end
      end

      -- Pick up other wnad types if evocations is at least one third your XL 
      -- aka "Only grab other wands if you can actually meaningfully use them"
      return you.xl() < 5 or you.skill("Evocations") > (you.xl() / 3)
    end

    if (class == "jewellery") then
      local ego = it.ego()

      -- Oversimplified caster check here
      local caster = you.skill("Spellcasting") > 1

      if ego == "wizardry" then return caster end
      if ego == "magical power" then return caster end

      if ego == "stealth" then return (you.skill("Stealth") > (you.xl() / 2)) end
    end

    if (class == "armour") then
      if it.is_useless then return false end

      sub_type = it.subtype()
      equipped_item = items.equipped_at(armour_slots[sub_type])

      if (sub_type == "cloak") or (sub_type == "helmet") or (sub_type == "gloves") or (sub_type == "boots") then
        if not equipped_item then
          return true
        else
          return it.artefact or it.branded or it.ego
        end
      end

      if (sub_type == "body") then
        if equipped_item then
          local armourname = equipped_item.name()
          if equipped_item.artefact or equipped_item.branded or equipped_item.ego or (equipped_item.plus > 2) or armourname:find("dragon") or armourname:find("troll") then
            return it.artefact
          else
            return it.artefact or it.branded or it.ego
          end
        end
        return true
      end

      if (sub_type == "shield") then
        if equipped_item then
          return it.artefact or it.branded or it.ego
        end
      end
    end

    if (class == "weapon") then
      if it.is_useless then return false end

      if (you.xl() < 12) or (you.god():find("Nemelex")
        or (you.god():find("Yred"))
        or (you.god():find("Beogh"))) then
        if it.branded and not (it.name() == "club") then
          return false
        end
      end

      -- l1quidcryst4l mod: Pick up all artefacts of your best weapon skill
      if (best_weapon_skill() == it.weap_skill) then
        if (it.artefact) then return true end
      end

      -- Original copied algorithm with minor tweaks
      local weapon = items.equipped_at("Weapon")
      if weapon then
        if (weapon.branded or weapon.artefact) then return false
        else
          local weapon_name = weapon.name()
          local sb = you.skill("Short Blades")
          local lb = you.skill("Long Blades")
          local axe = you.skill("Axes")
          local mf = you.skill("Maces & Flails")
          local pole = you.skill("Polearms")
          local staff = you.skill("Staves")
          if sb > 6 then
            if name:find("quick blade") then return true end
          end
          if lb > 8 then
            if name:find("demon blade") then return true end
            if name:find("bastard sword") then return true end
            if name:find("double sword") then return true end
          end
          if lb > 14 then
            if name:find("claymore") then return true end
            if name:find("triple sword") then return true end
          end
          if axe > 8 and mf <= 8 then
            if name:find("battleaxe") then return true end
            if name:find("broad axe") then return true end
            if name:find("war axe") then return true end
            if name:find("executioner") then return true end
          end
          if axe > 18 then
            if name:find("executioner") then return true end
          end
          if mf > 8 and staff <= 8 and axe <= 8 then
            if name:find("eveningstar") then return true end
            if name:find("demon whip") then return true end
            if name:find("sacred scourge") then return true end
            if name:find("dire flail") then return true end
          end
          if mf > 14 and staff <= 14 and axe <= 14 then
            if name:find("great mace") then return true end
          end
          if pole > 8 and staff <= 8 then
            if name:find("trident") then return true end
            if name:find("demon trident") then return true end
            if name:find("trishula") then return true end
          end
          if pole > 14 and staff <= 14 then
            if name:find("glaive") then return true end
            if name:find("bardiche") then return true end
          end
          if staff > 8 then
            if name:find("lajatang") then return true end
          end
        end
      elseif (max_skill_name ~= "Unarmed Combat") then
        return true
      end
    end
  end)

  -- == HDA Mobwarning == --
  --Returns a table where the key is the monster description and value is the total number of that mob in your vision
  function getMonsterList()
    local monsters = {}
    for x = -8,8 do
      for y = -8,8 do
        m = monster.get_monster_at(x, y)
        local attitude_hostile = 0
        if m and (m:attitude() == attitude_hostile) and not (m:is_firewood()) then
          desc = m:desc()
          if (monsters[desc] == nil) then
            monsters[desc] = 1
          else
            monsters[desc] = monsters[desc] + 1
          end
        end
      end
    end
    return monsters
  end

  --Escapes the special characters in a string for pattern matching
  function escape(str)
    --Escapes parens and dash "()-"
    local escaped = str:gsub('[%(%)%-]','\\%1')
    --Removes any coloration parts of the string
    return (escaped:gsub('<[^<]*>',''))
  end

  -- Uses the getMonsterList and escape functions above
  function SpoilerAlert()
    local mobwarnings = {}
    --Add dangerous monsters to this table by using their name as the key, (as a lua pattern)
    --Set the value to the warning string you want to display, where it will formatted like:
    --"[The] Monster_Name Warning_Message"
    --If the Monster_Name includes a capital letter, the message will be prepended with [The]

    local xl = you.xl()
    local no_rP = you.res_poison() == 0
    local no_rF = you.res_fire() == 0
    local no_rC = you.res_cold() == 0
    local no_rN = you.res_draining() == 0
    local no_rE = you.res_shock() == 0
    local no_rMut = you.res_mutation() == 0
    local you_are_flying = you.flying()
    local no_see_invis = not you.see_invisible()
    local no_rCorr = not you.res_corr()
    local race = you.race()
    local form = you.transform()
    local you_are_undead = (race:find("ghoul") or race:find("vampire") or race:find("mummy") or form:find("lich"))
    --Only hide Torment for races with full, permanent immunity
    local you_perm_rTorment = (race:find("ghoul") or race:find("mummy"))

    --crawl.mpr(string.format("you.res_mutation() is: %s", you.res_mutation()))
    --crawl.mpr(string.format("no_rMut is: %s", no_rMut and "True" or "False"))

    if xl < 3 then
      if no_rP then
        mobwarnings["giant mite"] = "can poison!"
      end

      mobwarnings["ball python"] = "can constrict!"
      mobwarnings["giant cockroach"] = "is fast!"
      mobwarnings["giant gecko"] = "is fast!"
      mobwarnings["jackal"] = "is fast!"
    end

    if xl < 5 then
      if no_rP then
        mobwarnings["adder"] = "is fast and can poison!"
        mobwarnings["scorpion"] = "can poison!"
      end

      mobwarnings["worm"] = "can hit for moderate damage in melee!"
    end

    if xl < 9 then
      if no_rP then
        mobwarnings["worker ant"] = "is fast and can poison!"
      end

      if no_see_invis then
        if no_rP then
          mobwarnings["Natasha"] = "can cast Slow, Mephitic Cloud, Call Imp, and go Invisible!"
        else
          mobwarnings["Natasha"] = "can cast Slow, Call Imp, and go Invisible!"
        end
        if no_rF and no_rC then
          mobwarnings["Blork"] = "can cast Haste, Throw Frost, Throw Flame, and go Invisible!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, Throw Flame, Throw Frost, or go Invisible!"
          mobwarnings["Sigmund"] = "can cast Slow, Confuse, Throw Flame, and go Invisible!"
        elseif no_rF then
          mobwarnings["Blork"] = "can cast Haste, Throw Flame, and go Invisible!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, Throw Flame, or go Invisible!"
          mobwarnings["Sigmund"] = "can cast Slow, Confuse, Throw Flame, and go Invisible!"
        elseif no_rC then
          mobwarnings["Blork"] = "can cast Haste, Throw Frost, and go Invisible!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, Throw Frost, or go Invisible!"
          mobwarnings["Sigmund"] = "can cast Slow, Confuse, and go Invisible!"
        else
          mobwarnings["Blork"] = "can cast Haste and go Invisible!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, or go Invisible!"
          mobwarnings["Sigmund"] = "can cast Slow, Confuse, and go Invisible"
        end
      else
        if no_rP then
          mobwarnings["Natasha"] = "can cast Slow, Mephitic Cloud, and Call Imp!"
        else
          mobwarnings["Natasha"] = "can cast Slow and Call Imp!"
        end
        if no_rF and no_rC then
          mobwarnings["Blork"] = "can cast Haste, Throw Frost, and Throw Flame!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, Throw Flame, or Throw Frost!"
          mobwarnings["Sigmund"] = "can cast Slow, Confuse, and Throw Flame!"
        elseif no_rF then
          mobwarnings["Blork"] = "can cast Haste, and Throw Flame!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, or Throw Flame!"
          mobwarnings["Sigmund"] = "can cast Slow, Confuse, and Throw Flame!"
        elseif no_rC then
          mobwarnings["Blork"] = "can cast Haste and Throw Frost!"
          mobwarnings["orc wizard"] = "might cast Slow, Confuse, or Throw Frost!"
          mobwarnings["Sigmund"] = "can cast Slow and Confuse!"
        else
          mobwarnings["Blork"] = "can cast Haste!"
          mobwarnings["orc wizard"] = "might cast Slow or Confuse!"
          mobwarnings["Sigmund"] = "can cast Slow and Confuse!"
        end
      end

      mobwarnings["big kobold"] = "will probably throw things at you!"
      mobwarnings["Crazy Yiuf"] = "can hit for high damage in melee!"
      mobwarnings["Dowan"] = "can Haste Duvessa, and will become Hasted and cast Throw Icicle when Duvessa dies!"
      mobwarnings["Duvessa"] = "can hit for moderate damage in melee, and goes Berserk when Dowan dies!"
      mobwarnings["Eustachio"] = "can summon minor creatures and blink!"
      mobwarnings["gnoll"] = "can hit for moderate damage in melee, and throws nets!"
      mobwarnings["Ijyb"] = "will often zap you with wands!"
      mobwarnings["mummy"] = "can hit for moderate damage in melee!"
      mobwarnings["ogre"] = "can hit for high damage in melee!"
      mobwarnings["phantom"] = "can hit for moderate damage in melee and blinks!"
    end

    if xl < 14 then

      if no_rN then
        mobwarnings["Grinder"] = "can cast Paralyse and Pain!"
        mobwarnings["shadow imp"] = "can cast Pain and Animate Dead!"
        mobwarnings["wight"] = "can drain you in melee!"
      else
        mobwarnings["Grinder"] = "can cast Paralyse!"
        mobwarnings["shadow imp"] = "can Animate Dead!"
        mobwarnings["wight"] = "can hit for moderate damage in melee!"
      end

      if no_rC then
        mobwarnings["ice beast"] = "can hit for moderate damage in melee!"
        mobwarnings["simulacr"] = "can hit for high damage in melee!"
        mobwarnings["white imp"] = "can cast Throw Frost!"
        mobwarnings["white ugly thing"] = "is fast and can hit for high cold damage in melee!"
      else
        mobwarnings["simulacr"] = "can hit for moderate damage in melee!"
        mobwarnings["white ugly thing"] = "is fast and can hit for moderate damage in melee!"
      end

      if no_rF then
        mobwarnings["fire drake"] = "can breathe blasts of flame!"
        mobwarnings["red ugly thing"] = "is fast and can hit for high fire damage in melee!"
        mobwarnings["steam dragon"] = "breathes balls of steam!"
        if no_see_invis and no_rP then
          mobwarnings["Erica"] = "can hit for moderate fire damage in melee, can cast Venom Bolt, IMB, Confuse, Slow, go Invisible, and teleport away!"
        elseif no_rP then
          mobwarnings["Erica"] = "can hit for moderate fire damage in melee, can cast Venom Bolt, IMB, Confuse, Slow, and teleport away!"
        elseif no_see_invis then
          mobwarnings["Erica"] = "can hit for moderate fire damage in melee, can cast IMB, Confuse, Slow, go Invisible, and teleport away!"
        else
          mobwarnings["Erica"] = "can hit for moderate fire damage in melee, can cast IMB, Confuse, Slow, and teleport away!"
        end
      else
        mobwarnings["red ugly thing"] = "is fast and can hit for moderate damage in melee!"
        if no_see_invis and no_rP then
          mobwarnings["Erica"] = "can cast Venom Bolt, IMB, Confuse, Slow, go Invisible, and teleport away!"
        elseif no_rP then
          mobwarnings["Erica"] = "can cast Venom Bolt, IMB, Confuse, Slow, and teleport away!"
        elseif no_see_invis then
          mobwarnings["Erica"] = "can cast IMB, Confuse, Slow, go Invisible, and teleport away!"
        else
          mobwarnings["Erica"] = "can cast IMB, Confuse, Slow, and teleport away!"
        end
      end

      if no_rC or no_rF or no_rP then
        mobwarnings["Joseph"] = "shoots branded sling bullets!"
      end

      if no_rP then
        mobwarnings["black mamba"] = "is very fast, can hit for high damage in melee, and can poison!"
        mobwarnings["green ugly thing"] = "is fast and can hit for high poison damage in melee!"
        mobwarnings["killer bee"] = "is very fast and can poison!"
        mobwarnings["naga"] = "can constrict and spit poison!"
        mobwarnings["queen ant"] = "can berserk other ants, and can poison!"
        mobwarnings["redback"] = "is fast and can poison!"
        mobwarnings["soldier ant"] = "is fast and can poison!"
        mobwarnings["spiny frog"] = "is fast, can hit for high damage in melee, and can poison!"
        mobwarnings["swamp drake"] = "breathes Mephitic clouds!"
        mobwarnings["water moccasin"] = "is fast and can poison!"
      else
        mobwarnings["black mamba"] = "is very fast and can hit for high damage in melee!"
        mobwarnings["green ugly thing"] = "is fast and can hit for moderate damage in melee!"
        mobwarnings["killer bee"] = "is very fast!"
        mobwarnings["naga"] = "can constrict!"
        mobwarnings["queen ant"] = "can berserk other ants!"
        mobwarnings["redback"] = "is fast!"
        mobwarnings["soldier ant"] = "is fast!"
        mobwarnings["spiny frog"] = "is fast and can hit for high damage in melee!"
        mobwarnings["water moccasin"] = "is fast!"
      end

      if no_rE then
        mobwarnings["cyan ugly thing"] = "can hit for high electric damage in melee!"
        mobwarnings["electric eel"] = "can hit for high damage at range!"
      else
        mobwarnings["cyan ugly thing"] = "is fast and can hit for moderate damage in melee!"
      end

      if no_rCorr then
        mobwarnings["jelly"] = "can corrode equipment in melee!"
      end

      mobwarnings["blink frog"] = "is fast, can hit for moderate damage in melee, and blinks!"
      mobwarnings["centaur"] = "is fast and can hit for moderate damage at range!"
      mobwarnings["draconian"] = "can hit for high damage in melee!"
      mobwarnings["elephant"] = "can hit for high damage in melee, and can trample!"
      mobwarnings["gargoyle"] = "can cast Stone Arrow!"
      mobwarnings["gnoll shaman"] = "can heal itself and can heal or Haste other gnolls!"
      mobwarnings["goliath beetle"] = "can hit for high damage in melee!"
      mobwarnings["hill giant"] = "can hit for high damage in melee!"
      mobwarnings["hippogriff"] = "can hit for high damage in melee!"
      mobwarnings["Maud"] = "can hit for high damage in melee!"
      mobwarnings["orc warrior"] = "can hit for high damage!"
      mobwarnings["Pikel"] = "can hit for high damage in melee!"
      mobwarnings["Prince Ribbit"] = "is fast and can hit for high damage in melee!"
      mobwarnings["Psyche"] = "might banish you in melee!"
      mobwarnings["raven"] = "is very fast and can hit for moderate damage in melee!"
      mobwarnings["slave"] = "means Pikel is nearby!"
      mobwarnings["slime creature"] = "can hit for high damage in melee!"
      mobwarnings["small abomination"] = "might be fast and can hit for high damage in melee!"
      mobwarnings["troll"] = "can hit for high damage in melee, and regenerates quickly!"
      mobwarnings["two-headed ogre"] = "can hit for high damage in melee!"
      mobwarnings["warg"] = "is fast and can hit for moderate damage in melee!"
      mobwarnings["wolf"] = "is very fast and can hit for moderate damage in melee!"
      mobwarnings["wraith"] = "can slow you in melee!"
      mobwarnings["wyvern"] = "is fast and can hit for high damage in melee!"
      mobwarnings["yak"] = "can hit for moderate damage in melee!"
    end

    if you.xl() < 21 then
      local orcsorcwarn = ""
      local tenguconjwarn = ""

      if no_rF then
        if no_see_invis and no_rP then
          mobwarnings["Erica"] = "can cast Venom Bolt, IMB, go Invisible, and teleport away!"
        elseif no_rP then
          mobwarnings["Erica"] = "can cast Venom Bolt, IMB, and teleport away!"
        elseif no_see_invis then
          mobwarnings["Erica"] = "can cast IMB, go Invisible, and teleport away!"
        else
          mobwarnings["Erica"] = "can cast IMB and teleport away!"
        end
        mobwarnings["deep elf mage"] = "can cast Fireball and Slow!"
        mobwarnings["efreet"] = "can cast Bolt of Fire and Fireball!"
        mobwarnings["Harold"] = "can throw nets and cast Bolt of Fire!"
        mobwarnings["lindwurm"] = "has a nasty fire breath attack!"
        mobwarnings["red very ugly thing"] = "can hit for high fire damage in melee!"
        mobwarnings["salamander"] = "uses fire branded attacks!"
        orcsorcwarn = orcsorcwarn .. ", Bolt of Fire"
        tenguconjwarn = tenguconjwarn  .. ", Bolt of Magma"
      else
        if no_see_invis and no_rP then
          mobwarnings["Erica"] = "can cast Venom Bolt, IMB, go Invisible, and teleport away!"
        elseif no_rP then
          mobwarnings["Erica"] = "can cast Venom Bolt, IMB, and teleport away!"
        elseif no_see_invis then
          mobwarnings["Erica"] = "can cast IMB, go Invisible, and teleport away!"
        else
          mobwarnings["Erica"] = "can cast IMB, and teleport away!"
        end
        mobwarnings["deep elf mage"] = "can cast slow!"
        mobwarnings["Harold"] = "can throw nets!"
        mobwarnings["lindwurm"] = "can hit for high damage in melee!"
        mobwarnings["red very ugly thing"] = "can hit for high damage in melee!"
      end

      if no_rP then
        mobwarnings["green very ugly thing"] = "is fast and can hit for high poison damage in melee!"
        mobwarnings["naga mage"] = "can cast IMB and Poison Arrow, and spits poison!"
        mobwarnings["naga ritualist"] = "can give poison vulnerability, and do poison damage over time with toxic radiance!"
        mobwarnings["naga warrior"] = "can constrict you and hit for high damage in melee, and spits poison!"
        mobwarnings["redback"] = "is fast and can poison!"
        mobwarnings["Sonja"] = "shoots Curare needles and will probably banish you in melee!"
        mobwarnings["wolf spider"] = "is fast and can hit for high damage in melee, and can poison!"
        tenguconjwarn = tenguconjwarn  .. ", Venom Bolt"
      else
        mobwarnings["green very ugly thing"] = "is fast and can hit for high damage in melee!"
        mobwarnings["naga mage"] = "can cast IMB and Poison Arrow!"
        mobwarnings["naga ritualist"] = "can remove poison resistance, and do damage over time with toxic radiance!"
        mobwarnings["naga warrior"] = "can constrict you and hit for high damage in melee!"
        mobwarnings["Sonja"] = "will probably banish you in melee!"
        mobwarnings["wolf spider"] = "is fast and can hit for high damage in melee!"
      end

      if no_rE then
        mobwarnings["cyan very ugly thing"] = "is fast and can hit for high electric damage in melee!"
        mobwarnings["raiju"] = "is fast and can Lightning Bolt itself at you!"
        tenguconjwarn = tenguconjwarn  .. ", Lightning Bolt"
      else
        mobwarnings["cyan very ugly thing"] = "is fast and can hit for high damage in melee!"
        mobwarnings["raiju"] = "is fast and blinks around!"
      end

      if no_rC then
        mobwarnings["bog body"] = "can cast Slow and Bolt of Cold!"
        mobwarnings["Fannar"] = "can cast Bolt of Cold, Ozo's Refrigeration, Summon Ice Beast, and Blink!"
        mobwarnings["freezing wraith"] = "can hit for high cold damage and slow you in melee!"
        mobwarnings["simulacr"] = "can hit for high damage in melee!"
        mobwarnings["white very ugly thing"] = "is fast and can hit for high cold damage in melee!"
      else
        mobwarnings["bog body"] = "can cast Slow!"
        mobwarnings["Fannar"] = "can Blink and Summon Ice Beasts!"
        mobwarnings["freezing wraith"] = "can slow you in melee!"
        mobwarnings["white very ugly thing"] = "is fast and can hit for high damage in melee!"
      end

      if no_rN then
        orcsorcwarn = orcsorcwarn .. ", Bolt of Draining"
        mobwarnings["Nergalle"] = "can cast Bolt of Draining, Summon Spectral Orcs, Haste Other, and Death's Door!"
        if you_are_undead then
          mobwarnings["Josephine"] = "can cast Ghostly Fireball, Vampiric Draining, Animate Dead, and Dispel Undead!"
        else
          mobwarnings["Josephine"] = "can cast Ghostly Fireball, Vampiric Draining, and Animate Dead!"
        end
      else
        mobwarnings["Nergalle"] = "can Summon Spectral Orcs, cast Haste Other, and Death's Door!"
        if you_are_undead then
          mobwarnings["Josephine"] = "can cast Animate Dead, and Dispel Undead!"
        else
          mobwarnings["Josephine"] = "can cast Animate Dead!"
        end
      end

      if no_rCorr then
        mobwarnings["brown ugly thing"] = "is fas and can hit for high damage in melee, corroding equipment!"
        mobwarnings["brown very ugly thing"] = "is fast and can hit for high damage in melee, corroding equipment!"
        mobwarnings["oklob"] = "can corrode equipment at range!"
      else
        mobwarnings["brown ugly thing"] = "is fast and can hit for moderate damage in melee!"
        mobwarnings["brown very ugly thing"] = "is fast and can hit for high damage in melee!"
      end

      if no_see_invis then
        mobwarnings["Kirke"] = "can summon Monstrous Menageries, go invisible, turn you into a pig, and deflects missiles!"
        mobwarnings["Maurice"] = "can steal items, go invisible, and teleport away!"
      else
        mobwarnings["Kirke"] = "can summon Monstrous Menageries, turn you into a pig, and deflects missiles!"
        mobwarnings["Maurice"] = "can steal items, and teleport away!"
      end

      mobwarnings["anaconda"] = "is very fast and can constrict you!"
      mobwarnings["centaur warrior"] = "can hit for high damage at range!"
      mobwarnings["cyclops"] = "can throw large rocks!"
      mobwarnings["death yak"] = "can hit for high damage in melee!"
      mobwarnings["dire elephant"] = "can hit for high damage in melee, and can trample!"
      mobwarnings["enormous slime creature"] = "can hit for high damage in melee!"
      mobwarnings["Erolcha"] = "might cast banishment, paralyse, or LCS!"
      mobwarnings["firefly"] = "is very fast, can hit for moderate damage, and flashes a warning beacon!"
      mobwarnings["harpy"] = "is very fast and can hit for high damage in melee!"
      mobwarnings["hydra"] = "can hit for high damage in melee!"
      mobwarnings["kobold demonologist"] = "can summon minor demons!"
      mobwarnings["komodo dragon"] = "can hit for high damage in melee!"
      mobwarnings["large abomination"] = "might be fast and can hit for high damage in melee!"
      mobwarnings["large slime creature"] = "can hit for high damage in melee!"
      mobwarnings["manticore"] = "can hit for high damage at range, and Barbs causes damage when you move!"
      mobwarnings["naga sharpshooter"] = "can shoot you with portal projectiles!"
      mobwarnings["orc knight"] = "can hit for high damage!"
      mobwarnings["orc sorcerer"] = "can cast Paralyse, Summon Demon, Animate Dead"..orcsorcwarn.."!"
      mobwarnings["purple ugly thing"] = "can hit for high damage in melee!"
      mobwarnings["skeletal warrior "] = "can hit for high damage in melee!"
      mobwarnings["Snorg"] = "can berserk and hit for high damage!"
      mobwarnings["spriggan"] = "is very fast and can hit for moderate damage!"
      mobwarnings["tarantella"] = "is fast and can cause confusion in melee!"
      mobwarnings["tengu conjurer"] = "is fast and can cast Force Lance, IMB"..tenguconjwarn.."!"
      mobwarnings["tengu warrior"] = "is fast and can hit for high damage in melee!"
      mobwarnings["thorn lotus"] = "can hit for high damage at range!"
    end

    if you.xl() < 27 then
      local tengureaverwarn = ""

      if no_rF then
        mobwarnings["fire dragon"] = "has a nasty fire breath attack!"
        mobwarnings["fire giant"] = "can cast Fireball and Bolt of Fire!"
        mobwarnings["flaming corpse"] = "is fast, can cause sticky flames in melee!"
        mobwarnings["mottled draconian"] = "can spit sticky flames at range!"
        mobwarnings["red very ugly thing"] = "is fast, can cause sticky flames in melee!"
        mobwarnings["salamander firebrand"] = "is fast and melee attacks will surround you with flame clouds!"
        mobwarnings["salamander mystic"] = "can haste allies, and casts Bolt of Magma and IMB!"
        tengureaverwarn = tengureaverwarn .. ", can cast Bolt of Magma, Fireball"
      else
        mobwarnings["fire dragon"] = "can hit for high damage in melee!"
        mobwarnings["fire giant"] = "can hit for high damage in melee!"
        mobwarnings["flaming corpse"] = "is fast!"
        mobwarnings["red very ugly thing"] = "is fast!"
        mobwarnings["salamander firebrand"] = "is fast and melee attacks will surround you with flame clouds!"
        mobwarnings["salamander mystic"] = "can haste allies and casts IMB!"
      end

      if no_rC then
        mobwarnings["frost giant"] = "can cast Bolt of Cold!"
        mobwarnings["ice dragon"] = "has a nasty cold breath attack!"
        tengureaverwarn = tengureaverwarn .. ", can cast Freezing Cloud"
      else
        mobwarnings["frost giant"] = "can hit for high damage in melee!"
        mobwarnings["ice dragon"] = "can hit for high damage in melee!"
      end

      if no_rN then
        mobwarnings["eidolon"] = "can cast Bolt of Draining and Fear!"
      else
        mobwarnings["eidolon"] = "can cast Fear!"
      end

      if no_rE then
        tengureaverwarn = tengureaverwarn .. ", can cast Lightning Bolt"
      end

      if no_rP then
        mobwarnings["Aizul"] = "is very fast and casts Sleep, Poison Arrow, and Venom Bolt!"
        mobwarnings["greater naga"] = "is strong in melee, and casts Venom Bolt, Poison Arrow, IMB, and spits poison!"
      else
        mobwarnings["Aizul"] = "is very fast and casts Sleep and Poison Arrow!"
        mobwarnings["greater naga"] = "is strong in melee, and can cast Poison Arrow and IMB!"
      end

      if no_see_invis then
        mobwarnings["wizard"] = "might cast banishment, paralyse, LCS, or go Invisible!"
        if no_rN then
          if no_rC and no_rF then
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, Bolt of Fire, Bolt of Cold, or go Invisible!"
          elseif no_rF then
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, Bolt of Fire, or go Invisible!"
          elseif no_rC then
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, Bolt of Cold, or go Invisible!"
          else
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, or go Invisible!"
          end
        end
      else
        mobwarnings["wizard"] = "might cast banishment, paralyse, or LCS!"
        if no_rN then
          if no_rC and no_rF then
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, Bolt of Fire, or Bolt of Cold!"
          elseif no_rF then
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, or Bolt of Fire!"
          elseif no_rC then
            mobwarnings["necromancer"] = "can cast Agony, Animate Dead, or Bolt of Cold!"
          else
            mobwarnings["necromancer"] = "can cast Agony and Animate Dead!"
          end
        end
      end

      mobwarnings["deep troll earth mage"] = "can cast LRD and dig!"
      mobwarnings["ettin"] = "can hit for very high damage in melee!"
      mobwarnings["great orb of eyes"] = "can cast paralyse, disintegrate, slow, confuse, and teleport you!"
      mobwarnings["ironheart preserver"] = "can absorb the damage of its allies and heal itself!"
      mobwarnings["Lernaean hydra"] = "don't fight it in melee! Just don't!"
      mobwarnings["Louise"] = "can cast banishment!"
      mobwarnings["minotaur"] = "can hit for very high damage!"
      mobwarnings["ogre mage"] = "might cast banishment, paralyse, or LCS!"
      mobwarnings["orc warlord"] = "can hit for high damage!"
      mobwarnings["purple draconian"] = "can dispel your buffs!"
      mobwarnings["purple very ugly thing"] = "is fast and can cause rotting in melee!"
      mobwarnings["Rupert"] = "can paralyse you in fear!"
      mobwarnings["stone giant"] = "throws large rocks and can hit for very high damage!"
      mobwarnings["tengu reaver"] = "is fast"..tengureaverwarn.."!"
      mobwarnings["titanic slime creature"] = "can hit for high damage in melee!"
      mobwarnings["vampire knight"] = "can cast paralyse!"
      mobwarnings["vampire mage"] = "can Summon Undead and Animate Dead!"
      mobwarnings["Vashnia"] = "can blink herself and allies away!"
      mobwarnings["vault sentinel"] = "can mark you and blow a signal horn!"
      mobwarnings["vault warden"] = "can lock down doors and staircases!"
      mobwarnings["water nymph"] = "can create water, teleport to other water, and Waterstrike you!"
      mobwarnings["Wiglaf"] = "can cast might and haste on himself!"
      mobwarnings["yaktaur"] = "can hit for high damage at range!"
    end

    if no_rP then
      mobwarnings["red wasp"] = "is very fast and can Paralyse and poison in melee!"
      mobwarnings["yellow wasp"] = "is very fast and can Slow and poison in melee!"
    else
      mobwarnings["red wasp"] = "is very fast and can Slow in melee!"
    end

    if no_rF then
      mobwarnings["deep elf mage"] = "can cast fireball and slow!"
      mobwarnings["fire dragon"] = "has a nasty fire breath attack!"
      mobwarnings["fire giant"] = "can cast fireball and bolt of fire!"
      mobwarnings["merfolk aquamancer"] = "can cast Primal Wave, Steam Ball, Throw Icicle, and Blink!"
    else
      mobwarnings["merfolk aquamancer"] = "can cast Primal Wave, Throw Icicle, and Blink!"
    end

    if no_rN then
      mobwarnings["shadow dragon"] = "has a nasty draining breath attack!"
    end

    mobwarnings["electric golem"] = "is fast, has electric attacks, and blinks!"
    mobwarnings["Nikola"] = "casts Lightning Bolt, Chain Lightning and blinks!"
    mobwarnings["shock serpent"] = "is fast, casts Bolt of Lightning, does electric damage, and causes electric damage when injured!"
    mobwarnings["Sojobo"] = "is fast and can cast Airstrike and Lightning Bolt!"
    mobwarnings["storm dragon"] = "can hit for high damage in melee and has a nasty electric breath attack!"
    mobwarnings["titan"] = "can cast Lightning Bolt and Airstrike!"
    local electricwarning = ""
    if no_rE then
      electricwarning = "<red> You are not wearing rElec!</red>"
      mobwarnings["electric golem"] = mobwarnings["electric golem"] .. electricwarning
      mobwarnings["Nikola"] = mobwarnings["Nikola"] .. electricwarning
      mobwarnings["shock serpent"] = mobwarnings["shock serpent"] .. electricwarning
      mobwarnings["Sojobo"] = mobwarnings["Sojobo"] .. electricwarning
      mobwarnings["storm dragon"] = mobwarnings["storm dragon"] .. electricwarning
      mobwarnings["titan"] = mobwarnings["titan"] .. electricwarning
    end

    mobwarnings["giant orange brain"] = "can cast Shadow Creatures, and drain your Int!"
    mobwarnings["neqoxec"] = "can mutate you, and drain your Int!"
    mobwarnings["Norris"] = "can cast Paralyse, Smite you, and drain your Int!"
    mobwarnings["orange crystal statue"] = "can cast Confuse, Drain MP, and drain your Int!"
    if no_Sustab then
      local statdrainwarning = "<red> You are not wearing SustAb!</red>"
      mobwarnings["brain worm"] = "can drain your Int!" .. statdrainwarning
      mobwarnings["giant orange brain"] = mobwarnings["giant orange brain"] .. statdrainwarning
      mobwarnings["neqoxec"] = mobwarnings["neqoxec"] .. statdrainwarning
      mobwarnings["Norris"] = mobwarnings["Norris"] .. statdrainwarning
      mobwarnings["orange crystal statue"] = mobwarnings["orange crystal statue"] .. statdrainwarning
    end

    mobwarnings["cacodemon"] = "can cast Energy bolts, Dig, and mutate you!"
    mobwarnings["orb of fire"] = "can cast Fireball and Bolt of Fire, and mutate you!"
    if no_rMut then
      local mutationwarning = "<red> You are not wearing rMut!</red>"
      mobwarnings["cacodemon"] = mobwarnings["cacodemon"] .. mutationwarning
      mobwarnings["neqoxec"] = mobwarnings["neqoxec"] .. mutationwarning
      mobwarnings["orb of fire"] = mobwarnings["orb of fire"] ..mutationwarning
      mobwarnings["pulsating lump"] = "can mutate you in melee!" .. mutationwarning
      mobwarnings["shining eye"] = "can temporarily mutate you!" .. mutationwarning
    end

    local gdwarn = "can hit for high damage in melee"
    local alichwarn = ""
    if (no_rF or no_rP or no_rC or no_rN or no_see_invis) then
      if no_rF then
        gdwarn = gdwarn .. ", breathe Bolts of Fire"
        alichwarn = alichwarn .. ", cast Bolt of Fire"
      end
      if no_rC then
        gdwarn = gdwarn .. ", breathe freezing blasts"
        alichwarn = alichwarn .. ", cast Bolt of Cold"
      end
      if no_rN then
        alichwarn = alichwarn .. ", cast Bolt of Draining"
      end
      if no_rP then
        gdwarn = gdwarn .. ", breathe poison clouds"
      end
      if no_see_invis then
        alichwarn = alichwarn .. ", or go Invisible"
      end
    end

    mobwarnings["ancient lich"] = "might cast Banishment, Paralyse, SGD, IOOD, or LCS" .. alichwarn .. "!"
    mobwarnings["golden dragon"] = gdwarn .. "!"
    mobwarnings["lich"] = "might cast Banishment, Paralyse, Summon Demon, IOOD, or LCS!"

    if no_rF then
      mobwarnings["Xtahua"] = "does high damage in melee and has a nasty fire breath attack"
    else
      mobwarnings["Xtahua"] = "does high damage in melee!"
    end

    mobwarnings["air mage"] = "can cast Airstrike!"
    mobwarnings["blizzard demon"] = "can cast Airstrike!"
    mobwarnings["Gastronok"] = "can cast Airstrike!"
    mobwarnings["wind drake"] = "can cast Airstrike and push you away!"
    if you_are_flying then
      local flightwarning = " <lightred>YOU ARE IN FLIGHT VS. AIRSTRIKE!!!</lightred>"
      mobwarnings["air mage"] = mobwarnings["air mage"] .. flightwarning
      mobwarnings["blizzard demon"] = mobwarnings["blizzard demon"]..flightwarning
      mobwarnings["Gastronok"] = mobwarnings["Gastronok"]..flightwarning
      mobwarnings["Sojobo"] = mobwarnings["Sojobo"]..flightwarning
      mobwarnings["titan"] = mobwarnings["titan"]..flightwarning
      mobwarnings["wind drake"] = mobwarnings["wind drake"]..flightwarning
    end

    if no_see_invis then
      mobwarnings["boggart"] = "can cast Shadow Creatures and go Invisible!"
    else
      mobwarnings["boggart"] = "can cast Shadow Creatures!"
    end

    if no_rCorr then
      mobwarnings["yellow draconian"] = "can corrode your equipment at range!"
    end

    if no_rP and no_rE then
      mobwarnings["draconian annihilator"] = "can cast LCS, Poison Arrow, Lightning Bolt, and Iron Shot!"
    elseif no_rP then
      mobwarnings["draconian annihilator"] = "can cast LCS, Poison Arrow, and Iron Shot!"
    elseif no_rE then
      mobwarnings["draconian annihilator"] = "can cast LCS, Lightning Bolt, and Iron Shot!"
    else
      mobwarnings["draconian annihilator"] = "can cast Lehudib's Crystal Spear or Iron Shot!"
    end

    if you_perm_rTorment then
      mobwarnings["Brimstone Fiend"] = "can cast line-of-sight Hellfire!"
      mobwarnings["curse skull"] = "can cast Summon Undead!"
      mobwarnings["curse toe"] = "can cast Summon Fungus!"
      mobwarnings["Ereshkigal"] = "can cast Paralyse!"
      mobwarnings["greater mummy"] = "can smite you!"
      mobwarnings["Khufu"] = "can smite you!"
      mobwarnings["mummy priest"] = "can smite you!"
      mobwarnings["Shadow Fiend"] = "can cast Dispel Undead!"
    else
      mobwarnings["Brimstone Fiend"] = "can cast Torment and line-of-sight Hellfire!"
      mobwarnings["curse skull"] = "can cast Torment and Summon Undead!"
      mobwarnings["curse toe"] = "can cast Torment and Summon Fungus!"
      mobwarnings["Ereshkigal"] = "can cast Torment and Paralyse!"
      mobwarnings["Gloorx Vloq"] = "can cast Torment!"
      mobwarnings["greater mummy"] = "can cast Torment and smite you!"
      mobwarnings["Ice Fiend"] = "can cast Torment!"
      mobwarnings["Khufu"] = "can cast Torment and smite you!"
      mobwarnings["Menkaure"] = "can cast Torment!"
      mobwarnings["mummy priest"] = "can cast Torment and smite you!"
      mobwarnings["Shadow Fiend"] = "can cast Torment and Dispel Undead!"
      mobwarnings["tormentor"] = "can cast Torment!"
    end

    mobwarnings["apocalypse crab"] = "is fast and has a chaos cloud breath attack!"
    mobwarnings["Arachne"] = "can ensnare you in her webs!"
    mobwarnings["Asmodeus"] = "can cast line-of-sight Hellfire and Summon Greater Demons!"
    mobwarnings["Azrael"] = "can cast smite-targeted Hellfire!"
    mobwarnings["balrug"] = "can smite you, and cast fireball!"
    mobwarnings["black sun"] = "can give allies a dangerous black mark which gives melee effects!"
    mobwarnings["blood saint"] = "can cast LCS and other Legendary Destruction!"
    mobwarnings["catoblepas"] = "can petrify you with its breath!"
    mobwarnings["Cerebov"] = "can cast Fire Storm, Iron Shot, and Summon Greater Demons!"
    mobwarnings["chaos champion"] = "can dispel buffs, entrap you, and other chaotic effects!"
    mobwarnings["corrupter"] = "can summon allies from various branches!"
    mobwarnings["daeva"] = "can smite you!"
    mobwarnings["deep elf annihilator"] = "can cast Lehudib's Crystal Spear or Iron Shot!"
    mobwarnings["deep elf demonologist"] = "can cast banishment or summon Greater Demons!"
    mobwarnings["deep elf high priest"] = "can cast smite-targeted Hellfire or smite you!"
    mobwarnings["deep elf priest"] = "can smite you!"
    mobwarnings["deep elf sorcerer"] = "can cast banishment or line-of-sight Hellfire!"
    mobwarnings["deep troll shaman"] = "can cast haste and might on allies!"
    mobwarnings["Dispater"] = "can cast line-of-sight Hellfire, Iron Shot, and summon Greater Demons!"
    mobwarnings["draconian caller"] = "can summon Dragons and Death Drakes!"
    mobwarnings["draconian scorcher"] = "can cast smite-targeted Hellfire!"
    mobwarnings["draconian shifter"] = "can block teleports, blink allies encircling you, or cause you to blink!"
    mobwarnings["draconian zealot"] = "can cast smite-targeted Hellfire or smite you!"
    mobwarnings["Enchantress"] = "is very fast and can cast Dimension Anchor, Slow, Haste, Mass Confusion, and Strip Resistance!"
    mobwarnings["eye of draining"] = "will drain your Magic!"
    mobwarnings["flayed ghost"] = "can Flay you to shreds!"
    mobwarnings["Frances"] = "can smite you!"
    mobwarnings["Frederick"] = "can cast Iron Shot!"
    mobwarnings["ghost moth"] = "will drain your Magic!"
    mobwarnings["giant eyeball"] = "can paralyse you!"
    mobwarnings["golden eyeball"] = "can confuse you!"
    mobwarnings["guardian serpent"] = "can blink allies encircling you!"
    mobwarnings["Hell Sentinel"] = "can cast line-of-sight Hellfire and Iron Shot!"
    mobwarnings["hellion"] = "can cast smite-targeted Hellfire!"
    mobwarnings["Ignacio"] = "can cast Agony!"
    mobwarnings["ironbrand convoker"] = "can recall allies and cast might on them!"
    mobwarnings["Jorgrun"] = "can cast petrify and shatter!"
    mobwarnings["Jory"] = "can mesmerise, cast LCS and blink close!"
    mobwarnings["jumping spider"] = "is fast and can ensnare you in webs!"
    mobwarnings["mana viper"] = "is fast and has an antimagic bite!"
    mobwarnings["Mennas"] = "can cast silence and confuse!"
    mobwarnings["Mnoleg"] = "cast Summon Eyes and smite you!"
    mobwarnings["moth of wrath"] = "is fast and can enrage both enemies and you!"
    mobwarnings["octopode crusher"] = "can cast Iron Shot and throw you in melee!"
    mobwarnings["orb spider"] = "is fast and can cast Orb of Destruction!"
    mobwarnings["orc high priest"] = "can smite you!"
    mobwarnings["orc priest"] = "can smite you!"
    mobwarnings["phantasmal warrior"] = "can bypass armour and shields, and lowers MR!"
    mobwarnings["quicksilver dragon"] = "can dispel your buffs!"
    mobwarnings["rakshasa"] = "can cast IMB, Phantom Mirror, duplicating itself and allies, and blinks!"
    mobwarnings["Roxanne"] = "can cast LCS and Iron Shot at you, or shift your position!"
    mobwarnings["shadow demon"] = "can cast Shadow Creatures!"
    mobwarnings["smoke demon"] = "can smite you, and cast ranged sticky flame!"
    mobwarnings["sphinx"] = "can cast paralyse, slow, confuse, and smite you!"
    mobwarnings["spriggan druid"] = "is very fast, can awaken trees, recall animals, and cast Stone Arrow!"
    mobwarnings["starcursed mass"] = "can smite you!"
    mobwarnings["tentacled monstrosity"] = "has dangerous constriction in melee!"
    mobwarnings["thorn hunter"] = "can throw a nasty volley of thorns, and create brambles!"
    mobwarnings["warmonger"] = "can sap your magic and summon a grand avatar!"
    mobwarnings["ynoxinul"] = "can cast Iron Shot!"

    -- Holds the overall alert message and count of dangers
    local alerts = ""
    local short_alert = " "
    local total_dangers = 0
    -- For each type of monster you can see, using getMonsterList()
    -- This goes through each monster in the mobwarnings table above and
    -- Checks to see if it matches the description of each mob in sight
    -- Excluding forms that can't cast: zombie, skeleton, simulcrum, but not incapacitated forms
    for mons, count in pairs(getMonsterList()) do
      for mob, message in pairs(mobwarnings) do
        if string.find(mons, mob)
          and not string.find(mons, "zombie")
          and not string.find(mons, "skeleton")
          and not string.find(mons, "shaped block of ice")
          and not string.find(mons, "spectral")
          and not (string.find(mons, "simulacr") and mob ~= "simulacr")
          and not (string.find(mons, "orc") and mob == "wizard")
          and not (string.find(mons, "ancient lich") and mob == "lich")
          and not (string.find(mons, "death yak") and mob == "yak")
          and not (string.find(mons, "gnoll shaman") and mob == "gnoll")
          and not (string.find(mons, "gnoll captain") and mob == "gnoll")
          and not (string.find(mons, "mottled draconian") and mob == "mottled")
          and not (string.find(mons, "dire elephant") and mob == "elephant")
          and not (string.find(mons, "elephant slug") and mob == "elephant")
          and not (string.find(mons, "salamander mystic") and mob == "salamander")
          and not (string.find(mons, "Josephine") and mob == "Joseph") then
          --Used to format the string for Unique/Named mobs
          local is_fiend = (string.find(mons, "Fiend") ~= nil)
          local is_uppercase = (string.find(mons, "%u") ~= nil)
          local is_unique = is_uppercase and not is_fiend
          --Holds this mobs alert message
          local alert = ""
          local mob_name = ""
          --Formatting for uniques
          if is_unique then
            alert = "<cyan>" .. mons .. "</cyan> " .. message
            mob_name = mons
            --For more than 1 of the same monster
          elseif (count > 1) then
            alert = "The <cyan>".. mons .. "</cyan> " .. message .. " x" .. count
            mob_name = mons .. " x" .. count
            --For a single non-unique monster
          else
            alert = "The <cyan>" .. mons .. "</cyan> " .. message
            mob_name = mons
          end
          --Keeps a count of all the found matches
          total_dangers = total_dangers + count
          --Adds the created alert string to the full string of alerts
          alerts = alerts .. " " .. alert
          short_alert = short_alert .. mob_name .. ", "
        end
      end
    end

    short_alert = string.sub(short_alert, 1, -3) .. "!"

    --If there is an alert and it was not displayed in the last six messages then display the warning
    if not ((alerts == "")
      or string.find(crawl.messages(6), escape(alerts))) then
      --For a single monster
      if total_dangers == 1 then
        crawl.mpr("<lightgrey>Spoiler Alert:" .. alerts .. "</lightgrey>")
        --For 2 or 3
      elseif total_dangers < 4 then
        crawl.mpr("<yellow>Warning x"..total_dangers .. ":" .. alerts .. "</yellow>")
        --For 4 to 7
      elseif total_dangers < 8 and (not string.find(crawl.messages(6), escape(short_alert))) then
        crawl.mpr("<lightred>Danger x" ..total_dangers .. ":" .. short_alert .. "</lightred>")
        --For 8 or more
      elseif not string.find(crawl.messages(6), escape(short_alert)) then
        crawl.mpr("<red>PANIC x" ..total_dangers .. ":" .. short_alert .. "</red>")
      end
    end
  end
}


##################
# Character Dump #
##################

dump_item_origins = all
dump_item_origin_price = 100
dump_message_count = 100
#dump_order = header,hiscore,stats,misc,mutations,skills,spells,overview,inventory
#dump_order += screenshot,monlist,messages,action_counts,vaults,notes,kills
dump_order += vaults, turns_by_place, kills_by_place
dump_book_spells = false
ood_interesting = 6
note_hp_percent = 25
note_all_skill_levels = true
note_xom_effects = true
note_items += of Zot,rod,acquirement
note_messages += Your scales start
note_messages += protects you from harm
note_messages += You fall through a shaft
note_messages += [bB]anish.*Abyss
note_monsters += orb of fire,silver star,pearl dragon,ancient lich
