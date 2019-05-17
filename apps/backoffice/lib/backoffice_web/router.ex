defmodule BackofficeWeb.Router do
  use BackofficeWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/", BackofficeWeb do
    pipe_through(:browser)

    resources("/", LearningObjectController)
    resources("/course", CourseController)
  end
end
