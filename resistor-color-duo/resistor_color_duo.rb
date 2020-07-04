module ResistorColorDuo
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze
  
  def self.value(color_list)
    COLORS.index(color_list[0]) * 10 + COLORS.index(color_list[1])
  end
end