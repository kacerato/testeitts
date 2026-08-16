package android.database;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/MatrixCursor.class
 */
public class MatrixCursor extends AbstractCursor {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/MatrixCursor$RowBuilder.class
 */
    public class RowBuilder {
        RowBuilder() {
            throw new RuntimeException("Stub!");
        }

        public RowBuilder add(Object columnValue) {
            throw new RuntimeException("Stub!");
        }

        public RowBuilder add(String columnName, Object value) {
            throw new RuntimeException("Stub!");
        }
    }

    public MatrixCursor(String[] columnNames, int initialCapacity) {
        throw new RuntimeException("Stub!");
    }

    public MatrixCursor(String[] columnNames) {
        throw new RuntimeException("Stub!");
    }

    public RowBuilder newRow() {
        throw new RuntimeException("Stub!");
    }

    public void addRow(Object[] columnValues) {
        throw new RuntimeException("Stub!");
    }

    public void addRow(Iterable<?> columnValues) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getColumnNames() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String getString(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public short getShort(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getInt(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public long getLong(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public float getFloat(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public double getDouble(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public byte[] getBlob(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getType(int column) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean isNull(int column) {
        throw new RuntimeException("Stub!");
    }
}
