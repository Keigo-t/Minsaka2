class Admin::LeaguesController < ApplicationController

  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)
    @league.save!
    redirect_to new_admin_team_path
  end

  def edit
    @league = League.find(params[:id])
  end

  def update
    @league = League.find(params[:id])
    @league.update(league_params)
    redirect_to admin_teams_path
  end

  private

  def league_params
    params.require(:league).permit(:name)
  end

end
