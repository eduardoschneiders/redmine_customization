Redmine::Plugin.register :catalogue do
  name 'Service Catalogue plugin'
  author 'Eduardo Schneiders'
  description 'This adds a catalogue of services'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  menu :top_menu, :Catalogo, { controller: 'catalogues', action: 'index' }
end
