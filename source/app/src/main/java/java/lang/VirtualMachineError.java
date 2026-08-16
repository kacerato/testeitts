package java.lang;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/VirtualMachineError.class
 */
public abstract class VirtualMachineError extends Error {
    private static final long serialVersionUID = 4161983926571568670L;

    public VirtualMachineError() {
    }

    public VirtualMachineError(String message) {
        super(message);
    }

    public VirtualMachineError(String message, Throwable cause) {
        super(message, cause);
    }

    public VirtualMachineError(Throwable cause) {
        super(cause);
    }
}
