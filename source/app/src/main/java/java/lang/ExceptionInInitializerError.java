package java.lang;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ExceptionInInitializerError.class
 */
public class ExceptionInInitializerError extends LinkageError {
    private static final long serialVersionUID = 1521711792217232256L;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("exception", Throwable.class)};

    public ExceptionInInitializerError() {
        initCause(null);
    }

    public ExceptionInInitializerError(Throwable thrown) {
        super(null, thrown);
    }

    public ExceptionInInitializerError(String s10) {
        super(s10, null);
    }

    public Throwable getException() {
        return super.getCause();
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        ObjectInputStream.GetField fields = s10.readFields();
        Throwable exception = (Throwable) fields.get("exception", (Object) null);
        if (exception != null) {
            setCause(exception);
        }
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        ObjectOutputStream.PutField fields = out.putFields();
        fields.put("exception", super.getCause());
        out.writeFields();
    }
}
