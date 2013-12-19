# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Spell.delete_all
Sequence.delete_all

dispel_magic = Spell.create({name: "Dispel Magic",
      description: "Globally removes all spell effects, prevents other spells, and places a shield on the target",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 1,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: dispel_magic.id, sequence: "cDPW"})

counter_spell = Spell.create({name: "Counter Spell",
      description: "Prevents all spells except for finger of death and acts as a shield for the target",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 2,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: counter_spell.id, sequence: "WPP"})
Sequence.create({spell_id: counter_spell.id, sequence: "WWS"})

magic_mirror = Spell.create({name: "Magic Mirror",
      description: "Reflects single target spells at the caster",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 3,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: magic_mirror.id, sequence: "cw"})

summon_goblin = Spell.create({name: "Summon Goblin",
      description: "Summons a goblin with 1 HP that does 1 point of damage on an attack each turn",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 4,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_goblin.id, sequence: "SFW"})

summon_ogre = Spell.create({name: "Summon Ogre",
      description: "Summons an ogre with 2 HP that does 2 points of damage on an attack each turn",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 5,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_ogre.id, sequence: "PSFW"})

summon_troll = Spell.create({name: "Summon Troll",
      description: "Summons a troll with 3 HP that does 3 points of damage on an attack each turn",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 6,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_troll.id, sequence: "FPSFW"})

summon_giant = Spell.create({name: "Summon Giant",
      description: "Summons a giant with 4 HP that does 4 points of damage on an attack each turn",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 7,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_giant.id, sequence: "WFPSFW"})

summon_fire_elemental = Spell.create({name: "Summon Fire Elemental",
      description: "Summons a fire elemental with 3 HP that does 3 points of fire damage to everyone each turn",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: false,
      priority: 8,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_fire_elemental.id, sequence: "cWSSW"})

summon_ice_elemental = Spell.create({name: "Summon Ice Elemental",
      description: "Summons an ice elemental with 3 HP that does 3 points of cold damage to everyone each turn",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: false,
      priority: 9,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_ice_elemental.id, sequence: "cSWWS"})

haste = Spell.create({name: "Haste",
      description: "Grants the player an additional move each turn for 3 turns",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 10,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: haste.id, sequence: "PWPWWc"})

time_stop = Spell.create({name: "Time Stop",
      description: "Grants the player an additional turn",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 11,
      is_enchantment: false,
      duration: 1,
      damage: 0})
Sequence.create({spell_id: time_stop.id, sequence: "SPPc"})
Sequence.create({spell_id: time_stop.id, sequence: "SPPFD"})

protection = Spell.create({name: "Protection",
      description: "Shields the player for 3 turns",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 12,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: protection.id, sequence: "WWP"})

resist_heat = Spell.create({name: "Resist Heat",
      description: "Protects the player from heat permenently",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 13,
      is_enchantment: false,
      duration: -1,
      damage: 0})
Sequence.create({spell_id: resist_heat.id, sequence: "WWFP"})

resist_cold = Spell.create({name: "Resist Cold",
      description: "Protects the player from cold permenently",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 14,
      is_enchantment: false,
      duration: -1,
      damage: 0})
Sequence.create({spell_id: resist_cold.id, sequence: "SSFP"})

paralysis = Spell.create({name: "Paralysis",
      description: "Paralyzes a hand, forcing it into a gesture based on a previous gesture",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 15,
      is_enchantment: true,
      duration: 1,
      damage: 0})
Sequence.create({spell_id: paralysis.id, sequence: "FFF"})

amnesia = Spell.create({name: "Amnesia",
      description: "The player repeats the gestures made in the previous round",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 16,
      is_enchantment: true,
      duration: 1,
      damage: 0})
Sequence.create({spell_id: amnesia.id, sequence: "DPP"})

fear = Spell.create({name: "Fear",
      description: "The player can't use the C/F/D/S gestures on the next turn",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 17,
      is_enchantment: true,
      duration: 1,
      damage: 0})
Sequence.create({spell_id: fear.id, sequence: "SWD"})


maladroit = Spell.create({name: "Maladroitness",
      description: "The player must make the same gesture on the next turn",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 18,
      is_enchantment: true,
      duration: 1,
      damage: 0})
Sequence.create({spell_id: maladroit.id, sequence: "DSF"})


charm_monster = Spell.create({name: "Charm Monster",
      description: "Charms the target monster",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 19,
      is_enchantment: true,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: charm_monster.id, sequence: "PSDD"})

charm_person = Spell.create({name: "Charm Person",
      description: "Charms the target player, forcing them to do a particular gesture on a particular hand",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 20,
      is_enchantment: true,
      duration: 1,
      damage: 0})
Sequence.create({spell_id: charm_person.id, sequence: "PSDF"})

disease = Spell.create({name: "Disease",
      description: "Infects the player with a disease, killing him in 6 turns unless it is healed with cure heavy wounds or it is dispelled",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 21,
      is_enchantment: true,
      duration: 6,
      damage: 0})
