package android.database.sqlite;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteCursorDriver.class
 */
public interface SQLiteCursorDriver {
    Cursor query(SQLiteDatabase.CursorFactory cursorFactory, String[] strArr);

    void cursorDeactivated();

    void cursorRequeried(Cursor cursor);

    void cursorClosed();

    void setBindArguments(String[] strArr);
}
