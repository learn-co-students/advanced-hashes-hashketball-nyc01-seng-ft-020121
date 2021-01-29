# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


def num_points_scored(player_name)
  i = 0 
  while i < game_hash[:home][:players].length
    if player_name == game_hash[:home][:players][i][:player_name]
      return game_hash[:home][:players][i][:points]
    end
    i += 1
  end
  i = 0
  while i < game_hash[:away][:players].length
    if player_name == game_hash[:away][:players][i][:player_name]
      return game_hash[:away][:players][i][:points]
    end
    i += 1 
  end
end
  
def shoe_size(player_name)
  i = 0 
  while i < game_hash[:home][:players].length
    if player_name == game_hash[:home][:players][i][:player_name]
      return game_hash[:home][:players][i][:shoe]
    end
    i += 1
  end
  i = 0
  while i < game_hash[:away][:players].length
    if player_name == game_hash[:away][:players][i][:player_name]
      return game_hash[:away][:players][i][:shoe]
    end
    i += 1 
  end
end

def team_colors(team_name)
  if team_name == game_hash[:home][:team_name]
    return game_hash[:home][:colors]
  elsif team_name == game_hash[:away][:team_name]
    return game_hash[:away][:colors]
  end
end

def team_names
  return [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers(team_name)
  new_arr = []
  i = 0
  if team_name == game_hash[:home][:team_name]
    while i < game_hash[:home][:players].length do 
      new_arr << game_hash[:home][:players][i][:number]
      i += 1
    end
  end
  if team_name == game_hash[:away][:team_name]
    while i < game_hash[:away][:players].length do 
      new_arr << game_hash[:away][:players][i][:number]
      i += 1
    end
  end
  return new_arr
end

def player_stats(player_name)
  # binding.pry
  new_hash = {}
  i = 0 
  while i < game_hash[:home][:players].length
    if player_name == game_hash[:home][:players][i][:player_name]
      return game_hash[:home][:players][i]
    end
    i += 1
  end
  
  i = 0 
  while i < game_hash[:away][:players].length
    if player_name == game_hash[:away][:players][i][:player_name]
      return game_hash[:away][:players][i]
    end
    i += 1
  end
end

def big_shoe_rebounds
  shoe_size = 0 
  most_rebounds = 0 
  i = 0 
  while i < game_hash[:home][:players].length
    if game_hash[:home][:players][i][:shoe] > shoe_size
      shoe_size = game_hash[:home][:players][i][:shoe]
      most_rebounds = game_hash[:home][:players][i][:rebounds]
    end
    i += 1 
  end
  
  i = 0 
  while i < game_hash[:away][:players].length
    if game_hash[:away][:players][i][:shoe] > shoe_size
      shoe_size = game_hash[:away][:players][i][:shoe]
      most_rebounds = game_hash[:away][:players][i][:rebounds]
    end
    i += 1 
  end
  return most_rebounds
end















# Write code here