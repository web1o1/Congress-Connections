class ProdSenatorSerializer < ActiveModel::Serializer
  attributes :bioguide_id, :senator_name, :nm_first, :nm_last, :gender, :party, :state
end
