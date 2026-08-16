package java.net;

import java.io.IOException;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/URLStreamHandler.class
 */
public abstract class URLStreamHandler {
    protected abstract URLConnection openConnection(URL url) throws IOException;

    public URLStreamHandler() {
        throw new RuntimeException("Stub!");
    }

    protected URLConnection openConnection(URL u10, Proxy p10) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void parseURL(URL u10, String spec, int start, int limit) {
        throw new RuntimeException("Stub!");
    }

    protected int getDefaultPort() {
        throw new RuntimeException("Stub!");
    }

    protected boolean equals(URL u12, URL u22) {
        throw new RuntimeException("Stub!");
    }

    protected int hashCode(URL u10) {
        throw new RuntimeException("Stub!");
    }

    protected boolean sameFile(URL u12, URL u22) {
        throw new RuntimeException("Stub!");
    }

    protected synchronized InetAddress getHostAddress(URL u10) {
        throw new RuntimeException("Stub!");
    }

    protected boolean hostsEqual(URL u12, URL u22) {
        throw new RuntimeException("Stub!");
    }

    protected String toExternalForm(URL u10) {
        throw new RuntimeException("Stub!");
    }

    protected void setURL(URL u10, String protocol, String host, int port, String authority, String userInfo, String path, String query, String ref) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void setURL(URL u10, String protocol, String host, int port, String file, String ref) {
        throw new RuntimeException("Stub!");
    }
}
