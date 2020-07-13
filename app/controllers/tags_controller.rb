class TagsController < ApplicationController
    def index
        @tags = Tag.all
    end
    def show
        @tag = Tag.find(params[:id])
    end
    def destroy
        Tag.destroy(params[:id])
        flash.notice = "Tag '#{@tag.title}' Deleted!"
        redirect_to tags_url
    end
end
