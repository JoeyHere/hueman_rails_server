User.destroy_all
Level.destroy_all
UserLevelAction.destroy_all

user1 = User.create(user_name: "HUEman", password:"hue")

Level.create(  published: true, published: 1, user_id: user1.id,
    name: "Tutorial 1 - Get Out",
    level_data: "[[10,10,10,10,10,10,10,10,10,10],[10,10,9,9,9,9,9,9,10,10],[10,10,9,9,9,1,9,9,10,10],[10,10,9,9,9,9,9,9,10,10],[10,10,9,10,10,10,10,10,10,10],[10,10,9,10,10,10,2,10,10,10],[10,10,9,10,10,2,10,10,10,10],[10,10,9,10,2,7,2,7,2,7],[10,10,9,10,10,2,10,10,10,10],[10,10,9,10,10,10,2,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id, 
    name: "Tutorial 2 - Push Blocks",
    level_data: "[[10,10,10,10,9,10,10,10,10,10],[10,10,10,10,9,10,10,10,10,10],[10,10,10,10,9,10,10,10,10,10],[10,9,9,9,9,8,8,8,9,10],[10,10,10,10,10,10,10,10,9,10],[10,10,8,10,10,8,10,10,9,10],[10,10,10,10,10,10,10,10,9,10],[10,8,10,10,10,10,8,10,9,10],[10,10,8,8,8,8,10,10,1,10],[10,10,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Tutorial 3 - Match Three, or More",
    level_data: "[[10,10,10,10,10,10,10,10,10,10],[10,10,10,10,10,10,10,10,10,10],[10,10,10,10,10,10,10,10,10,10],[10,10,10,10,10,10,10,4,9,9],[10,10,10,10,3,10,10,4,10,10],[10,1,9,3,9,9,4,9,10,10],[10,10,10,10,3,10,10,4,10,10],[10,10,10,10,10,10,10,4,9,9],[10,10,10,10,10,10,10,10,10,10],[10,10,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Tutorial 4 - Combine Colours",
    level_data: "[[10,10,10,10,10,10,10,10,10,10],[10,9,9,9,10,10,9,1,9,10],[10,9,9,9,10,10,9,9,9,10],[10,9,9,9,10,10,9,9,9,10],[10,9,9,9,5,10,9,9,9,10],[10,9,10,10,5,10,9,3,9,10],[10,9,10,10,9,9,9,4,9,10],[10,9,10,10,5,10,10,10,10,10],[10,9,10,10,5,10,10,10,10,10],[10,9,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,   user_id: user1.id,  
    name: "Tutorial 5 - Bombs",
    level_data: "[[10,10,10,10,10,10,10,10,9,10],[10,9,15,9,15,9,6,7,5,10],[10,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,10],[10,9,9,10,10,10,9,15,9,10],[10,9,9,8,8,8,9,9,9,10],[10,10,10,10,9,10,10,10,10,10],[10,9,9,9,9,9,15,9,9,10],[10,9,9,9,9,9,9,9,1,10],[10,10,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Tutorial 6 - Keep Going",
    level_data: "[[10,10,10,10,10,10,10,10,10,10,10,10],[10,9,9,10,9,10,10,3,3,9,9,10],[10,9,9,9,9,10,9,9,10,9,9,10],[10,9,9,10,9,10,9,9,10,9,9,10],[10,9,9,10,9,10,9,9,10,9,9,10],[8,8,8,10,3,10,9,9,10,3,9,10],[10,9,9,10,2,10,8,9,10,9,9,10],[10,9,9,10,9,10,8,9,10,9,9,10],[10,9,9,10,9,10,2,9,10,9,9,10],[9,9,9,10,9,10,9,9,10,9,9,10],[10,9,9,10,2,2,9,9,10,9,1,10],[10,10,10,10,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Tutorial 7 - Break the Gate",
    level_data: "[[10,10,10,10,10,4,10,10,10,10],[10,9,9,9,10,4,9,9,9,10],[10,9,9,3,9,9,2,9,9,10],[10,9,9,9,9,9,9,9,9,10],[10,10,10,9,10,9,9,10,10,10],[10,10,10,4,4,9,4,4,10,10],[10,10,10,10,10,9,10,10,10,10],[10,9,9,4,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,1,10],[10,10,10,10,10,10,10,10,10,10]]")
    
Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Tutorial 8 - Last One",
    level_data: "[[10,10,10,10,10,10,10,10,10,10,10,10],[10,10,10,9,9,9,10,4,9,9,9,10],[10,10,10,2,4,9,10,2,9,9,9,10],[10,9,9,9,9,9,10,8,9,9,9,10],[10,9,9,9,9,9,9,8,9,9,9,10],[10,7,7,9,7,7,10,9,9,9,9,10],[10,10,9,10,10,10,10,10,9,10,10,10],[10,8,8,8,8,10,3,3,9,3,3,10],[10,9,9,9,9,10,9,9,3,9,9,10],[10,9,9,9,9,10,9,9,9,9,9,10],[10,9,9,9,9,10,9,9,9,9,1,10],[10,10,10,9,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Small Prison Cell",
    level_data: "[[10,10,10,10,10,10,10,10,10,10],[10,9,9,9,9,9,9,9,9,10],[10,9,2,9,3,9,2,9,9,10],[10,9,9,9,9,9,9,9,9,10],[10,9,3,9,2,9,3,9,9,10],[10,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,1,10],[10,9,9,10,10,10,9,10,10,10],[10,9,8,2,2,6,6,2,6,10],[10,10,10,10,9,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Warehouse",
    level_data: "[[10,10,10,10,10,10,10,9,10,10,10,8,8,10],[10,6,8,10,10,4,4,9,10,10,10,10,10,10],[10,10,10,10,10,10,10,9,9,9,9,9,9,9],[10,10,10,10,10,10,10,7,10,10,10,10,10,10],[10,9,8,8,6,7,6,8,9,9,8,10,10,10],[10,9,10,10,10,10,10,9,9,8,8,10,8,3],[10,9,9,9,8,10,10,7,10,10,10,10,10,10],[10,9,9,9,9,10,10,2,9,9,9,9,9,10],[10,8,9,9,9,10,10,3,10,9,9,9,9,10],[10,8,8,9,9,10,10,8,10,9,9,2,8,10],[10,9,9,9,9,10,10,4,10,3,9,9,9,10],[10,9,9,1,9,10,10,8,10,9,9,4,8,10],[10,8,9,9,9,9,9,9,9,9,9,9,9,10],[10,10,10,10,10,10,10,10,10,10,10,10,10,10]]")

