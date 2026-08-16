package java.lang.classfile.constantpool;

public class ConstantPoolException extends IllegalArgumentException {
    private static final long serialVersionUID = 7245472922409094120L;

    public ConstantPoolException() {
    }

    public ConstantPoolException(String message) {
        super(message);
    }

    public ConstantPoolException(Throwable cause) {
        super(cause);
    }

    public ConstantPoolException(String message, Throwable cause) {
        super(message, cause);
    }
}
