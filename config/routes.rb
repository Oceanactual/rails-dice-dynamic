Rails.application.routes.draw do
  get("/", {:controller => "roll", :action => "home"})
  get("/dice/2/6", {:controller => "roll", :action => "2d6"})
  get("/dice/2/10", {:controller => "roll", :action => "2d10"})
  get("/dice/1/20", {:controller => "roll", :action => "1d20"})
  get("/dice/5/4", {:controller => "roll", :action => "5d4"})
end
