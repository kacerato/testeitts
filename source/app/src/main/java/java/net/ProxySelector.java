package java.net;

import java.io.IOException;
import java.util.List;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/ProxySelector.class
 */
public abstract class ProxySelector {
    public abstract List<Proxy> select(URI uri);

    public abstract void connectFailed(URI uri, SocketAddress socketAddress, IOException iOException);

    public ProxySelector() {
        throw new RuntimeException("Stub!");
    }

    public static ProxySelector getDefault() {
        throw new RuntimeException("Stub!");
    }

    public static void setDefault(ProxySelector ps) {
        throw new RuntimeException("Stub!");
    }
}
