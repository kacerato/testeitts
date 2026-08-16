package java.net;

import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/URL.class
 */
public final class URL implements Serializable {
    public URL(String protocol, String host, int port, String file) throws MalformedURLException {
        throw new RuntimeException("Stub!");
    }

    public URL(String protocol, String host, String file) throws MalformedURLException {
        throw new RuntimeException("Stub!");
    }

    public URL(String protocol, String host, int port, String file, URLStreamHandler handler) throws MalformedURLException {
        throw new RuntimeException("Stub!");
    }

    public URL(String spec) throws MalformedURLException {
        throw new RuntimeException("Stub!");
    }

    public URL(URL context, String spec) throws MalformedURLException {
        throw new RuntimeException("Stub!");
    }

    public URL(URL context, String spec, URLStreamHandler handler) throws MalformedURLException {
        throw new RuntimeException("Stub!");
    }

    public String getQuery() {
        throw new RuntimeException("Stub!");
    }

    public String getPath() {
        throw new RuntimeException("Stub!");
    }

    public String getUserInfo() {
        throw new RuntimeException("Stub!");
    }

    public String getAuthority() {
        throw new RuntimeException("Stub!");
    }

    public int getPort() {
        throw new RuntimeException("Stub!");
    }

    public int getDefaultPort() {
        throw new RuntimeException("Stub!");
    }

    public String getProtocol() {
        throw new RuntimeException("Stub!");
    }

    public String getHost() {
        throw new RuntimeException("Stub!");
    }

    public String getFile() {
        throw new RuntimeException("Stub!");
    }

    public String getRef() {
        throw new RuntimeException("Stub!");
    }

    public boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public synchronized int hashCode() {
        throw new RuntimeException("Stub!");
    }

    public boolean sameFile(URL other) {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public String toExternalForm() {
        throw new RuntimeException("Stub!");
    }

    public URI toURI() throws URISyntaxException {
        throw new RuntimeException("Stub!");
    }

    public URLConnection openConnection() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public URLConnection openConnection(Proxy proxy) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final InputStream openStream() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final Object getContent() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public final Object getContent(Class[] classes) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public static void setURLStreamHandlerFactory(URLStreamHandlerFactory fac) {
        throw new RuntimeException("Stub!");
    }
}
