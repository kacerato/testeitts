package java.lang.module;

public class FindException extends RuntimeException {
    private static final long serialVersionUID = -5817081036963388391L;

    public FindException() {
    }

    public FindException(String msg) {
        super(msg);
    }

    public FindException(Throwable cause) {
        super(cause);
    }

    public FindException(String msg, Throwable cause) {
        super(msg, cause);
    }
}
