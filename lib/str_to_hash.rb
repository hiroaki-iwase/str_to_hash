class String
  def to_h
    if self[0] != "{" || self[-1] != "}"
      raise ArgumentError.new("invalid value for `#{__method__}': '#{self}'")
    end

    begin
      str = self.chomp.gsub(/"|^{|}$/, '')
      arr = str.split(/,[\s]*|=>/)
      arr.each_with_index{|column, idx|
        arr[idx] = column.to_i if column =~ /^\d+$/
      }
      new_style_res = Hash[*arr]

      new_style_res
    rescue
      raise ArgumentError.new("invalid value for `#{__method__}': '#{self}'")
    end
  end
end
