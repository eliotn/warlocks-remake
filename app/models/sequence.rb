class Sequence < ActiveRecord::Base
  belongs_to :spell, :class_name => "Spell"
  def self.possible_moves(hand_gestures, support_gestures)
    gestures = ['D','P','W','S','F']
    spells = []
    Sequence.all.each do |seq|
      comparedportion = Regexp.new(seq.sequence[0..-2].upcase + "$")
      #calculate support hand
      supporthand = Regexp.new(seq.sequence[0..-2].gsub(/[A-Z]/, ".").upcase + "$")
      if comparedportion.match(hand_gestures) != nil && supporthand.match(support_gestures) != nil
        ges = seq.sequence[-1]
        spells << ges + " - " + seq.spell.name + " (" + seq.sequence + ")"
      end
    end
    spells
  end
  #returns both regex to search for both spells
  #def self.hand_regex
  #returns whether the spell matches the given hands
  # # provides a wildcard
  #def self.spell_match(hand_gestures, 
end
