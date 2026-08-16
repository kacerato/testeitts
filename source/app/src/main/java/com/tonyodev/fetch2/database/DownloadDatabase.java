package com.tonyodev.fetch2.database;

import Lf.o;
import androidx.room.Database;
import androidx.room.RoomDatabase;
import androidx.room.TypeConverters;
import com.tonyodev.fetch2.database.migration.Migration;
import com.tonyodev.fetch2.database.migration.MigrationFiveToSix;
import com.tonyodev.fetch2.database.migration.MigrationFourToFive;
import com.tonyodev.fetch2.database.migration.MigrationOneToTwo;
import com.tonyodev.fetch2.database.migration.MigrationSixToSeven;
import com.tonyodev.fetch2.database.migration.MigrationThreeToFour;
import com.tonyodev.fetch2.database.migration.MigrationTwoToThree;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;

@TypeConverters({Converter.class})
@Database(entities = {DownloadInfo.class}, exportSchema = false, version = 7)
public abstract class DownloadDatabase extends RoomDatabase {

    @NotNull
    public static final String COLUMN_AUTO_RETRY_ATTEMPTS = "_auto_retry_attempts";

    @NotNull
    public static final String COLUMN_AUTO_RETRY_MAX_ATTEMPTS = "_auto_retry_max_attempts";

    @NotNull
    public static final String COLUMN_CREATED = "_created";

    @NotNull
    public static final String COLUMN_DOWNLOADED = "_written_bytes";

    @NotNull
    public static final String COLUMN_DOWNLOAD_ON_ENQUEUE = "_download_on_enqueue";

    @NotNull
    public static final String COLUMN_ENQUEUE_ACTION = "_enqueue_action";

    @NotNull
    public static final String COLUMN_ERROR = "_error";

    @NotNull
    public static final String COLUMN_EXTRAS = "_extras";

    @NotNull
    public static final String COLUMN_FILE = "_file";

    @NotNull
    public static final String COLUMN_GROUP = "_group";

    @NotNull
    public static final String COLUMN_HEADERS = "_headers";

    @NotNull
    public static final String COLUMN_ID = "_id";

    @NotNull
    public static final String COLUMN_IDENTIFIER = "_identifier";

    @NotNull
    public static final String COLUMN_NAMESPACE = "_namespace";

    @NotNull
    public static final String COLUMN_NETWORK_TYPE = "_network_type";

    @NotNull
    public static final String COLUMN_PRIORITY = "_priority";

    @NotNull
    public static final String COLUMN_STATUS = "_status";

    @NotNull
    public static final String COLUMN_TAG = "_tag";

    @NotNull
    public static final String COLUMN_TOTAL = "_total_bytes";

    @NotNull
    public static final String COLUMN_URL = "_url";

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int DATABASE_VERSION = 7;
    public static final int OLD_DATABASE_VERSION = 6;

    @NotNull
    public static final String TABLE_NAME = "requests";

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @o
        @NotNull
        public final Migration[] getMigrations() {
            return new Migration[]{new MigrationOneToTwo(), new MigrationTwoToThree(), new MigrationThreeToFour(), new MigrationFourToFive(), new MigrationFiveToSix(), new MigrationSixToSeven()};
        }

        private Companion() {
        }
    }

    @o
    @NotNull
    public static final Migration[] getMigrations() {
        return Companion.getMigrations();
    }

    @NotNull
    public abstract DownloadDao requestDao();

    public final boolean wasRowInserted(long j10) {
        return j10 != -1;
    }
}
