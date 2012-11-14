#
#  MorseCode.rb
#  MorseConverter
#
#  Created by neige7 on 12/11/14.
#  Copyright 2012年 neige7. All rights reserved.
#


class MorseCode
    
    def initialize
        @kana = Array.new
        @morse = Array.new
        @alpha = Array.new
    end
    
    def ja_morse(str)
        i = 0
        conv = ""
        while i < str.length
            morse = j_to_m(str.slice(i))
            conv += morse+"　"
            i+=1
        end
        
        return conv.slice(0, conv.length-1)
    end
    
    private
    def j_to_m(str)
        if str=="あ"
            return "－－・－－"
        end
        return str
    end

end