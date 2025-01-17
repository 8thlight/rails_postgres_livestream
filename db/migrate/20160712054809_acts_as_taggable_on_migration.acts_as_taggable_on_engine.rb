# frozen_string_literal: true

# This migration comes from acts_as_taggable_on_engine (originally 1)
class ActsAsTaggableOnMigration < ActiveRecord::Migration[6.0]
  def self.up
    create_table :tags do |t|
      t.string :name
    end

    create_table :taggings do |t|
      t.references :tag
      t.references :taggable, polymorphic: true
      t.references :tagger, polymorphic: true
      t.string :context, limit: 128

      t.datetime :created_at
    end
  end

  def self.down
    drop_table :taggings
    drop_table :tags
  end
end
