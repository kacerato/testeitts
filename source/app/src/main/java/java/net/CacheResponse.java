package java.net;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/CacheResponse.class
 */
public abstract class CacheResponse {
    public abstract Map<String, List<String>> getHeaders() throws IOException;

    public abstract InputStream getBody() throws IOException;

    public CacheResponse() {
        throw new RuntimeException("Stub!");
    }
}
