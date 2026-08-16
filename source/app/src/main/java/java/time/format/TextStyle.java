package java.time.format;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/time/format/TextStyle.class
 */
public enum TextStyle {
    FULL,
    FULL_STANDALONE,
    NARROW,
    NARROW_STANDALONE,
    SHORT,
    SHORT_STANDALONE;

    public boolean isStandalone() {
        throw new RuntimeException("Stub!");
    }

    public TextStyle asStandalone() {
        throw new RuntimeException("Stub!");
    }

    public TextStyle asNormal() {
        throw new RuntimeException("Stub!");
    }
}
