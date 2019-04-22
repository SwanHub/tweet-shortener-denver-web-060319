def word_substituter(string)
  split_string = string.split(" ")
  my_new_string =
    split_string.collect do |x|
      if x == "hello"
        x = "hi"
      elsif x == "to" || x == "two" || x == "too"
        x = "2"
      elsif x == "for" || x == "four" || x == "For"
        x = "4"
      elsif x == "be"
        x = "b"
      elsif x == "you"
        x = "u"
      elsif x == "at"
        x = "@"
      elsif x == "and"
        x = "&"
      else
        x
      end
    end
  my_new_string.join(" ")
end

def bulk_tweet_shortener(array)
  array.each do |sentence|
    puts word_substituter(sentence)
  end
end

def selective_tweet_shortener(tweet)
  tweet_length = tweet.length
  if tweet_length > 140
      return word_substituter(tweet)
  else
      tweet
  end
end

def shortened_tweet_truncator(tweet)

  tweet_length = tweet.length

  if tweet_length > 140
    remainder_chars = tweet_length - 140
    tweet[0...-remainder_chars]
  else
    tweet 
  end

end
