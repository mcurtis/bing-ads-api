module BingAdsApi
	class Keyword < BingAdsApi::DataObject
    attr_accessor :id,
      :bid,
      :destination_url,
      :editorial_status,
      :forward_compatibility_map,
      :match_type,
      :param1,
      :param2,
      :param3,
      :status,
      :text

		def initialize(attributes={})
			super(attributes)
			set_custom_attributes(attributes)
		end

    private
    def set_custom_attributes(attributes)
      self.bid = attributes[:bid][:amount] if attributes.key?(:bid)
      self.destination_url = attributes[:destination_url]
      self.editorial_status = attributes[:editorial_status]
      self.forward_compatibility_map = attributes[:forward_compatibility_map][:"@xmlns:a"] if attributes.key? :forward_compatibility_map
      self.match_type = attributes[:match_type]
      self.param1 = attributes[:param1]
      self.param2 = attributes[:param2]
      self.param3 = attributes[:param3]
      self.status = attributes[:status]
      self.text   = attributes[:text]
    end
  end
end
