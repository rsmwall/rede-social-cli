# frozen_string_literal: true

# class Post
class Post
  attr_reader :id, :text, :likes, :dislikes, :date, :profile

  def initialize(params)
    @id = params[:id]
    @text = params[:text]
    @likes = params[:likes]
    @dislikes = params[:dislikes]
    @date = params[:date]
    @profile = params[:profile]
  end

  def like
    @likes += 1
  end

  def dislike
    @dislikes += 1
  end

  def is_popular?
    @likes >= (@dislikes * 1.5)
  end
end