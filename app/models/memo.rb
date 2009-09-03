class Memo < ActiveRecord::Base

  validates_presence_of :body, :access_key
  validates_uniqueness_of :access_key

  before_validation_on_create :set_access_key

  # access_key の設定（作成時のみ
  def set_access_key
    self.access_key = Digest::SHA1.hexdigest("%d -- %s -- %05d" % [Time.now.to_i, self.body, rand(100000)])
  end

  # URL要素の上書き
  def to_param
    (self.access_key) ? self.access_key.to_s : nil
  end
end
