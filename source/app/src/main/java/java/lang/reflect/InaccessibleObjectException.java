package java.lang.reflect;

public class InaccessibleObjectException extends RuntimeException {
    private static final long serialVersionUID = 4158786093378140901L;

    public InaccessibleObjectException() {
    }

    public InaccessibleObjectException(String msg) {
        super(msg);
    }
}
