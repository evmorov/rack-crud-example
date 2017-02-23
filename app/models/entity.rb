require 'csv'

class Entity
  CSV_PATH = "#{File.dirname(__FILE__)}/db.csv"

  def self.all
    CSV.read(CSV_PATH, headers: true)
  rescue
    []
  end

  def self.find(id)
    CSV.foreach(CSV_PATH, headers: true) do |row|
      return row if row['id'] == id
    end
  end

  def self.create(params)
    next_id = all[all.size - 1]['id'].to_i + 1
    CSV.open(CSV_PATH, "a+") do |csv|
      csv.add_row [next_id, params['title'], params['body']]
    end
    next_id
  end
end
