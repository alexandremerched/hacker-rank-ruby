ALPHABET_ARRAY = "abcdefghijklmnopqrstuvwxyz".split('')
def rot13(secret_messages)
    secret_messages.map { | message |
      message.split('').map { | message_letter |
        decoded_letter = " "
        ALPHABET_ARRAY.each_with_index { | alphabet_letter, index | 
          if alphabet_letter == message_letter
            decoded_letter = ALPHABET_ARRAY[(index + 13) % 26]
          end
        }
        decoded_letter
      }.join('')
    }
end

secret_messages = ["qrygn", "zrrg ng pubpbyngr pbeare", "gra zra", "gjb onpxhc grnzf", "zvqavtug rkgenpgvba"]
p rot13(secret_messages)