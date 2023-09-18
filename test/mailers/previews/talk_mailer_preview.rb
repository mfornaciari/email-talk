# frozen_string_literal: true

class TalkMailerPreview < ActionMailer::Preview
  def flex_mail
    TalkMailer.flex_mail
  end
end
