module MenuBuilder
  module ViewHelpers
    def tab_link_to(*args)
      @menu_items = self.instance_variable_get('@menu_items')
      if @menu_items.present? && @menu_items.include?(args[0])
          args[3].nil? ? args << {:class => 'selected'} : args[3][:class] = 'selected'
      end
      self.link_to args[1], args[2], args[3]
    end
  end
end