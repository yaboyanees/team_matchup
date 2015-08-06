class StatsController < ApplicationController
  before_action :set_stat, only: [:show, :edit, :update, :destroy]

  # GET /stats
  # GET /stats.json
  def index
    @stats = Stat.all
    @shared = Stat.select("id", "weather", "week")
    @teamA = Stat.select("teamA", "winA", "homeA", "pointsA", "run_attemptA", "yards_per_carryA", "pass_attemptA", "pass_completionA", "yards_per_catchA", "first_downA", "fourth_down_attemptA", "fourth_down_madeA", "time_of_possesionA", "fourth_down_ratingA", "total_offenseA", "o_playsA", "pass_efficiencyA")
    @teamB = Stat.select("teamB", "winB", "homeB", "pointsB", "run_attemptB", "yards_per_carryB", "pass_attemptB", "pass_completionB", "yards_per_catchB", "first_downB", "fourth_down_attemptB", "fourth_down_madeB", "time_of_possesionB", "fourth_down_ratingB", "total_offenseB", "o_playsB", "pass_efficiencyB")
 end

  # GET /stats/1
  # GET /stats/1.json
  def show
  	@stats = Stat.all
    @shared = Stat.select("id", "weather", "week")
    @teamA = Stat.select("teamA", "winA", "homeA", "pointsA", "run_attemptA", "yards_per_carryA", "pass_attemptA", "pass_completionA", "yards_per_catchA", "first_downA", "fourth_down_attemptA", "fourth_down_madeA", "time_of_possesionA", "fourth_down_ratingA", "total_offenseA", "o_playsA", "pass_efficiencyA")
    @teamB = Stat.select("teamB", "winB", "homeB", "pointsB", "run_attemptB", "yards_per_carryB", "pass_attemptB", "pass_completionB", "yards_per_catchB", "first_downB", "fourth_down_attemptB", "fourth_down_madeB", "time_of_possesionB", "fourth_down_ratingB", "total_offenseB", "o_playsB", "pass_efficiencyB")
  end

  # GET /stats/new
  def new
    @stat = Stat.new
  end

  # GET /stats/1/edit
  def edit
  end

  # POST /stats
  # POST /stats.json
  def create
    @stat = Stat.new(stat_params)

    respond_to do |format|
      if @stat.save
        format.html { redirect_to stats_url, notice: 'Stat was successfully created.' }
        format.json { render :show, status: :created, location: @stat }
      else
        format.html { render :new }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stats/1
  # PATCH/PUT /stats/1.json
  def update
    respond_to do |format|
      if @stat.update(stat_params)
        format.html { redirect_to @stat, notice: 'Stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @stat }
      else
        format.html { render :edit }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stats/1
  # DELETE /stats/1.json
  def destroy
    @stat.destroy
    respond_to do |format|
      format.html { redirect_to stats_url, notice: 'Stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stat
      @stat = Stat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stat_params
      params.require(:stat).permit(:weather, :week, :teamA, :teamB, :winA, :winB, :homeA, :homeB, :pointsA, :pointsB, :run_attemptA, :run_attemptB, :yards_per_carryA, :yards_per_carryB, :pass_attemptA, :pass_attemptB, :pass_completionA, :pass_completionB, :yards_per_catchA, :yards_per_catchB, :first_downA, :first_downB, :fourth_down_attemptA, :fourth_down_attemptB, :fourth_down_madeA, :fourth_down_madeB, :time_of_possesionA, :time_of_possesionB, :fourth_down_ratingA, :fourth_down_ratingB, :total_offenseA, :total_offenseB, :o_playsA, :o_playsB, :pass_efficiencyA, :pass_efficiencyB)
    end
end
