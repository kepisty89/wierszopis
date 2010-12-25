class PoemsController < ApplicationController
  # GET /poems
  # GET /poems.xml
  def index
    @poems = Poem.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @poems }
    end
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
    @poem = Poem.find(params[:id])
  end

  # POST /poems
  # POST /poems.xml
  def create
    @poem = Poem.new(params[:poem])

    respond_to do |format|
      if @poem.save
        format.html { redirect_to(@poem, :notice => 'Poem was successfully created.') }
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
    @poem = Poem.find(params[:id])

    respond_to do |format|
      if @poem.update_attributes(params[:poem])
        format.html { redirect_to(@poem, :notice => 'Poem was successfully updated.') }
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
    @poem = Poem.find(params[:id])
    @poem.destroy

    respond_to do |format|
      format.html { redirect_to(poems_url) }
      format.xml  { head :ok }
    end
  end
end
