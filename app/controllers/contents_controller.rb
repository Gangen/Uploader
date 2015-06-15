class ContentsController < ApplicationController
    def index
        @contents = Content.all
        @content = Content.new
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
            redirect_to @content
        else
            flash[:error] = "not success"
        end
    end

    def show_content

        @image = Image.find_by(:filename => params[:filename])
        
    end
end
