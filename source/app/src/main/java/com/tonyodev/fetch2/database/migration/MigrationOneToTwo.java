package com.tonyodev.fetch2.database.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class MigrationOneToTwo extends Migration {
    public MigrationOneToTwo() {
        super(1, 2);
    }

    @Override
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        M.p(database, "database");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_tag' TEXT NULL DEFAULT NULL");
    }
}
