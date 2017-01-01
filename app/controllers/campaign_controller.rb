class CampaignController < ApplicationController
  def index
  end

  def submit
    redirect_to campaign_index_path
  end
end
