class ContentsController < ApplicationController
    def index
        @contents = Content.limit(20)
    end

    def new
        @content = Content.new
    end

    def create
        upload_file = content_params[:file]
        if upload_file != nil
            content[:filename] = upload_file.original_filename
            content[:file] = upload_file.read
        end
end
