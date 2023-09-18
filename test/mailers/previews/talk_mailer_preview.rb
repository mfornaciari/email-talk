# frozen_string_literal: true

class TalkMailerPreview < ActionMailer::Preview
  def gmail_mail
    TalkMailer.gmail_mail
  end

  def outlook_mail
    TalkMailer.outlook_mail
  end
end
