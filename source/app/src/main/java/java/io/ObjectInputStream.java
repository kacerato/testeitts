package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ObjectInputStream.class
 */
public class ObjectInputStream extends InputStream implements ObjectInput, ObjectStreamConstants {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ObjectInputStream$GetField.class
 */
    public static abstract class GetField {
        public abstract ObjectStreamClass getObjectStreamClass();

        public abstract boolean defaulted(String str) throws IOException;

        public abstract boolean get(String str, boolean z10) throws IOException;

        public abstract byte get(String str, byte b10) throws IOException;

        public abstract char get(String str, char c10) throws IOException;

        public abstract short get(String str, short s10) throws IOException;

        public abstract int get(String str, int i10) throws IOException;

        public abstract long get(String str, long j10) throws IOException;

        public abstract float get(String str, float f10) throws IOException;

        public abstract double get(String str, double d10) throws IOException;

        public abstract Object get(String str, Object obj) throws IOException;

        public GetField() {
            throw new RuntimeException("Stub!");
        }
    }

    public ObjectInputStream(InputStream in2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected ObjectInputStream() throws IOException, SecurityException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final Object readObject() throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    protected Object readObjectOverride() throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public Object readUnshared() throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void defaultReadObject() throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public GetField readFields() throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    public void registerValidation(ObjectInputValidation obj, int prio) throws NotActiveException, InvalidObjectException {
        throw new RuntimeException("Stub!");
    }

    public Class<?> resolveClass(ObjectStreamClass desc) throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    protected Class<?> resolveProxyClass(String[] interfaces) throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    protected Object resolveObject(Object obj) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected boolean enableResolveObject(boolean enable) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    protected void readStreamHeader() throws IOException, StreamCorruptedException {
        throw new RuntimeException("Stub!");
    }

    protected ObjectStreamClass readClassDescriptor() throws IOException, ClassNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int read(byte[] buf, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int available() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean readBoolean() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte readByte() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int readUnsignedByte() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public char readChar() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public short readShort() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int readUnsignedShort() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int readInt() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long readLong() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float readFloat() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public double readDouble() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void readFully(byte[] buf) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void readFully(byte[] buf, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int skipBytes(int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    @Deprecated
    public String readLine() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String readUTF() throws IOException {
        throw new RuntimeException("Stub!");
    }
}
