local addonName, addon = ...
addon.spellBars = addon.spellBars ~= nil and addon.spellBars or {}

-- Public Functions

function addon.spellBars.initialize(settings)
	addon.spellBars.loadSettings(settings)
	if settings == nil then return end
	
	addon.spellBars.initializeBars()
	return true
end

function addon.spellBars.showSpell(barKey, spellInfo)
	bar = addon.spellBars.getBar(barKey)
	return addon.spellBars.addSpellToQueue(bar, spellInfo)
end

function addon.spellBars.removeSpell(barKey, spellKey)
	bar = addon.spellBars.getBar(barKey)
	return addon.spellBars.removeSpellFromQueue(bar, spellKey)
end