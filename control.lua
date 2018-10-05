script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	local phraseNumber = math.random(5)
	player.print({"", "[PlaceableOffGrid]", {"phrases.greeting-"..phraseNumber}})
end)