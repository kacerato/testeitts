package com.tonyodev.fetch2.database.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class MigrationFourToFive extends Migration {
    public MigrationFourToFive() {
        super(4, 5);
    }

    @Override
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        M.p(database, "database");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_download_on_enqueue' INTEGER NOT NULL DEFAULT 1");
    }
}
