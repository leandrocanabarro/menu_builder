module MenuBuilder
  module Controller
    extend ActiveSupport::Concern

    def menu_items(item)
      instance_variable_set('@menu_items', item.to_a)
    end
    alias_method :menu_item, :menu_items

    module ClassMethods
      def menu_items(item)
        options = items.extract_options!

        before_filter(options) do |controller|
          controller.instance_variable_set('@menu_items', item.to_a)
        end
      end
      alias_method :menu_item, :menu_items

    end

  end
end
