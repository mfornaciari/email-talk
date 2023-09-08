# frozen_string_literal: true

class TalkMailerPreview < ActionMailer::Preview
  def test_email
    TalkMailer.test_email
  end
end
