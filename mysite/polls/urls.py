from django.urls import path
from . import views
from polls.views import site_index

urlpatterns = [
    path("", views.index, name="index"),
]