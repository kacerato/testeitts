package com.tonyodev.fetch2.database.migration;

import androidx.sqlite.db.SupportSQLiteDatabase;
import com.tonyodev.fetch2.EnqueueAction;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

public final class MigrationTwoToThree extends Migration {
    public MigrationTwoToThree() {
        super(2, 3);
    }

    @Override
    public void migrate(@NotNull SupportSQLiteDatabase database) {
        M.p(database, "database");
        database.execSQL("ALTER TABLE 'requests' ADD COLUMN '_enqueue_action' INTEGER NOT NULL DEFAULT " + EnqueueAction.REPLACE_EXISTING.getValue());
    }
}