Sequence.create({spell_id: disease.id, sequence: "DSFFFc"})

poison = Spell.create({name: "Poison",
      description: "Poisons the target, killing him in 6 turns unless it is dispelled",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 22,
      is_enchantment: false,
      duration: 6,
      damage: 0})
Sequence.create({spell_id: poison.id, sequence: "DWWFWD"})

cure_light_wounds = Spell.create({name: "Cure Light Wounds",
      description: "Heals the target for 1 HP",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 23,
      is_enchantment: false,
      duration: 0,
      damage: -1})
Sequence.create({spell_id: cure_light_wounds.id, sequence: "DFW"})

cure_heavy_wounds = Spell.create({name: "Cure Heavy Wounds",
      description: "Heals the target for 2 HP and cures Disease",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 24,
      is_enchantment: false,
      duration: 0,
      damage: -2})
Sequence.create({spell_id: cure_heavy_wounds.id, sequence: "DFPW"})

anti_spell = Spell.create({name: "Anti-spell",
      description: "Stops the target's current chain of gestures",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 25,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: anti_spell.id, sequence: "SPFP"})

blindness = Spell.create({name: "Blindness",
      description: "Blinds the target for 3 turns, leaving him unable to target others or see gestures",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 26,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: blindness.id, sequence: "DFWFd"})
Sequence.create({spell_id: blindness.id, sequence: "DWFFd"})

invisibility = Spell.create({name: "Invisibility",
      description: "Makes the target invisible for 3 turns, leaving him unable to be targeted or for his gestures to be seen",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 27,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: invisibility.id, sequence: "PPws"})

permanency = Spell.create({name: "Permanency",
      description: "Allows the target to attempt to make a spell cast anytime within the next 3 turns permanent",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 28,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: permanency.id, sequence: "SPFPSDW"})

delay_effect = Spell.create({name: "Delay Effect",
      description: "Allows the target to bank a spell cast anytime within the next 3 turns, the banked spell can be cast in any future turn",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 29,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: delay_effect.id, sequence: "DWSSSP"})

remove_enchantment = Spell.create({name: "Remove Enchantment",
      description: "Removes harmful enchantments",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 30,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: remove_enchantment.id, sequence: "PDWP"})

shield = Spell.create({name: "Shield",
      description: "Protects the target from stabs, magic missiles, and monsters",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 31,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: shield.id, sequence: "P"})

magic_missile = Spell.create(
    {name: "Magic Missile",
      description: "Shoots a bolt at the target, dealing 1 point of damage",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 32,
      is_enchantment: false,
      duration: 0,
      damage: 1})
Sequence.create({spell_id: magic_missile.id, sequence: "SD"})

cause_light_wounds = Spell.create(
    {name: "Cause Light Wounds",
      description: "Causes wounds to appear on the target, dealing 2 points of damage",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 33,
      is_enchantment: false,
      duration: 0,
      damage: 2})
Sequence.create({spell_id: cause_light_wounds.id, sequence: "WFP"})

cause_heavy_wounds = Spell.create(
    {name: "Cause Heavy Wounds",
      description: "Causes wounds to appear on the target, dealing 3 points of damage",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 34,
      is_enchantment: false,
      duration: 0,
      damage: 3})
Sequence.create({spell_id: cause_heavy_wounds.id, sequence: "WPFD"})

lightning_bolt = Spell.create(
    {name: "Lightning bolt",
      description: "Cast a lightning bolt dealing 5 points of damage",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 35,
      is_enchantment: false,
      duration: 0,
      damage: 5})
Sequence.create({spell_id: lightning_bolt.id, sequence: "DFFDD"})

fireball = Spell.create(
    {name: "Fireball",
      description: "Cast a fireball dealing 5 points of damage",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 36,
      is_enchantment: false,
      duration: 0,
      damage: 5})
Sequence.create({spell_id: fireball.id, sequence: "FSSDD"})

finger_of_death = Spell.create(
    {name: "Finger of Death",
      description: "Instantly kill the target",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 37,
      is_enchantment: false,
      duration: 0,
      damage: 9999})
Sequence.create({spell_id: fireball.id, sequence: "PWPFSSSD"})

fire_storm = Spell.create(
    {name: "Fire Storm",
      description: "Deal 5 points of fire damage to everything",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: false,
      priority: 38,
      is_enchantment: false,
      duration: 0,
      damage: 5})
Sequence.create({spell_id: fire_storm.id, sequence: "SWWc"})

ice_storm = Spell.create(
    {name: "Ice Storm",
      description: "Deal 5 points of cold damage to everything",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: false,
      priority: 39,
      is_enchantment: false,
      duration: 0,
      damage: 5})
Sequence.create({spell_id: ice_storm.id, sequence: "WSSc"})


Sequence.all.each do |next_sequence|
    next_sequence.reverse_sequence = next_sequence.sequence.reverse
end
