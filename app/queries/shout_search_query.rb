class ShoutSearchQuery
  def initialize(term:)
    @term = term
  end

  def to_relation
    # Old solution: match_shouts_for_text_shouts.or(match_shouts_for_photo_shouts)
    Shout.where(id: Shout.search { fulltext term }.hits.map(&:primary_key))
  end

  private

  attr_reader :term

  # This is the Old solution when not using a Search engine like Solr:
  #
  # def match_shouts_for_text_shouts
  #   Shout.where(content_type: "TextShout", content_id: matching_text_shouts.select(:id))
  # end
  #
  # def matching_text_shouts
  #   TextShout.where("body LIKE ?", "%#{term}%")
  # end
  #
  # def match_shouts_for_photo_shouts
  #   Shout.where(content_type: "PhotoShout", content_id: matching_photo_shouts.select(:id))
  # end
  #
  # def matching_photo_shouts
  #   PhotoShout.where("image_file_name LIKE ?", "%#{term}%")
  # end

end
