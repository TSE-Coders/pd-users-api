class Pod < ApplicationRecord
  has_many :users

  def self.score

    pod_points = self.users.map.sum { |user|user.points  }
    score = pod_points.sum
    score


  end



end
