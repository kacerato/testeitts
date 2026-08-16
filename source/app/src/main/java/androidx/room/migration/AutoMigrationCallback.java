package androidx.room.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;

public interface AutoMigrationCallback {
    default void onPostMigrate(SupportSQLiteDatabase db2) {
    }
}
