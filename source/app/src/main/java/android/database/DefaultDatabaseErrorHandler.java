package android.database;

import android.database.sqlite.SQLiteDatabase;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/DefaultDatabaseErrorHandler.class
 */
public final class DefaultDatabaseErrorHandler implements DatabaseErrorHandler {
    public DefaultDatabaseErrorHandler() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public void onCorruption(SQLiteDatabase dbObj) {
        throw new RuntimeException("Stub!");
    }
}
