module BinaryId
  extend ActiveSupport::Concern

  included do
    attribute :id, MySQLBinUUID::Type.new
    before_create :set_id
    self.implicit_order_column = "created_at"
  end

  def set_id
    self.id ||= SecureRandom.uuid
  end

  def get_oid
    if !new_record? && oid.nil?
      self.oid ||= self.class.where(id: id).select(:oid).first[:oid]
    else
      oid
    end
  end
end
