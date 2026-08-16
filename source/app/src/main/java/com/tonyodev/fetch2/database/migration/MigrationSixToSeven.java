package com.tonyodev.fetch2.database.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class MigrationSixToSeven extends Migration {
    public MigrationSixToSeven() {
        super(6, 7);
    }

    @Override
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        M.p(database, "database");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_auto_retry_max_attempts' INTEGER NOT NULL DEFAULT '0'");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_auto_retry_attempts' INTEGER NOT NULL DEFAULT '0'");
    }
}
