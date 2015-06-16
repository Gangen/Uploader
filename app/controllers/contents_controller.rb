class ContentsController < ApplicationController
    def index
        @contents = Content.all
    end

    def new
        @content = Content.new
    end

    def create       
        upload_file = params[:file]
        content = {}
        if upload_file != nil
            content[:filename] = upload_file.original_filename
            content[:file] = upload_file.read
        end
        @content = Content.new(content)
        if @content.save
            flash[:success] = "success"
            redirect_to '/contents/index'
        else
            flash[:error] = "not success"
        end
    end

    def show

        @contents = Content.all
        
    end
end
