class Event < ApplicationRecord
  enum :level, { international: 0, national: 1, regional: 2 }

  def level_color
    case level
    when "international" then "primary"
    when "national" then "accent"
    when "regional" then "secondary"
    else "ghost"
    end
  end
end
