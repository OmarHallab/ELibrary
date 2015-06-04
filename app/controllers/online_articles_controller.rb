class OnlineArticlesController < ApplicationController
  before_action :set_online_article, only: [:show, :edit, :update, :destroy]

  # GET /online_articles
  # GET /online_articles.json
  def index
    @online_articles = OnlineArticle.all
  end

  # GET /online_articles/1
  # GET /online_articles/1.json
  def show
  end

  # GET /online_articles/new
  def new
    @online_article = OnlineArticle.new
  end

  # GET /online_articles/1/edit
  def edit
  end

  # POST /online_articles
  # POST /online_articles.json
  def create
    @online_article = OnlineArticle.new(online_article_params)

    respond_to do |format|
      if @online_article.save
        format.html { redirect_to @online_article, notice: 'Online article was successfully created.' }
        format.json { render :show, status: :created, location: @online_article }
      else
        format.html { render :new }
        format.json { render json: @online_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /online_articles/1
  # PATCH/PUT /online_articles/1.json
  def update
    respond_to do |format|
      if @online_article.update(online_article_params)
        format.html { redirect_to @online_article, notice: 'Online article was successfully updated.' }
        format.json { render :show, status: :ok, location: @online_article }
      else
        format.html { render :edit }
        format.json { render json: @online_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /online_articles/1
  # DELETE /online_articles/1.json
  def destroy
    @online_article.destroy
    respond_to do |format|
      format.html { redirect_to online_articles_url, notice: 'Online article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_online_article
      @online_article = OnlineArticle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def online_article_params
      params.require(:online_article).permit(:Title, :Description, :Online_path, :Author)
    end
end
