package android.database.sqlite;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import java.io.File;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteDatabase.class
 */
public final class SQLiteDatabase extends SQLiteClosable {
    public static final int CONFLICT_ABORT = 2;
    public static final int CONFLICT_FAIL = 3;
    public static final int CONFLICT_IGNORE = 4;
    public static final int CONFLICT_NONE = 0;
    public static final int CONFLICT_REPLACE = 5;
    public static final int CONFLICT_ROLLBACK = 1;
    public static final int CREATE_IF_NECESSARY = 268435456;
    public static final int ENABLE_WRITE_AHEAD_LOGGING = 536870912;
    public static final int MAX_SQL_CACHE_SIZE = 100;
    public static final int NO_LOCALIZED_COLLATORS = 16;
    public static final int OPEN_READONLY = 1;
    public static final int OPEN_READWRITE = 0;
    public static final int SQLITE_MAX_LIKE_PATTERN_LENGTH = 50000;

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/database/sqlite/SQLiteDatabase$CursorFactory.class
 */
    public interface CursorFactory {
        Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery);
    }

    SQLiteDatabase() {
        throw new RuntimeException("Stub!");
    }

    protected void finalize() throws Throwable {
        throw new RuntimeException("Stub!");
    }

    @Override
    protected void onAllReferencesReleased() {
        throw new RuntimeException("Stub!");
    }

    public static int releaseMemory() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void setLockingEnabled(boolean lockingEnabled) {
        throw new RuntimeException("Stub!");
    }

    public void beginTransaction() {
        throw new RuntimeException("Stub!");
    }

    public void beginTransactionNonExclusive() {
        throw new RuntimeException("Stub!");
    }

    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        throw new RuntimeException("Stub!");
    }

    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
        throw new RuntimeException("Stub!");
    }

    public void endTransaction() {
        throw new RuntimeException("Stub!");
    }

    public void setTransactionSuccessful() {
        throw new RuntimeException("Stub!");
    }

    public boolean inTransaction() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDbLockedByCurrentThread() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean isDbLockedByOtherThreads() {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public boolean yieldIfContended() {
        throw new RuntimeException("Stub!");
    }

    public boolean yieldIfContendedSafely() {
        throw new RuntimeException("Stub!");
    }

    public boolean yieldIfContendedSafely(long sleepAfterYieldDelay) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public Map<String, String> getSyncedTables() {
        throw new RuntimeException("Stub!");
    }

    public static SQLiteDatabase openDatabase(String path, CursorFactory factory, int flags) {
        throw new RuntimeException("Stub!");
    }

    public static SQLiteDatabase openDatabase(String path, CursorFactory factory, int flags, DatabaseErrorHandler errorHandler) {
        throw new RuntimeException("Stub!");
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, CursorFactory factory) {
        throw new RuntimeException("Stub!");
    }

    public static SQLiteDatabase openOrCreateDatabase(String path, CursorFactory factory) {
        throw new RuntimeException("Stub!");
    }

    public static SQLiteDatabase openOrCreateDatabase(String path, CursorFactory factory, DatabaseErrorHandler errorHandler) {
        throw new RuntimeException("Stub!");
    }

    public static boolean deleteDatabase(File file) {
        throw new RuntimeException("Stub!");
    }

    public static SQLiteDatabase create(CursorFactory factory) {
        throw new RuntimeException("Stub!");
    }

    public int getVersion() {
        throw new RuntimeException("Stub!");
    }

    public void setVersion(int version) {
        throw new RuntimeException("Stub!");
    }

    public long getMaximumSize() {
        throw new RuntimeException("Stub!");
    }

    public long setMaximumSize(long numBytes) {
        throw new RuntimeException("Stub!");
    }

    public long getPageSize() {
        throw new RuntimeException("Stub!");
    }

    public void setPageSize(long numBytes) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void markTableSyncable(String table, String deletedTable) {
        throw new RuntimeException("Stub!");
    }

    @Deprecated
    public void markTableSyncable(String table, String foreignKey, String updateTable) {
        throw new RuntimeException("Stub!");
    }

    public static String findEditTable(String tables) {
        throw new RuntimeException("Stub!");
    }

    public SQLiteStatement compileStatement(String sql) throws SQLException {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(boolean distinct, String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(boolean distinct, String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean distinct, String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        throw new RuntimeException("Stub!");
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean distinct, String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy) {
        throw new RuntimeException("Stub!");
    }

    public Cursor query(String table, String[] columns, String selection, String[] selectionArgs, String groupBy, String having, String orderBy, String limit) {
        throw new RuntimeException("Stub!");
    }

    public Cursor rawQuery(String sql, String[] selectionArgs) {
        throw new RuntimeException("Stub!");
    }

    public Cursor rawQuery(String sql, String[] selectionArgs, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String sql, String[] selectionArgs, String editTable) {
        throw new RuntimeException("Stub!");
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String sql, String[] selectionArgs, String editTable, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public long insert(String table, String nullColumnHack, ContentValues values) {
        throw new RuntimeException("Stub!");
    }

    public long insertOrThrow(String table, String nullColumnHack, ContentValues values) throws SQLException {
        throw new RuntimeException("Stub!");
    }

    public long replace(String table, String nullColumnHack, ContentValues initialValues) {
        throw new RuntimeException("Stub!");
    }

    public long replaceOrThrow(String table, String nullColumnHack, ContentValues initialValues) throws SQLException {
        throw new RuntimeException("Stub!");
    }

    public long insertWithOnConflict(String table, String nullColumnHack, ContentValues initialValues, int conflictAlgorithm) {
        throw new RuntimeException("Stub!");
    }

    public int delete(String table, String whereClause, String[] whereArgs) {
        throw new RuntimeException("Stub!");
    }

    public int update(String table, ContentValues values, String whereClause, String[] whereArgs) {
        throw new RuntimeException("Stub!");
    }

    public int updateWithOnConflict(String table, ContentValues values, String whereClause, String[] whereArgs, int conflictAlgorithm) {
        throw new RuntimeException("Stub!");
    }

    public void execSQL(String sql) throws SQLException {
        throw new RuntimeException("Stub!");
    }

    public void execSQL(String sql, Object[] bindArgs) throws SQLException {
        throw new RuntimeException("Stub!");
    }

    public void validateSql(String sql, CancellationSignal cancellationSignal) {
        throw new RuntimeException("Stub!");
    }

    public boolean isReadOnly() {
        throw new RuntimeException("Stub!");
    }

    public boolean isOpen() {
        throw new RuntimeException("Stub!");
    }

    public boolean needUpgrade(int newVersion) {
        throw new RuntimeException("Stub!");
    }

    public final String getPath() {
        throw new RuntimeException("Stub!");
    }

    public void setLocale(Locale locale) {
        throw new RuntimeException("Stub!");
    }

    public void setMaxSqlCacheSize(int cacheSize) {
        throw new RuntimeException("Stub!");
    }

    public void setForeignKeyConstraintsEnabled(boolean enable) {
        throw new RuntimeException("Stub!");
    }

    public boolean enableWriteAheadLogging() {
        throw new RuntimeException("Stub!");
    }

    public void disableWriteAheadLogging() {
        throw new RuntimeException("Stub!");
    }

    public boolean isWriteAheadLoggingEnabled() {
        throw new RuntimeException("Stub!");
    }

    public List<Pair<String, String>> getAttachedDbs() {
        throw new RuntimeException("Stub!");
    }

    public boolean isDatabaseIntegrityOk() {
        throw new RuntimeException("Stub!");
    }

    public String toString() {
        throw new RuntimeException("Stub!");
    }

    public static final class OpenParams {
        OpenParams(int openFlags, CursorFactory cursorFactory, DatabaseErrorHandler errorHandler, int lookasideSlotSize, int lookasideSlotCount, long idleConnectionTimeout, String journalMode, String syncMode) {
            throw new RuntimeException("Stub!");
        }

        public int getLookasideSlotSize() {
            throw new RuntimeException("Stub!");
        }

        public int getLookasideSlotCount() {
            throw new RuntimeException("Stub!");
        }

        public int getOpenFlags() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNullable
        public CursorFactory getCursorFactory() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNullable
        public DatabaseErrorHandler getErrorHandler() {
            throw new RuntimeException("Stub!");
        }

        public long getIdleConnectionTimeout() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNullable
        public String getJournalMode() {
            throw new RuntimeException("Stub!");
        }

        @RecentlyNullable
        public String getSynchronousMode() {
            throw new RuntimeException("Stub!");
        }

        public static final class Builder {
            public Builder() {
                throw new RuntimeException("Stub!");
            }

            public Builder(OpenParams params) {
                throw new RuntimeException("Stub!");
            }

            public Builder setLookasideConfig(int slotSize, int slotCount) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setOpenFlags(int openFlags) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder addOpenFlags(int openFlags) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder removeOpenFlags(int openFlags) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setCursorFactory(@RecentlyNullable CursorFactory cursorFactory) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setErrorHandler(@RecentlyNullable DatabaseErrorHandler errorHandler) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setIdleConnectionTimeout(long idleConnectionTimeoutMs) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setJournalMode(@RecentlyNonNull String journalMode) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public Builder setSynchronousMode(@RecentlyNonNull String syncMode) {
                throw new RuntimeException("Stub!");
            }

            @RecentlyNonNull
            public OpenParams build() {
                throw new RuntimeException("Stub!");
            }
        }
    }
}
