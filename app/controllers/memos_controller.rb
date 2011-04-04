class MemosController < ApplicationController
  # GET /memos
  # GET /memos.xml
  def index
    @memo = Memo.new

    respond_to do |format|
      format.html { render 'new' }
    end
  end

  # GET /memos/1
  # GET /memos/1.xml
  def show
    @memo = Memo.find_by_access_key(params[:id])

    respond_to do |format|
      format.text { render :text => @memo.body }
      format.html # show.html.erb
      format.xml  { render :xml => @memo }
    end
  end

  # GET /memos/new
  # GET /memos/new.xml
  def new
    @memo = Memo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @memo }
    end
  end

  # POST /memos
  # POST /memos.xml
  def create
    @memo = Memo.new(params[:memo])

    respond_to do |format|
      if @memo.save
        flash[:notice] = 'Memo was successfully created.'
        format.html { redirect_to(@memo) }
        format.xml  { render :xml => @memo, :status => :created, :location => @memo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @memo.errors, :status => :unprocessable_entity }
      end
    end
  end
end
