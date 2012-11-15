#
#  MorseCode.rb
#  MorseConverter
#
#  Created by neige7 on 12/11/14.
#  Copyright 2012年 neige7. All rights reserved.
#


class MorseCode
    
    def initialize
        @kana = ['あ','い','う','え','お','か','き','く','け','こ','さ','し','す','せ','そ','た','ち','つ','っ','て','と','な','に','ぬ','ね','の','は','ひ','ふ','へ','ほ','ま','み','む','め','も','や','ゆ','よ','ら','り','る','れ','ろ','わ','を','ん','が','ぎ','ぐ','げ','ご','ざ','じ','ず','ぜ','ぞ','だ','ぢ','づ','で','ど','ば','び','ぶ','べ','ぼ','ぱ','ぴ','ぷ','ぺ','ぽ','゛', '゜']
        @morse = ["－－・－－","・－","・・－","－・－－－","・－・・・","・－・・","－・－・・","・・・－","－・－－","－－－－","－・－・－","－－・－・","－－－・－","・－－－・","－－－・","－・","・・－・","・－－・","・－－・","・－・－－","・・－・・","・－・","－・－・","・・・・","－－・－","・・－－","－・・・","－－・・－","－－・・","・","－・・","－・・－","・・－・－","－","－・・・－","－・・－・","・－－","－・・－－","－－","・・・","－－・","－・－－・","－－－","・－・－","－・－","・－－－","・－・－・","・－・・　・・","－・－・・　・・","・・・－　・・","－・－－　・・","－－－－　・・","－・－・－　・・","－－・－・　・・","－－－・－　・・","・－－－・　・・","－－－・　・・","－・　・・","・・－・　・・","・－－・　・・","・－・－－　・・","・・－・・　・・","－・・・　・・","－－・・－　・・","－－・・　・・","・　・・","－・・　・・","－・・・　・・－－・","－－・・－　・・－－・","－－・・　・・－－・","・　・・－－・","－・・　・・－－・","・・","・・－－・"]
        @alpha = ["#","A","U","#","#","L","#","V","Y","#","#","#","#","#","#","N","F","P","P","#","#","R","C","H","Q","#","B","#","Z","E","D","*","#","T","=","/","W","#","M","S","G","(","O","#","K","J","+","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","#","I","#"]
    end
    #かな→モールス信号
    public
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
    #かな1文字→モールス信号
    private
    def j_to_m(str)
        if str =~ /\s/
            return "　"
        end
        i=0
        while i < @kana.length
            if(str == @kana[i])
                return @morse[i]
            end
            i += 1
        end
        return str
    end
    #アルファベット文字列→モールス信号
    public
    def al_morse(str)
        i = 0
        tmp = str.upcase
        conv = ""
        while i < tmp.length
            morse = a_to_m(tmp.slice(i))
            conv += morse+"　"
            i += 1
        end
        
        return conv.slice(0, conv.length-1)
    end
    
    #アルファベット1文字→モールス信号
    private
    def a_to_m(str)
        if str =~ /\s/
            return "　"
        end
        i=0
        while i < @alpha.length
            if( str == @alpha[i])
                return @morse[i]
            end
            i += 1
        end
        return "##"
    end
    
    #モールス信号　→かな
    public
    def morse_ja(str)
        tmp = str.split(/\s/)
        conv = ""
        tmp.each do |s|
            conv += m_to_j(s)
        end
        return conv
    end
    
    private
    def m_to_j(str)
        i=0
        while i < @kana.length
            if( str == @morse[i])
                return @kana[i]
            end
            i += 1
        end
        return "##"
    end
    
    public
    def morse_al(str)
        tmp = str.split(/\s/)
        conv = ""
        tmp.each do |s|
            conv += m_to_a(s)
        end
        return conv
    end
    
    private
    def m_to_a(str)

        i=0
        while i < @alpha.length
            if( str == @morse[i])
                return @alpha[i]
            end
            i += 1
        end
        return "##"
    end
    
    
end