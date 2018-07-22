class TodosController < ApplicationController

	private
    # Use callbacks to share common setup or constraints between actions.
    def set_todo
      @todo = Todos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def todo_params
      params.require(:todo).permit(:description, :completed)
    end
end
