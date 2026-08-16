package android.database;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/AbstractWindowedCursor.class
 */
public abstract class AbstractWindowedCursor extends AbstractCursor {
    protected CursorWindow mWindow;

    public AbstractWindowedCursor() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte[] getBlob(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getString(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void copyStringToBuffer(int columnIndex, CharArrayBuffer buffer) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public short getShort(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getInt(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getLong(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getFloat(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public double getDouble(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isNull(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isBlob(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isString(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isLong(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isFloat(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getType(int columnIndex) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void checkPosition() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public CursorWindow getWindow() {
        throw new RuntimeException("Stub!");
    }

    public void setWindow(CursorWindow window) {
        throw new RuntimeException("Stub!");
    }

    public boolean hasWindow() {
        throw new RuntimeException("Stub!");
    }
}
