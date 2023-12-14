class Pod < ApplicationRecord
  has_many :users


  def score
    pod_score = self.users.map.sum { |user|user.points  }
    score = pod_score
    score
  end

  # def score_update


  #   pods_points = Pod.all.map { |pods|pods.score}

  #   pod_size= Pod.all.length

  #   pod_size.times do



  #     updated_pod = Pod.all.map {|pod|



  #     pod.update(points:n)



  #   }



  # end


end
