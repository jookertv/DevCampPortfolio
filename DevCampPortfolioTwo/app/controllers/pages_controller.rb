class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end
  
  def tech_news
    @tweets = SocialTool.twitter_search
  end
  
  def resume
  end
  
  def projects
  end
  
  def roll 
 
  end
end
