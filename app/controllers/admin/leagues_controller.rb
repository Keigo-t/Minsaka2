class Admin::LeaguesController < ApplicationController

  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)
    @league.save
    redirect_to admin_teams
  end

  def index
    @teams = Team.all
  end

  private

  def league_params
    params.require(:league).permit(:name)
  end

end
