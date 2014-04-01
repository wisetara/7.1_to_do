class Task < ActiveRecord::Base
  validates :description, :presence => true

  def self.done
    Task.where(:mark = true)
  end

  def self.not_done
    Task.where(:mark = false || :mark = nil)
  end
end
