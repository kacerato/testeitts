package com.tonyodev.fetch2.database.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class MigrationThreeToFour extends Migration {
    public MigrationThreeToFour() {
        super(3, 4);
    }

    @Override
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        M.p(database, "database");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_identifier' INTEGER NOT NULL DEFAULT 0");
    }
}
