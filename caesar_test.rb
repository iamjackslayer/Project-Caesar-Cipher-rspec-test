
def caesar_cipher(text,num)
  arr  = text.split('')
  if num >= 26
  	num %= 26
  end

  arr.map! do |i|
    if i =~ /[^[a-z][A-Z]]/
    	i
    else
	    num.times do
	      i.next!
	    end
	   	i = i[1] if i.length > 1
	   	i
	end
  end
  return arr.join
end