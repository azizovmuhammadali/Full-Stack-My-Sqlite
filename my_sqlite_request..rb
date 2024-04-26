class MySqliteRequest
  def delete
      @delete = true
      self
    end
  def initialize
    @table_name = nil
    @select_columns = []
    @where_conditions = []
    @join_condition = nil
    @order_by = nil
    @insert_data = nil
    @update_data = nil
    @delete = false
  end

  def from(table_name)
    @table_name = table_name
    self
  end

  def select(column_names)
    @select_columns = Array(column_names)
    self
  end

  def where(column_name, criteria)
    @where_conditions << { column: column_name, value: criteria }
    self
  end

  def join(column_on_db_a, filename_db_b, column_on_db_b)
    @join_condition = { column_a: column_on_db_a, filename_b: filename_db_b, column_b: column_on_db_b }
    self
  end

  def order(order, column_name)
    @order_by = { order: order, column: column_name }
    self
  end

  def insert(table_name)
    @table_name = table_name
    @insert_data = {}
    self
  end

  def values(data)
    @insert_data = data
    self
  end

  def update(table_name)
    @table_name = table_name
    self
  end

  def set(data)
    @update_data = data
    self
  end

  def delete
    @delete = true
    self
  end
  def self.from(table_name)
      new.from(table_name)
    end
    def self.insert(table_name)
      new.insert(table_name)
    end
    def select(*column_names)
      @select_columns = column_names
      self
    end
  def run
  end
end
