class Challenge < ActiveRecord::Base
  validates :name, :description, :code_points, presence: true
  validates :code_points, numericality: true

  def full_repo_name
    if repo_name.present?
      "git@git.codesaga.com.br:codesaga/#{repo_name}"
    else
      ''
    end
  end
end
