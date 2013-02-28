module ApplicationHelper
    def detail_suffix
        "_detail"
    end
    def toggle_suffix
        "_toggle" 
    end

	def index_row_div_id(model)
		"#{model.class.to_s.downcase}_index_row_#{model.id}"
	end
	def index_row_detail_div_id(customer)
		index_row_div_id(customer)+detail_suffix
	end
	def index_row_toggle_id(customer)
		index_row_div_id(customer)+toggle_suffix
	end
end
