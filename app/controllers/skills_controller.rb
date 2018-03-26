class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update, :destroy]

  # GET /blogs
  # GET /blogs.json
  def index
    @skills = Skill.all
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
  end

  # GET /blogs/new
  def new
    @skill = Skill.new
  end

  # GET /blogs/1/edit
  def edit
  end

  # POST /blogs
  # POST /blogs.json
  def create
    @skill = Skill.new(skill_params)

    respond_to do |format|
      if @skill.save
        format.html { redirect_to @skill, notice: 'Skill was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to @skill, notice: 'Skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @skill }
      else
        format.html { render :edit }
        format.json { render json: @skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @skills = Skill.all
    @skill.destroy
    respond_to do |format|
      format.html { redirect_to @skills, notice: "Skill was successfully removed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill
      @skill = Skill.find(params[:id])
    end

    def skill_params
      params.require(:skill).permit(:title, :percent_utilized)
    end
end
