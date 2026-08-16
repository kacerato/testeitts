package java.lang;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/ClassNotFoundException.class
 */
public class ClassNotFoundException extends ReflectiveOperationException {
    private static final long serialVersionUID = 9176873029745254542L;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("ex", Throwable.class)};

    public ClassNotFoundException() {
        super((Throwable) null);
    }

    public ClassNotFoundException(String s10) {
        super(s10, null);
    }

    public ClassNotFoundException(String s10, Throwable ex) {
        super(s10, ex);
    }

    public Throwable getException() {
        return super.getCause();
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        ObjectInputStream.GetField fields = s10.readFields();
        Throwable exception = (Throwable) fields.get("ex", (Object) null);
        if (exception != null) {
            setCause(exception);
        }
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        ObjectOutputStream.PutField fields = out.putFields();
        fields.put("ex", super.getCause());
        out.writeFields();
    }
}
