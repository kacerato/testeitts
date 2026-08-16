package javax.net.ssl;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLEngineResult.class
 */
public class SSLEngineResult {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLEngineResult$HandshakeStatus.class
 */
    public enum HandshakeStatus {
        FINISHED,
        NEED_TASK,
        NEED_UNWRAP,
        NEED_WRAP,
        NOT_HANDSHAKING
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:javax/net/ssl/SSLEngineResult$Status.class
 */
    public enum Status {
        BUFFER_OVERFLOW,
        BUFFER_UNDERFLOW,
        CLOSED,
        OK
    }

    public SSLEngineResult(Status status, HandshakeStatus handshakeStatus, int bytesConsumed, int bytesProduced) {
        throw new RuntimeException("Stub!");
    }

    public final Status getStatus() {
        throw new RuntimeException("Stub!");
    }

    public final HandshakeStatus getHandshakeStatus() {
        throw new RuntimeException("Stub!");
    }

    public final int bytesConsumed() {
        throw new RuntimeException("Stub!");
    }

    public final int bytesProduced() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }
}
