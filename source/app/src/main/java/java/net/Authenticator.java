package java.net;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/Authenticator.class
 */
public abstract class Authenticator {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/net/Authenticator$RequestorType.class
 */
    public enum RequestorType {
        PROXY,
        SERVER
    }

    public Authenticator() {
        throw new RuntimeException("Stub!");
    }

    public static synchronized void setDefault(Authenticator a10) {
        throw new RuntimeException("Stub!");
    }

    public static PasswordAuthentication requestPasswordAuthentication(InetAddress addr, int port, String protocol, String prompt, String scheme) {
        throw new RuntimeException("Stub!");
    }

    public static PasswordAuthentication requestPasswordAuthentication(String host, InetAddress addr, int port, String protocol, String prompt, String scheme) {
        throw new RuntimeException("Stub!");
    }

    public static PasswordAuthentication requestPasswordAuthentication(String host, InetAddress addr, int port, String protocol, String prompt, String scheme, URL url, RequestorType reqType) {
        throw new RuntimeException("Stub!");
    }

    protected final String getRequestingHost() {
        throw new RuntimeException("Stub!");
    }

    protected final InetAddress getRequestingSite() {
        throw new RuntimeException("Stub!");
    }

    protected final int getRequestingPort() {
        throw new RuntimeException("Stub!");
    }

    protected final String getRequestingProtocol() {
        throw new RuntimeException("Stub!");
    }

    protected final String getRequestingPrompt() {
        throw new RuntimeException("Stub!");
    }

    protected final String getRequestingScheme() {
        throw new RuntimeException("Stub!");
    }

    protected PasswordAuthentication getPasswordAuthentication() {
        throw new RuntimeException("Stub!");
    }

    protected URL getRequestingURL() {
        throw new RuntimeException("Stub!");
    }

    protected RequestorType getRequestorType() {
        throw new RuntimeException("Stub!");
    }
}
