#
#  Controller.rb
#  MorseConverter
#
#  Created by neige7 on 12/11/14.
#  Copyright 2012年 neige7. All rights reserved.
#
#require './MorseCode.rb'

class Controller
    
    attr_accessor :button , :orgform , :kanaform, :alpform
    def initialize
        @mc = MorseCode.new
        #puts "initialize"
    end
    
    def button_pressd(sender)
        #puts "the button pressed!"
        str = orgform.stringValue
        kanaform.setStringValue(@mc.ja_morse(str))
    end
end