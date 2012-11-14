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
    attr_accessor :popup
    def initialize
        @mc = MorseCode.new
    end
    
    def button_pressd(sender)
        
        if(popup.indexOfSelectedItem == 0)
            conv_morse
        else
            rev_conv_morse
        end
    end
    
    private
    def conv_morse
        begin
            str = orgform.stringValue
            kanaform.setStringValue(@mc.ja_morse(str))
            alpform.setStringValue(@mc.al_morse(str))
        rescue => ex
            puts ex.message
        end
    
    end

    private
    def rev_conv_morse
        begin
            str = orgform.stringValue
            kanaform.setStringValue(@mc.morse_ja(str))
            alpform.setStringValue(@mc.morse_al(str))
        rescue => ex
            puts ex.message
        end
    end
    
    def clear(sender)
        kanaform.setStringValue("")
        alpform.setStringValue("")
    end
end