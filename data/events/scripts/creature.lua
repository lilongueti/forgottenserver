function Creature:onChangeOutfit(outfit)
	return true
end

function Creature:onAreaCombat(tile, isAggressive)
	return RETURNVALUE_NOERROR
end




function Creature:onTargetCombat(target)
	return RETURNVALUE_NOERROR
end

function Creature:onHear(speaker, words, type)
end

function Creature:onTargetCombat(target)

    if PETS and PETS.SYSTEM.DUELS_ONLY then
        if self:isPet() and target:isPlayer() then
            return false
        end
    end
    return true
end
