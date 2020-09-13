function onSay(player, words, param, channel)
local petUid = player:getPetUid()
    if petUid == PETS.CONSTANS.STATUS_OK then
        player:summonPet( player:getPosition() )

    elseif petUid == PETS.CONSTANS.STATUS_DOESNT_EXIST then
        player:petSystemMessage("You don't have a pet.")
        
    elseif petUid == PETS.CONSTANS.STATUS_DEAD then
        player:petSystemMessage("Your pet is dead.")
        
    elseif petUid == PETS.CONSTANS.STATUS_MOUNT then
        player:petSystemMessage("Your pet is a mount.")
        player:setPetUid(PETS.CONSTANS.OK)
    end
end