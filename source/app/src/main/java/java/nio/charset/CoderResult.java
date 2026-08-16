package java.nio.charset;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/nio/charset/CoderResult.class
 */
public class CoderResult {
    public static final CoderResult OVERFLOW = null;
    public static final CoderResult UNDERFLOW = null;

    CoderResult() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public boolean isUnderflow() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOverflow() {
        throw new RuntimeException("Stub!");
    }

    public boolean isError() {
        throw new RuntimeException("Stub!");
    }

    public boolean isMalformed() {
        throw new RuntimeException("Stub!");
    }

    public boolean isUnmappable() {
        throw new RuntimeException("Stub!");
    }

    public int length() {
        throw new RuntimeException("Stub!");
    }

    public static CoderResult malformedForLength(int length) {
        throw new RuntimeException("Stub!");
    }

    public static CoderResult unmappableForLength(int length) {
        throw new RuntimeException("Stub!");
    }

    public void throwException() throws CharacterCodingException {
        throw new RuntimeException("Stub!");
    }
}
