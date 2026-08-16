package java.lang.reflect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.ObjectStreamField;
import jdk.internal.access.SharedSecrets;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/reflect/UndeclaredThrowableException.class
 */
public class UndeclaredThrowableException extends RuntimeException {
    static final long serialVersionUID = 330127114055056639L;
    private static final ObjectStreamField[] serialPersistentFields = {new ObjectStreamField("undeclaredThrowable", Throwable.class)};

    public UndeclaredThrowableException(Throwable undeclaredThrowable) {
        super(null, undeclaredThrowable);
    }

    public UndeclaredThrowableException(Throwable undeclaredThrowable, String s10) {
        super(s10, undeclaredThrowable);
    }

    public Throwable getUndeclaredThrowable() {
        return super.getCause();
    }

    private void readObject(ObjectInputStream s10) throws IOException, ClassNotFoundException {
        ObjectInputStream.GetField fields = s10.readFields();
        Throwable exception = (Throwable) fields.get("undeclaredThrowable", (Object) null);
        if (exception != null) {
            SharedSecrets.getJavaLangAccess().setCause(this, exception);
        }
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        ObjectOutputStream.PutField fields = out.putFields();
        fields.put("undeclaredThrowable", super.getCause());
        out.writeFields();
    }
}
