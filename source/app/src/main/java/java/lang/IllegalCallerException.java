package java.lang;

public class IllegalCallerException extends RuntimeException {
    static final long serialVersionUID = -2349421918363102232L;

    public IllegalCallerException() {
    }

    public IllegalCallerException(String s10) {
        super(s10);
    }

    public IllegalCallerException(String message, Throwable cause) {
        super(message, cause);
    }

    public IllegalCallerException(Throwable cause) {
        super(cause);
    }
}
