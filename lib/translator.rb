require "yaml"

def load_library(file)
    emoticons = YAML.load_file(file)
    new_emos = {}
    emoticons.each { |key, values|
        new_emos[key] = {english: values[0], japanese: values[1]}
    }
    return new_emos
end
  
def get_japanese_emoticon(file, ame_emo)
    emoticons = load_library(file)
    emoticons.each { |name, values|
<<<<<<< HEAD
        if values[:english] == ame_emo
            return values[:japanese]
        end
    }
    "Sorry, that emoticon was not found"
=======
        if values[0] == ame_emo
            return values[1]
        else 
          puts "Sorry, not found."
        end
    }
>>>>>>> 0e5f5c1291ebe0749a844b4e6d9b6f2403d823d4
end

def get_english_meaning(file, jap_emo)
    emoticons = load_library(file)
    emoticons.each { |name, values|
<<<<<<< HEAD
        if values[:japanese] == jap_emo
            return name
        end
    }
    "Sorry, that emoticon was not found"
=======
        if values[1] == jap_emo
            return name
        end
    }
>>>>>>> 0e5f5c1291ebe0749a844b4e6d9b6f2403d823d4
end