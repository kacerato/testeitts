package android.database.sqlite;

import java.io.Closeable;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteClosable.class
 */
public abstract class SQLiteClosable implements Closeable {
    protected abstract void onAllReferencesReleased();

    public SQLiteClosable() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    protected void onAllReferencesReleasedFromContainer() {
        throw new RuntimeException("Stub!");
    }

    public void acquireReference() {
        throw new RuntimeException("Stub!");
    }

    public void releaseReference() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void releaseReferenceFromContainer() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }
}
