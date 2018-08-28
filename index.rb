require 'agoo'
require_relative 'controllers'

Agoo::Server.init(6464, 'root')

routes = [
  {
    route: '/',
    controller: IndexController.new
  },
  {
    route: '/teams',
    controller: TeamsController.new
  },
]

routes.each do |item|
  Agoo::Server.handle(:GET, item[:route], item[:controller])
end

Agoo::Server.start()