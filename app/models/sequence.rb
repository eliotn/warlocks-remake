class Sequence < ActiveRecord::Base
  belongs_to :spell, :class_name => "Spell"
  def self.possible_moves(primary_hand_gestures)
    gestures = ['D','P','W','S','F']
    spells = []
    Sequence.all.each do |seq|
      comparedportion = Regexp.new(seq.sequence + "$")
      gestures.each do |ges|
	if comparedportion.match(single_hand_gestures + ges) != nil
          spells << ges + seq.spell.name + "(" + seq.sequence + ")"
        end
      end
    end
    spells
  end
end