Level.create(published: true, published: 1,  user_id: user1.id,    
    name: "Harder than it Looks",
    level_data: "[[10,10,10,10,10,10,10,10,10,10,10,10,10,10],[10,9,9,9,9,9,6,10,2,10,9,9,9,10],[10,9,2,9,3,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,6,10,2,10,9,9,9,10],[10,9,10,10,9,10,10,3,10,10,9,9,10,10],[10,5,5,9,9,9,9,9,9,9,9,9,10,10],[10,10,10,9,10,5,10,3,9,9,9,9,6,6],[10,10,10,5,10,5,10,3,9,9,9,9,10,10],[10,10,10,5,10,10,10,10,10,9,9,9,10,10],[10,9,9,8,9,9,10,10,10,9,9,9,9,10],[10,9,9,8,9,9,5,10,3,10,9,9,9,10],[10,9,3,8,4,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,5,10,3,10,9,9,1,10],[10,10,10,10,10,10,10,10,10,10,10,10,10,10]]")

Level.create(published: true, published: 1,  user_id: user1.id,   
    name: "Four Rooms",
    level_data: "[[10,10,10,10,10,10,10,10,10,10,10,10],[10,9,9,9,9,3,10,5,9,9,9,10],[10,9,3,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,3,10,5,9,9,9,10],[10,9,9,9,9,3,10,5,9,9,9,10],[10,3,9,3,3,10,10,10,10,9,10,10],[10,10,9,10,10,10,10,4,4,9,4,10],[10,9,9,2,8,9,10,9,9,9,9,10],[10,9,9,9,9,9,10,9,9,9,9,10],[10,9,9,9,9,9,10,9,4,9,9,10],[10,5,5,9,5,10,10,9,9,9,1,10],[10,10,9,10,10,10,10,10,10,10,10,10]]")

Level.create( published: true, published: 1,  user_id: user1.id,  
    name: "Pick The Lock",
        level_data: "[[10,10,10,10,10,10,10,10,10,10,10,10,10,10],[10,9,9,9,9,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,9,9,9,10],[10,10,10,10,10,10,10,10,10,10,10,10,9,10],[7,7,3,2,3,6,5,4,5,3,2,7,9,10],[10,10,2,10,3,10,4,10,7,10,4,10,9,10],[10,10,8,10,8,10,8,10,7,10,8,10,9,10],[10,9,9,9,9,9,9,10,10,10,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,9,9,1,10],[10,10,10,10,10,10,10,10,10,10,10,10,10,10]]")

Level.create(published: true, published: 1, user_id: user1.id, 
    name: "Between a Block & a Hard Place",
    level_data: "[[10,10,10,10,10,9,10,10,10,10,10,10],[10,9,9,10,10,5,5,9,10,10,10,10],[10,9,8,10,10,10,10,9,10,10,10,10],[10,9,8,10,10,10,4,9,4,10,10,10],[10,9,8,3,10,5,10,9,10,10,10,10],[10,9,9,9,9,9,9,9,9,9,9,10],[10,9,9,3,10,5,10,9,5,5,10,10],[10,9,9,10,10,10,10,9,10,10,10,10],[10,9,9,4,9,10,4,9,4,10,10,10],[10,9,9,3,9,9,9,9,9,9,9,10],[10,9,9,9,9,9,9,9,9,9,1,10],[10,10,10,10,10,10,10,10,10,10,10,10]]")


Level.create(
published: true, published: 1, user_id: user1.id, 
    name: "Three Bombs",
        level_data: "[[10,10,10,10,10,10,10,10,10,10,10,10],[10,9,9,8,8,8,7,8,7,9,9,10],[10,9,10,10,10,10,9,10,10,10,9,10],[10,9,10,9,9,9,9,9,9,10,9,10],[10,9,10,9,8,9,9,4,9,9,9,10],[10,9,9,9,9,9,9,9,9,10,9,10],[10,9,10,9,9,9,9,9,9,10,9,10],[10,9,10,9,15,9,2,9,9,10,9,10],[10,9,10,9,9,9,9,10,9,9,9,15],[10,9,10,10,10,10,10,10,10,10,10,10],[10,8,9,9,9,9,9,15,9,9,1,10],[10,10,10,10,10,10,10,10,10,10,10,10]]"
)