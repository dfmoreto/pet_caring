class MarketingMailer < ApplicationMailer
  def campaign(client, campaign, email_sent)
    @body = campaign.body
    @email_sent = email_sent
    mail to: client.email, subject: campaign.title
  end
end
