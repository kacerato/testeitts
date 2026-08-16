package com.tonyodev.fetch2.database.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class MigrationFiveToSix extends Migration {
    public MigrationFiveToSix() {
        super(5, 6);
    }

    @Override
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        M.p(database, "database");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_extras' TEXT NOT NULL DEFAULT '{}'");
    }
}
