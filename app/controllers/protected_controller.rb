# frozen_string_literal: true
# Inherit from this class to require authenticated access to all actions
class ProtectedController < ApplicationController
  # this will require authentication for ALL actions
  # I'll want to use ProtectedController for my app
  before_action :authenticate
end
