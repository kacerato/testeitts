package android.webkit;

import android.os.Handler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebMessagePort.class
 */
public abstract class WebMessagePort {
    public abstract void postMessage(WebMessage webMessage);

    public abstract void close();

    public abstract void setWebMessageCallback(WebMessageCallback webMessageCallback);

    public abstract void setWebMessageCallback(WebMessageCallback webMessageCallback, Handler handler);

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/webkit/WebMessagePort$WebMessageCallback.class
 */
    public static abstract class WebMessageCallback {
        public WebMessageCallback() {
            throw new RuntimeException("Stub!");
        }

        public void onMessage(WebMessagePort port, WebMessage message) {
            throw new RuntimeException("Stub!");
        }
    }

    WebMessagePort() {
        throw new RuntimeException("Stub!");
    }
}
