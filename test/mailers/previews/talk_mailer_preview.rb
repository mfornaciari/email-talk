# frozen_string_literal: true

class TalkMailerPreview < ActionMailer::Preview
  TEST_PARAMS = { recipient: 'test@email.com' }.freeze

  private_constant :TEST_PARAMS

  def svg_mail
    TalkMailer.with(TEST_PARAMS).svg_mail
  end

  def flex_mail
    TalkMailer.with(TEST_PARAMS).flex_mail
  end

  def table_mail
    TalkMailer.with(TEST_PARAMS).table_mail
  end
end
