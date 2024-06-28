from django.urls import path
from .views import FileUploadAPIView, filelist

app_name = 'upload'


urlpatterns = [
    path('upload-file/', FileUploadAPIView.as_view(), name='upload-file'),
    path('filelist/', filelist, name='list'),
]