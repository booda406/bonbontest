class TurtlesController < ApplicationController
  before_action :set_turtle, only: [:show, :edit, :update, :destroy]

  # GET /turtles
  # GET /turtles.json
  def index
    @turtles = Turtle.all
  end

  # GET /turtles/1
  # GET /turtles/1.json
  def show
  end

  # GET /turtles/new
  def new
    @turtle = Turtle.new
  end

  # GET /turtles/1/edit
  def edit
  end

  # POST /turtles
  # POST /turtles.json
  def create
    @turtle = Turtle.new(turtle_params)

    respond_to do |format|
      if @turtle.save
        format.html { redirect_to @turtle, notice: 'Turtle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @turtle }
      else
        format.html { render action: 'new' }
        format.json { render json: @turtle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turtles/1
  # PATCH/PUT /turtles/1.json
  def update
    respond_to do |format|
      if @turtle.update(turtle_params)
        format.html { redirect_to @turtle, notice: 'Turtle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @turtle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turtles/1
  # DELETE /turtles/1.json
  def destroy
    @turtle.destroy
    respond_to do |format|
      format.html { redirect_to turtles_url }
      format.json { head :no_content }
    end
  end

  def sell_count
    
  end

  def sell_index
    
  end

  def share
    @contact = Contact.new
  end

  def animal
    
  end

  def performance
    @cohorts = CohortMe.analyze(period: "weeks", activation_class: Document)
    render action: 'performance'
  end

  def first
    
  end

  def about
    
  end

  def sulcata
    @comment = Comment.new
  end

  def leopard
    @comment = Comment.new
  end

  def reddot
    @comment = Comment.new
  end

  def pool_01
    @comment = Comment.new
  end

  def pool_02
    @comment = Comment.new
  end

  def show_01
    @comment = Comment.new
  end

  def show_02
    @comment = Comment.new
  end

  def turtle08
    @comment = Comment.new
  end

  def redearturtle
    @comment = Comment.new
  end

  def reddot_and_sun
    @comment = Comment.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turtle
      @turtle = Turtle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turtle_params
      params[:turtle]
    end
end
