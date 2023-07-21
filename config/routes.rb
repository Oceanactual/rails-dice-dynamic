Rails.application.routes.draw do
  get("/", {:controller => "roll", :action => "home"})
  get("/dice/2/6", {:controller => "roll", :action => "twodsix"})
  get("/dice/2/10", {:controller => "roll", :action => "twodten"})
  get("/dice/1/20", {:controller => "roll", :action => "onedtwenty"})
  get("/dice/5/4", {:controller => "roll", :action => "fivedfour"})
  get("/dice/:rolls/:die", {:controller => "roll", :action => "any"})
end
