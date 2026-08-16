package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/StringIndexOutOfBoundsException.class
 */
public class StringIndexOutOfBoundsException extends IndexOutOfBoundsException {
    private static final long serialVersionUID = -6762910422159637258L;

    public StringIndexOutOfBoundsException() {
    }

    public StringIndexOutOfBoundsException(String s10) {
        super(s10);
    }

    public StringIndexOutOfBoundsException(int index) {
        super("String index out of range: " + index);
    }
}
