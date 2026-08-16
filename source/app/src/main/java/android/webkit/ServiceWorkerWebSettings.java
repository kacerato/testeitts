package android.webkit;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/ServiceWorkerWebSettings.class
 */
public abstract class ServiceWorkerWebSettings {
    public abstract void setCacheMode(int i10);

    public abstract int getCacheMode();

    public abstract void setAllowContentAccess(boolean z10);

    public abstract boolean getAllowContentAccess();

    public abstract void setAllowFileAccess(boolean z10);

    public abstract boolean getAllowFileAccess();

    public abstract void setBlockNetworkLoads(boolean z10);

    public abstract boolean getBlockNetworkLoads();

    public ServiceWorkerWebSettings() {
        throw new RuntimeException("Stub!");
    }
}
