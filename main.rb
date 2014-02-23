require 'sinatra'


get '/' do 
	notes_list = generateNotes
	erb :main, :locals => {:notes_list => notes_list}
end

get '/go/' do
	generateNotes
end

def generateNotes
notesarray = %w(A B C D E F G )
notes_string = ""
(1..8).each do 
	notes_string = notes_string + notesarray.sample + "-"
end

#strip the last hyphen (yay for shonky code)
notes_string = notes_string[0,notes_string.length-1]

notes_string = notes_string + "/4"
end


