class EntitiesController
  attr_reader :request

  def initialize(request)
    @request = request
  end

  def index
    @entities = Entity.all
    view 'index'
  end

  def show
    @entity = Entity.find(params_id)
    view 'show'
  end

  def new
    view 'new'
  end

  def create
    id = Entity.create(request.params)
    request.path_info = "/#{id}"
    [show, 302]
  end

  private

  def view(name)
    erb_path = File.expand_path("#{File.dirname(__FILE__)}/../views/#{name}.html.erb")
    erb_file = File.read(erb_path)
    ERB.new(erb_file).result(binding)
  end

  def params_id
    request.path_info[/\d+/]
  end
end
