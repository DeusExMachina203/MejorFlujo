from rest_framework import status
from rest_framework.parsers import FormParser, MultiPartParser
from rest_framework.response import Response
from rest_framework.views import APIView
from rest_framework.decorators import api_view
import os

from .serializers import FileUploadSerializer

class FileUploadAPIView(APIView):
    parser_classes = (MultiPartParser, FormParser)
    serializer_class = FileUploadSerializer
    
    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data)
        serializer.is_valid()
        serializer.save()
        return Response(
            serializer.data,
            status=status.HTTP_201_CREATED
        )

@api_view()
def filelist(request):
    path = "./media"
    dir_list = os.listdir(path)
    print(dir_list)
    files = {"files" : dir_list}
    return Response(
        files
        )