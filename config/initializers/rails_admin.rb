RailsAdmin.config do |config|
  ### Popular gems integration

  # == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.model Project do
    edit do
      #   # For RailsAdmin >= 0.5.0
      field :picture do
        label 'Cover Photo'
      end
      field :title
      field :synopsis, :text do
        html_attributes do
          {rows: 7, cols: 50, placeholder: "Short description (500 words max)"}
        end
      end
      field :description, :ck_editor
      field :status
      field :skills
      #   # For RailsAdmin < 0.5.0
      #   # field :description do
      #   #   ckeditor true
      #   # end
    end
  end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
