class CampaignJob < ApplicationJob
  queue_as :emails

  def perform(campaign, client)
    begin
      email_sent = campaign.emails_sent.create!(client: client)
      MarketingMailer.campaign(client, campaign, email_sent).deliver_now
    rescue => e
    end
  end
end
