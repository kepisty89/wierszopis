class PoemsController < ApplicationController
  before_action :authenticate, :except => [:index, :show, :rss, :find]

  # GET /poems
  # GET /poems.xml
  def index

    # wczesniejszy sposob wyswietlania wierszy
    # @poems = Poem.all

    # wyswietlani wierszy z paginacja
    @poems = Poem.order('created_at DESC').paginate(page: params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @poems }
      format.rss
    end
  end

  # kanal RSS
  def rss
    @poems = Poem.find(:all, :order => "id DESC", :limit => 10)
    render :layout => false
    response.headers["Content-Type"] = "application/xml; charset=utf-8"
  end


  # GET /poems/1
  # GET /poems/1.xml
  def show
    @poem = Poem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @poem }
    end
  end

  # GET /poems/new
  # GET /poems/new.xml
  def new
    @poem = Poem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @poem }
    end
  end

  # GET /poems/1/edit
  def edit
    @poem = current_user.poems.find(params[:id])
    unless @poem.owned_by?(current_user)
      redirect_to(poems_path, :alert => 'Nie jestes autorem tego wiersza!')
    end
  end

  # POST /poems
  # POST /poems.xml
  def create
    @poem = current_user.poems.new(params[:poem])

    respond_to do |format|
      if @poem.save
        format.html { redirect_to(@poem, :notice => 'Utworzono wiersz.') }
        format.xml  { render :xml => @poem, :status => :created, :location => @poem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @poem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /poems/1
  # PUT /poems/1.xml
  def update
    @poem = current_user.poems.find(params[:id])
    unless @poem.owned_by?(current_user)
      redirect_to(poems_path, :alert => 'Nie jestes autorem tego wiersza!')
    end


    respond_to do |format|
      if @poem.update_attributes(params[:poem])
        format.html { redirect_to(@poem, :notice => 'Zaktualizowano wiersz.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @poem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /poems/1
  # DELETE /poems/1.xml
  def destroy
    @poem = current_user.poems.find(params[:id])
    unless @poem.owned_by?(current_user)
      redirect_to(poems_path, :alert => 'Nie jestes autorem tego wiersza!')
    else
      @poem.destroy

      respond_to do |format|
        format.html { redirect_to(poems_url, :notice => 'Usunieto wiersz') }
        format.xml  { head :ok }
      end
    end
  end

  def find
    @found_poems = Poem.where("title LIKE ?", "%#{params[:search_string]}%")
  end
end
