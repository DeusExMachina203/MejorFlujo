from django.shortcuts import render
from rest_framework.decorators import api_view

@api_view()
def map(request):
    print(request.query_params['name'])
    name = request.query_params['name']
    return render(request, f'../media/' + name +'.html')