# Write your code here.
def word_substituter(tweet)
	dictionary = {"hello" => 'hi',
	"to" => '2',
	"two" => '2',
	"too" => '2',
	"for" => '4',
	"four" => '4',
	"be" => 'b',
	"you" => 'u',
	"at" => "@", 
	"and" => "&"}

	tweet = tweet.split(" ")
	tweet.each_with_index do |w, i|
		if dictionary[w.downcase] != nil
			tweet[i] = dictionary[w.downcase]
		end
	end

	tweet.join(" ")
end

def bulk_tweet_shortener(tarr)
	tarr.each do |tweet|
		puts word_substituter(tweet)
	end
end

def selective_tweet_shortener(tweet)
	if tweet.length > 140
		word_substituter(tweet)
	else
		tweet
	end
end

def shortened_tweet_truncator(tweet)
	if tweet.length > 140
		tweet[0...140]
	else
		tweet
	end
end