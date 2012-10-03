Deface::Override.new(:virtual_path  => "spree/user_registrations/new",
                     :replace => "[data-hook='signup_inside_form']",
                     :partial          => "spree/shared/brazilian_user_form",
                     :name          => "new_brazilian_user_form")

Deface::Override.new(:virtual_path  => "spree/user_registrations/new",
                    :insert_after => "#password-credentials",
                    :text          => "<p><%= f.submit t(:create), :class => 'button primary' %></p>",
                    :name          => "new_brazilian_user_form_submit_button")
                     
Deface::Override.new(:virtual_path => 'spree/users/edit',
                     :name => "remove_if_statement",
                     :remove => "code[erb-loud]:contains('user_form')")
                  
Deface::Override.new(:virtual_path  => "spree/users/edit",
                  :insert_after => "code[erb-loud]:contains('form_for')",
                  :text          => "<%= render(:partial => 'spree/shared/brazilian_user_form', :locals => { :f => f }) %>",
                  :name          => "edit_brazilian_user_form")