package android.net.http;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/net/http/HttpResponseCache.class
 */
public final class HttpResponseCache extends ResponseCache implements Closeable {
    HttpResponseCache() {
        throw new RuntimeException("Stub!");
    }

    public static HttpResponseCache getInstalled() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized HttpResponseCache install(File directory, long maxSize) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CacheResponse get(URI uri, String requestMethod, Map<String, List<String>> requestHeaders) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CacheRequest put(URI uri, URLConnection urlConnection) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public long size() {
        throw new RuntimeException("Stub!");
    }

    public long maxSize() {
        throw new RuntimeException("Stub!");
    }

    public void flush() {
        throw new RuntimeException("Stub!");
    }

    public int getNetworkCount() {
        throw new RuntimeException("Stub!");
    }

    public int getHitCount() {
        throw new RuntimeException("Stub!");
    }

    public int getRequestCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void delete() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
