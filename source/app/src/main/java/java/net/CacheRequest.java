package java.net;

import java.io.IOException;
import java.io.OutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/CacheRequest.class
 */
public abstract class CacheRequest {
    public abstract OutputStream getBody() throws IOException;

    public abstract void abort();

    public CacheRequest() {
        throw new RuntimeException("Stub!");
    }
}
