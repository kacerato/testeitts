package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/Externalizable.class
 */
public interface Externalizable extends Serializable {
    void writeExternal(ObjectOutput objectOutput) throws IOException;

    void readExternal(ObjectInput objectInput) throws IOException, ClassNotFoundException;
}
