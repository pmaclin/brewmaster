class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  # before_action :current_user_must_own_batch, only:[:edit, :update, :destroy, :show]

  # def create_unique_ids
  #   @batch = Batch.new(recipe_params)
  #   u = SecureRandom.random_number(1000000000)
  #   10.times do |u|
  #     print u
  # end

# Something's happening that's inhibiting the showing of the owner's batches, as does on Recipe index. Also, something
# was inhibiting the adding of batches.  We'll comment out the code below as well as the before_action above to attempt
# to troubleshoot.

  # def current_user_must_own_batch
  #   if current_user != @batch.user
  #       redirect_to :back, :notice => "Dude...you can't do that."
  #   end
  # end

  # GET /batches
  # GET /batches.json
  def index
    @batches = Batch.all
  end

  # GET /batches/1
  # GET /batches/1.json
  def show
  end

  # GET /batches/new
  def new
    @batch = Batch.new
  end

  # GET /batches/1/edit
  def edit
  end

  # POST /batches
  # POST /batches.json
  def create
    @batch = Batch.new(batch_params)

    respond_to do |format|
      if @batch.save
        format.html { redirect_to @batch, notice: 'Batch was successfully created.' }
        format.json { render :show, status: :created, location: @batch }
      else
        format.html { render :new }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batches/1
  # PATCH/PUT /batches/1.json
  def update
    respond_to do |format|
      if @batch.update(batch_params)
        format.html { redirect_to @batch, notice: 'Batch was successfully updated.' }
        format.json { render :show, status: :ok, location: @batch }
      else
        format.html { render :edit }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batches/1
  # DELETE /batches/1.json
  def destroy
    @batch.destroy
    respond_to do |format|
      format.html { redirect_to batches_url, notice: 'Batch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch
      @batch = Batch.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batch_params
      params.require(:batch).permit(:size, :brew_date, :bottle_date, :actual_original_gravity, :actual_final_gravity, :actual_abv, :actual_aroma, :actual_ibu, :image, :actual_flavor_profile, :beer_style_id, :recipe_id)
    end
end
