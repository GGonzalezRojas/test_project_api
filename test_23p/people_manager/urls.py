from rest_framework import routers

from .viewsets import PersonViewSet

router = routers.SimpleRouter()
router.register('people', PersonViewSet)

urlpatterns = router.urls
