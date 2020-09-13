local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)              npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)           npcHandler:onCreatureDisappear(cid)         end
function onCreatureSay(cid, type, msg)      npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                          npcHandler:onThink()                        end

local node1 = keywordHandler:addKeyword({'pet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'I can give you a dog or a cat pet'})
	node1:addChildKeyword({'dog'}, StdModule.darPetStarter, {npcHandler = npcHandler, onlyFocus = true, text = 'Congratulations! Open pet channel to summon your pet.', reset = true})
	node1:addChildKeyword({'cat'}, StdModule.darPetStarter, {npcHandler = npcHandler, onlyFocus = true, text = 'Congratulations! Open pet channel to summon your pet.', reset = true})
	node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then, come back when you are ready.', reset = true})

npcHandler:addModule(FocusModule:new())
