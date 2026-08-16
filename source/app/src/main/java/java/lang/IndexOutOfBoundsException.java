package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/IndexOutOfBoundsException.class
 */
public class IndexOutOfBoundsException extends RuntimeException {
    private static final long serialVersionUID = 234122996006267687L;

    public IndexOutOfBoundsException() {
    }

    public IndexOutOfBoundsException(String s10) {
        super(s10);
    }

    public IndexOutOfBoundsException(int index) {
        super("Index out of range: " + index);
    }

    public IndexOutOfBoundsException(long index) {
        super("Index out of range: " + index);
    }
}
