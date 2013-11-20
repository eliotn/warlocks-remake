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
      priority: 8,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_ice_elemental.id, sequence: "cSWWS"})

haste = Spell.create({name: "Haste",
      description: "Grants the player an additional move each turn for 3 turns",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 9,
      is_enchantment: false,
      duration: 3,
      damage: 0})
Sequence.create({spell_id: summon_ice_elemental.id, sequence: "PWPWWc"})

summon_ice_elemental = Spell.create({name: "Summon Ice Elemental",
      description: "Summons an ice elemental with 3 HP that does 3 points of cold damage to everyone each turn",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: false,
      priority: 8,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: summon_ice_elemental.id, sequence: "cSWWS"})





dispel_magic = Spell.create({name: "",
      description: "Globally removes all spell effects and places a shield on the target",
      is_beneficial: true,
      is_baneful: false,
      is_targeted: true,
      priority: 1,
      is_enchantment: false,
      duration: 0,
      damage: 0})
Sequence.create({spell_id: dispel_magic.id, sequence: "cDPW"})


remove_enchantment = Spell.create({name: "Remove Enchantment",
      description: "Removes harmful enchantments",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 1,
      is_enchantment: false,
      duration: 0,
      damage: 1})
Sequence.create({spell_id: remove_enchantment.id, sequence: "PDWP"})

shield = Spell.create({name: "Shield",
      description: "Protects the target from stabs, magic missiles, and monsters",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 1,
      is_enchantment: false,
      duration: 0,
      damage: 1})
Sequence.create({spell_id: shield.id, sequence: "P"})

remove_enchantment = Spell.create({name: "Remove Enchantment",
      description: "Removes harmful enchantments",
      is_beneficial: true,
      is_baneful: true,
      is_targeted: true,
      priority: 1,
      is_enchantment: false,
      duration: 0,
      damage: 1})
Sequence.create({spell_id: remove_enchantment.id, sequence: "PDWP"})



magic_missile = Spell.create(
    {name: "Magic Missile",
      description: "Shoots a bolt at the target, dealing 1 point of damage",
      is_beneficial: false,
      is_baneful: true,
      is_targeted: true,
      priority: 1,
      is_enchantment: false,
      duration: -1,
      damage: 1})

Sequence.create({spell_id: magic_missile.id, sequence: "SD"})

Sequence.all.each do |next_sequence|
    next_sequence.reverse_sequence = next_sequence.sequence.reverse
end
