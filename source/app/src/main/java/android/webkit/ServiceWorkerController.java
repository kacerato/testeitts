package android.webkit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/ServiceWorkerController.class
 */
public abstract class ServiceWorkerController {
    public abstract ServiceWorkerWebSettings getServiceWorkerWebSettings();

    public abstract void setServiceWorkerClient(ServiceWorkerClient serviceWorkerClient);

    public ServiceWorkerController() {
        throw new RuntimeException("Stub!");
    }

    public static ServiceWorkerController getInstance() {
        throw new RuntimeException("Stub!");
    }
}
