# Ruby substring.rb


def substrings(word)
    dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
    dictionary.each do |substring|
        if word.downcase.include?(substring)
            count = word.downcase.scan(substring).count
            puts "#{substring} : #{count}"
        end
    end

end

substrings("Howdy partner, sit down! How's it going?")
