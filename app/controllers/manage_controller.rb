class ManageController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected
  
  def getPages
  	@menus=[]
  	pageTop=Pages.where(:fid => 0)
  	pageTop.each do |p|
  		childrens=getCPages(p.id)
  		npages={data:p,childrens:childrens}
  		@menus.push(npages)
  	end
  end
  
  private
  def getCPages(fid)
  	menus=[]
  	pageTop=Pages.where("fid=?",fid)
  	pageTop.each do |p|
  		childrens=getCPages(p.id)
  		npages={data:p,childrens:childrens}
  		menus.push(npages)
  	end
  	return menus
  end
end
