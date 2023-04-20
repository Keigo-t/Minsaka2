class Admin::TeamsController < ApplicationController

  def new
    # @league = League.new
    @team = Team.new
  end

  def create
    # @league = League.new(league_params)
    # @league.save
    # redirect_to admin_teams
    @team = Team.new(team_params)
    @team.save
    redirect_to admin_teams_path
  end

  private

  # def league_params
  #   params.require(:league).permit(:name)
  # end

  def team_params
    params.require(:team).permit(:name)
  end

end
