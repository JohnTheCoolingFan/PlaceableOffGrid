# Short about #
PlaceableOffGrid is mod that allows you to place any entity (conveyors, assemblers, inserters, pipes, etc.) not only on the grid. It breaks some graphics (like conveyor belts.) but still fun and, maybe, hardcore.
[How to enable grid](https://www.reddit.com/r/factorio/comments/2dfbbw/tip_how_to_toggle_the_display_grid_onoff/)
![Alt text](https://i.imgur.com/MIx8PPm.png)

# Long about
## Transport belts #
On a screenshot below, you can see how belts looks like with this mod (placed by hand)
![Alt text](https://i.imgur.com/XJK98UB.png)
They are still working well, because belt that moves items and belt-the-entity is a separate objects. Entity have cycled animation, hitboxes, etc. but Item-moving are always tied to the grid and moves items. Entity is just graphics.

### Linking #
Item-moving parts need to be “linked” with each other to move items to the next segment of belt. When entity placement tied to grid, parts link automatically. But with PlaceableOffGrid you need to do this “by hand”.
On the next images you can see belts when placing them:
Not linked: ![Alt text](https://i.imgur.com/EBMFX2c.png)
Linked: ![Alt text](https://i.imgur.com/43VdCBf.png)
Also linked, but distance are shorter: ![Alt text](https://i.imgur.com/EQU7w9A.png)
Same with splitters: ![Alt text](https://i.imgur.com/UX7Bmom.png)

### Underground belts #
While placing underground belt, you can see "link line" connecting output and input.
![Alt text](https://i.imgur.com/ZJCZwWl.png)
Remember, it's just a graphics (and collision).
![Alt text](https://i.imgur.com/UtdMkz8.png)
We can also place second underground belt output, so we have 1 input and 2 outputs, but item-moving part still the same (just a preview, I tested this).
![Alt text](https://i.imgur.com/co90b1n.png)

## Pipes #
Same thing with pipes:
Linked: ![Alt text](https://i.imgur.com/QsuQLss.png)
Not linked: ![Alt text](https://i.imgur.com/TbCR9wh.png)
Grid-look (Shift+Space): ![Alt text](https://i.imgur.com/E3z3YHP.png)

## Rails #
Rails have a bit of differences with belts and pipes. Rails have their own, more precise work logic and grid (nut placeable-off-grid flag still work). Rail planned places rails by grid, but if you place rails by hand, you need to be very precise.
![Alt text](https://i.imgur.com/ZfKEyPD.png)
![Alt text](https://i.imgur.com/mUacd1V.png)
And this is what you get if you hold LMB and run at the east:
![Alt text](https://i.imgur.com/Sv3z6b6.png)
You can't place any of train parts there:
![Alt text](https://i.imgur.com/wgbumOq.png)

Did you ever knew that rails have two rail-grids? Every lane built with rail planner:
![Alt text](https://i.imgur.com/jaq1Yal.png)

Train signals and stations have placeable-off-grid flag too:
![Alt text](https://i.imgur.com/nnV66ft.png)
I tested stopping position with stations:
![Alt text](https://i.imgur.com/4VCsj6H.png)

## Heat pipes #
Heat pipes are working like fluid pipes.
![Alt text](https://i.imgur.com/SiWzZer.png)

# Settings #
Starting from 0.1.3 you can edit which prototype-types will be affected by Placeable-off-grid:
![Alt text](https://i.imgur.com/OCp5a7x.png)

# Useful tools #
Snapper to grid tool added in 0.1.4. It turns this: ![Alt text](https://i.imgur.com/eAwVbJo.png) into this: ![Alt text](https://i.imgur.com/1tUHH9t.png)
But it don't affect on belts, pipes, rails, etc.

# Various screenshots: #
## Cheat-pole #
Generators are connected
![Alt text](https://i.imgur.com/Sy30Cje.png)
## Map bug #
![Alt text](https://i.imgur.com/way96sn.png)
## "Squeak through" #
Generators are connected
![Alt text](https://i.imgur.com/B9GVEUz.png)
## :D #
![Alt text](https://i.imgur.com/n9hdn8D.png)
## Lab complex #
![Alt text](https://i.imgur.com/ceYq1DQ.png)

# Other my mods:

*   [Random Factorio Things](https://mods.factorio.com/mods/John_TheCF/RandomFactorioThings)
*   [No Artillery Map Reveal mod](https://mods.factorio.com/mods/John_TheCF/NoArtilleryMapReveal)
*   [Placeable-off-grid](https://mods.factorio.com/mod/PlaceableOffGrid)

[Join my Discord server](https://discord.gg/grHVhE2)
