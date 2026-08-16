package androidx.room;

import android.database.Cursor;
import androidx.room.migration.Migration;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.Iterator;
import java.util.List;

public class RoomOpenHelper extends SupportSQLiteOpenHelper.Callback {
    private DatabaseConfiguration mConfiguration;
    private final Delegate mDelegate;
    private final String mIdentityHash;
    private final String mLegacyHash;

    public static abstract class Delegate {
        public final int version;

        public Delegate(int version) {
            this.version = version;
        }

        public abstract void createAllTables(SupportSQLiteDatabase database);

        public abstract void dropAllTables(SupportSQLiteDatabase database);

        public abstract void onCreate(SupportSQLiteDatabase database);

        public abstract void onOpen(SupportSQLiteDatabase database);

        public void onPostMigrate(SupportSQLiteDatabase database) {
        }

        public void onPreMigrate(SupportSQLiteDatabase database) {
        }

        public ValidationResult onValidateSchema(SupportSQLiteDatabase db2) {
            validateMigration(db2);
            return new ValidationResult(true, null);
        }

        @Deprecated
        public void validateMigration(SupportSQLiteDatabase db2) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }
    }

    public static class ValidationResult {
        public final String expectedFoundMsg;
        public final boolean isValid;

        public ValidationResult(boolean isValid, String expectedFoundMsg) {
            this.isValid = isValid;
            this.expectedFoundMsg = expectedFoundMsg;
        }
    }

    public RoomOpenHelper(DatabaseConfiguration configuration, Delegate delegate, String identityHash, String legacyHash) {
        super(delegate.version);
        this.mConfiguration = configuration;
        this.mDelegate = delegate;
        this.mIdentityHash = identityHash;
        this.mLegacyHash = legacyHash;
    }

    private void checkIdentity(SupportSQLiteDatabase db2) {
        if (!hasRoomMasterTable(db2)) {
            ValidationResult onValidateSchema = this.mDelegate.onValidateSchema(db2);
            if (onValidateSchema.isValid) {
                this.mDelegate.onPostMigrate(db2);
                updateIdentity(db2);
                return;
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg);
            }
        }
        Cursor query = db2.query(new SimpleSQLiteQuery(RoomMasterTable.READ_QUERY));
        try {
            String string = query.moveToFirst() ? query.getString(0) : null;
            query.close();
            if (!this.mIdentityHash.equals(string) && !this.mLegacyHash.equals(string)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th2) {
            query.close();
            throw th2;
        }
    }

    private void createMasterTableIfNotExists(SupportSQLiteDatabase db2) {
        db2.execSQL(RoomMasterTable.CREATE_QUERY);
    }

    private static boolean hasEmptySchema(SupportSQLiteDatabase db2) {
        Cursor query = db2.query("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z10 = false;
            if (query.moveToFirst()) {
                if (query.getInt(0) == 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            query.close();
        }
    }

    private static boolean hasRoomMasterTable(SupportSQLiteDatabase db2) {
        Cursor query = db2.query("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z10 = false;
            if (query.moveToFirst()) {
                if (query.getInt(0) != 0) {
                    z10 = true;
                }
            }
            return z10;
        } finally {
            query.close();
        }
    }

    private void updateIdentity(SupportSQLiteDatabase db2) {
        createMasterTableIfNotExists(db2);
        db2.execSQL(RoomMasterTable.createInsertQuery(this.mIdentityHash));
    }

    @Override
    public void onConfigure(SupportSQLiteDatabase db2) {
        super.onConfigure(db2);
    }

    @Override
    public void onCreate(SupportSQLiteDatabase db2) {
        boolean hasEmptySchema = hasEmptySchema(db2);
        this.mDelegate.createAllTables(db2);
        if (!hasEmptySchema) {
            ValidationResult onValidateSchema = this.mDelegate.onValidateSchema(db2);
            if (!onValidateSchema.isValid) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + onValidateSchema.expectedFoundMsg);
            }
        }
        updateIdentity(db2);
        this.mDelegate.onCreate(db2);
    }

    @Override
    public void onDowngrade(SupportSQLiteDatabase db2, int oldVersion, int newVersion) {
        onUpgrade(db2, oldVersion, newVersion);
    }

    @Override
    public void onOpen(SupportSQLiteDatabase db2) {
        super.onOpen(db2);
        checkIdentity(db2);
        this.mDelegate.onOpen(db2);
        this.mConfiguration = null;
    }

    @Override
    public void onUpgrade(SupportSQLiteDatabase db2, int oldVersion, int newVersion) {
        List<Migration> findMigrationPath;
        DatabaseConfiguration databaseConfiguration = this.mConfiguration;
        if (databaseConfiguration == null || (findMigrationPath = databaseConfiguration.migrationContainer.findMigrationPath(oldVersion, newVersion)) == null) {
            DatabaseConfiguration databaseConfiguration2 = this.mConfiguration;
            if (databaseConfiguration2 != null && !databaseConfiguration2.isMigrationRequired(oldVersion, newVersion)) {
                this.mDelegate.dropAllTables(db2);
                this.mDelegate.createAllTables(db2);
                return;
            }
            throw new IllegalStateException("A migration from " + oldVersion + " to " + newVersion + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
        this.mDelegate.onPreMigrate(db2);
        Iterator<Migration> it = findMigrationPath.iterator();
        while (it.hasNext()) {
            it.next().migrate(db2);
        }
        ValidationResult onValidateSchema = this.mDelegate.onValidateSchema(db2);
        if (onValidateSchema.isValid) {
            this.mDelegate.onPostMigrate(db2);
            updateIdentity(db2);
        } else {
            throw new IllegalStateException("Migration didn't properly handle: " + onValidateSchema.expectedFoundMsg);
        }
    }

    public RoomOpenHelper(DatabaseConfiguration configuration, Delegate delegate, String legacyHash) {
        this(configuration, delegate, "", legacyHash);
    }
}
