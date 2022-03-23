def caesarCipher(string, shifter)
    arry = string.bytes
    convertedArry= []
    arry.each do |number|

        if shifter > 26
            p "too big of a shift, you cock sucker... Error. "
            return 
        end
        if (number >= 65  && number <= 90 ) 
            number = number.to_i + shifter
                if (number > 90)
                    number=number-26
                    convertedArry.push(number.chr)
                 else 
                    convertedArry.push(number.chr)            
                end 
        end
        if (number >= 97  && number <= 122 ) 
            number = number.to_i + shifter
                if (number > 122)
                    number=number-26
                    convertedArry.push(number.chr)
                 else 
                    convertedArry.push(number.chr)            
                end 
        end
        if (number < 65 || number >122 || number.between?(91, 96))
            convertedArry.push(number.chr)
        end
    end
    p convertedArry.join("");
     
end
caesarCipher("wangz are fun[",5)

