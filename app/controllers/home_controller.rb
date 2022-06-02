class HomeController < ApplicationController

def trash_em
    @trash_em = List.where(:completed => true).destroy_all
    redirect_to lists_url(@list), notice: "Marked items were successfully deleted." 
end
end