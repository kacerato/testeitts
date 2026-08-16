package android.database.sqlite;

import android.database.AbstractWindowedCursor;
import android.database.CursorWindow;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteCursor.class
 */
public class SQLiteCursor extends AbstractWindowedCursor {
    @Deprecated
    public SQLiteCursor(SQLiteDatabase db2, SQLiteCursorDriver driver, String editTable, SQLiteQuery query) {
        throw new RuntimeException("Stub!");
    }

    public SQLiteCursor(SQLiteCursorDriver driver, String editTable, SQLiteQuery query) {
        throw new RuntimeException("Stub!");
    }

    public SQLiteDatabase getDatabase() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean onMove(int oldPosition, int newPosition) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getCount() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public int getColumnIndex(String columnName) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] getColumnNames() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void deactivate() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void close() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean requery() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void setWindow(CursorWindow window) {
        throw new RuntimeException("Stub!");
    }

    public void setSelectionArguments(String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void finalize() {
        throw new RuntimeException("Stub!");
    }
}
