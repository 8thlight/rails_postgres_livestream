# frozen_string_literal: true

json.call(article, :title, :slug, :body, :created_at, :updated_at, :description, :tag_list)
json.author article.user, partial: 'profiles/profile', as: :user
json.favorited signed_in? ? current_user.favorited?(article) : false
json.favorites_count article.favorites_count || 0
json.calculated_favorites_popularity (article.favorites_count || 0).to_f/(@articles.map{ |a| a.favorites_count || 0}.sum).to_f
json.calculated_tags_popularity (article.tags.length || 0).to_f/(@articles.map{ |a| a.tags }.flatten.length).to_f # Here we want to use the total number of tags, not just the unique tags
json.calculated_positivity @positivity_statistic.rows.count
