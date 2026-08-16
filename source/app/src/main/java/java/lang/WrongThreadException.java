package java.lang;

public final class WrongThreadException extends RuntimeException {
    static final long serialVersionUID = 4676498871006316905L;

    public WrongThreadException() {
    }

    public WrongThreadException(String s10) {
        super(s10);
    }

    public WrongThreadException(String message, Throwable cause) {
        super(message, cause);
    }

    public WrongThreadException(Throwable cause) {
        super(cause);
    }
}
