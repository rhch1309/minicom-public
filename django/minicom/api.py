import json

from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt

def render_to_json(content, **kwargs):
  return HttpResponse(json.dumps(content), content_type='application/json', **kwargs)


@csrf_exempt
def verify(request):
  return render_to_json({'success': True})