class ApplicationController < ActionController::Base
    before_filter :set_locale
    protect_from_forgery with: :exception
    before_action :get_menu_items

    rescue_from ActionController::RoutingError, with: :render_not_found

    def catch_404
        raise ActionController::RoutingError.new(params[:path])
    end

    def locale
        params[:name] == 'ru' ? session[:locale] = 'ru' : session[:locale] = 'en'
        redirect_to root_path
    end

    private
    def render_not_found
        render template: "layouts/403", status: 404
    end

    def set_locale
        session[:locale] == 'ru'  || session[:locale] == 'en' ? I18n.locale = session[:locale] : I18n.locale = http_accept_language.compatible_language_from(I18n.available_locales)
    end

    def get_menu_items
        @points = Point.all
    end
end
