package android.database.sqlite;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteProgram.class
 */
public abstract class SQLiteProgram extends SQLiteClosable {
    public SQLiteProgram() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public final int getUniqueId() {
        throw new RuntimeException("Stub!");
    }

    public void bindNull(int index) {
        throw new RuntimeException("Stub!");
    }

    public void bindLong(int index, long value) {
        throw new RuntimeException("Stub!");
    }

    public void bindDouble(int index, double value) {
        throw new RuntimeException("Stub!");
    }

    public void bindString(int index, String value) {
        throw new RuntimeException("Stub!");
    }

    public void bindBlob(int index, byte[] value) {
        throw new RuntimeException("Stub!");
    }

    public void clearBindings() {
        throw new RuntimeException("Stub!");
    }

    public void bindAllArgsAsStrings(String[] bindArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onAllReferencesReleased() {
        throw new RuntimeException("Stub!");
    }
}
