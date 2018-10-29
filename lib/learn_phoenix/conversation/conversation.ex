defmodule LearnPhoenix.Conversation do
	alias LearnPhoenix.Repo
	alias LearnPhoenix.Conversation.Room
  	def list_rooms do
    	Repo.all(Room)
  	end

  	def change_room(%Room{} = room) do
  		Room.changeset(room, %{})
 	end

 	def create_room(attrs \\ %{}) do
		%Room{}
		|> Room.changeset(attrs)
		|> Repo.insert()
	end
end