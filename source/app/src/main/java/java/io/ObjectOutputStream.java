package java.io;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ObjectOutputStream.class
 */
public class ObjectOutputStream extends OutputStream implements ObjectOutput, ObjectStreamConstants {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/io/ObjectOutputStream$PutField.class
 */
    public static abstract class PutField {
        public abstract void put(String str, boolean z10);

        public abstract void put(String str, byte b10);

        public abstract void put(String str, char c10);

        public abstract void put(String str, short s10);

        public abstract void put(String str, int i10);

        public abstract void put(String str, long j10);

        public abstract void put(String str, float f10);

        public abstract void put(String str, double d10);

        public abstract void put(String str, Object obj);

        @Deprecated
        public abstract void write(ObjectOutput objectOutput) throws IOException;

        public PutField() {
            throw new RuntimeException("Stub!");
        }
    }

    public ObjectOutputStream(OutputStream out) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected ObjectOutputStream() throws IOException, SecurityException {
        throw new RuntimeException("Stub!");
    }

    public void useProtocolVersion(int version) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public final void writeObject(Object obj) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void writeObjectOverride(Object obj) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void writeUnshared(Object obj) throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void defaultWriteObject() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public PutField putFields() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void writeFields() throws IOException {
        throw new RuntimeException("Stub!");
    }

    public void reset() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void annotateClass(Class<?> cl2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void annotateProxyClass(Class<?> cl2) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected Object replaceObject(Object obj) throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected boolean enableReplaceObject(boolean enable) throws SecurityException {
        throw new RuntimeException("Stub!");
    }

    protected void writeStreamHeader() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void writeClassDescriptor(ObjectStreamClass desc) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(int val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(byte[] buf) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void write(byte[] buf, int off, int len) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void flush() throws IOException {
        throw new RuntimeException("Stub!");
    }

    protected void drain() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeBoolean(boolean val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeByte(int val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeShort(int val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeChar(int val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeInt(int val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeLong(long val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeFloat(float val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeDouble(double val) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeBytes(String str) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeChars(String str) throws IOException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void writeUTF(String str) throws IOException {
        throw new RuntimeException("Stub!");
    }
}
