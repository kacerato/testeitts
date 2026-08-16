package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ObjectOutput.class
 */
public interface ObjectOutput extends DataOutput, AutoCloseable {
    void writeObject(Object obj) throws IOException;

    @Override
    void write(int i10) throws IOException;

    @Override
    void write(byte[] bArr) throws IOException;

    @Override
    void write(byte[] bArr, int i10, int i11) throws IOException;

    void flush() throws IOException;

    @Override
    void close() throws IOException;
}
