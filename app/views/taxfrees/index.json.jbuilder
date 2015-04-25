json.array!(@taxfrees) do |taxfree|
  json.extract! taxfree, :id, :user_id, :user_name, :nationality_id, :nationality_name, :name, :passport, :birthday, :sex_id, :visastatus_id, :landingdate, :taxfreeflg_id, :taxpaymentplace, :taxpaymentoffice, :note
  json.url taxfree_url(taxfree, format: :json)
end
