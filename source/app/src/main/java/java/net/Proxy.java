package java.net;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/Proxy.class
 */
public class Proxy {
    public static final Proxy NO_PROXY = null;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/Proxy$Type.class
 */
    public enum Type {
        DIRECT,
        HTTP,
        SOCKS
    }

    public Proxy(Type type, SocketAddress sa2) {
        throw new RuntimeException("Stub!");
    }

    public Type type() {
        throw new RuntimeException("Stub!");
    }

    public SocketAddress address() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public final boolean equals(Object obj) {
        throw new RuntimeException("Stub!");
    }

    public final int hashCode() {
        throw new RuntimeException("Stub!");
    }
}
