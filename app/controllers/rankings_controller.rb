class RankingsController < ApplicationController
  
def show
  @have_ranking = Have.group(:item_id).order('count_id desc').limit(10).count(:id)
  
  @want_ranking = Want.group(:item_id).order('count_id desc').limit(10).count(:id)
end
  
  def have
     @have_ranking = Have.group(:item_id).order('count_id desc').limit(10).count(:id)
     @item_ids = @have_ranking.keys
  end

  def want
   @want_ranking = Want.group(:item_id).order('count_id desc').limit(10).count(:id)
   @item_ids = @want_ranking.keys

 end
end

