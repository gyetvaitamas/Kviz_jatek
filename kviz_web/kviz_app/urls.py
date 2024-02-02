from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('question/add/', views.add_question),
    path('question/delete/<int:id>', views.delete_question),
]