from django.urls import path
from .views import FileUploadAPIView

app_name = 'upload'


urlpatterns = [
    path('upload-file/', FileUploadAPIView.as_view(), name='upload-file'),
]