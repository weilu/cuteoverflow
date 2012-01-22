class User < ActiveResource::Base
  include ActiveResource::Extend::WithoutExtension

  self.site = "http://api.stackoverflow.com/1.1/"

end