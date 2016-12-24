class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end
def new
  @group = Group.new
end
def show
  @group = Group.find(params[:id])
end
def editend
  @group = Group.find(params[:id])
end
def create
  @group = Group.new(group_params)
  @group.save
redirect_to groups_path
end

def update
  @group = Group.find(params[:id])
  @group.update(group_params)
redirect_to group_path, notice: "更新成功"
end
private
def group_params
  params.require(:group).permit(:title, :description)
end
end
