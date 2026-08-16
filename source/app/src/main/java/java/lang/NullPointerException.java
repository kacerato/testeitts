package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/NullPointerException.class
 */
public class NullPointerException extends RuntimeException {
    private static final long serialVersionUID = 5162710183389028792L;
    private transient int extendedMessageState;
    private transient String extendedMessage;

    private native String getExtendedNPEMessage();

    public NullPointerException() {
    }

    public NullPointerException(String s10) {
        super(s10);
    }

    @Override
    public synchronized Throwable fillInStackTrace() {
        if (this.extendedMessageState == 0) {
            this.extendedMessageState = 1;
        } else if (this.extendedMessageState == 1) {
            this.extendedMessage = getExtendedNPEMessage();
            this.extendedMessageState = 2;
        }
        return super.fillInStackTrace();
    }

    @Override
    public String getMessage() {
        String str;
        String message = super.getMessage();
        if (message == null) {
            synchronized (this) {
                if (this.extendedMessageState == 1) {
                    this.extendedMessage = getExtendedNPEMessage();
                    this.extendedMessageState = 2;
                }
                str = this.extendedMessage;
            }
            return str;
        }
        return message;
    }
}
