class Meta < ApplicationRecord
    self.table_name = "metas"
    belongs_to :mettable, polymorphic: true
end