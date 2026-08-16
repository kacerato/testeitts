package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ObjectInput.class
 */
public interface ObjectInput extends DataInput, AutoCloseable {
    Object readObject() throws ClassNotFoundException, IOException;

    int read() throws IOException;

    int read(byte[] bArr) throws IOException;

    int read(byte[] bArr, int i10, int i11) throws IOException;

    long skip(long j10) throws IOException;

    int available() throws IOException;

    @Override
    void close() throws IOException;
}
