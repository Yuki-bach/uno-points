class Form::ProductCollection < Form::Base
  FORM_COUNT = 10 #ここで、作成したい登録フォームの数を指定
  attr_accessor :players

  def initialize(attributes = {})
    super attributes
    self.players = FORM_COUNT.times.map { Player.new() } unless self.players.present?
  end

  def players_attributes=(attributes)
    self.players = attributes.map { |_, v| Player.new(v) }
  end

  def save
    Player.transaction do
      self.players.map do |product|
        player.save
      end
    end
      return true
    rescue => e
      return false
  end
end
