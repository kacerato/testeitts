package androidx.room;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;

public final class QueryInterceptorDatabase implements SupportSQLiteDatabase {
    private final SupportSQLiteDatabase mDelegate;
    private final RoomDatabase.QueryCallback mQueryCallback;
    private final Executor mQueryCallbackExecutor;

    public QueryInterceptorDatabase(SupportSQLiteDatabase supportSQLiteDatabase, RoomDatabase.QueryCallback queryCallback, Executor queryCallbackExecutor) {
        this.mDelegate = supportSQLiteDatabase;
        this.mQueryCallback = queryCallback;
        this.mQueryCallbackExecutor = queryCallbackExecutor;
    }

    public void lambda$beginTransaction$0() {
        this.mQueryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", Collections.emptyList());
    }

    public void lambda$beginTransactionNonExclusive$1() {
        this.mQueryCallback.onQuery("BEGIN DEFERRED TRANSACTION", Collections.emptyList());
    }

    public void lambda$beginTransactionWithListener$2() {
        this.mQueryCallback.onQuery("BEGIN EXCLUSIVE TRANSACTION", Collections.emptyList());
    }

    public void lambda$beginTransactionWithListenerNonExclusive$3() {
        this.mQueryCallback.onQuery("BEGIN DEFERRED TRANSACTION", Collections.emptyList());
    }

    public void lambda$endTransaction$4() {
        this.mQueryCallback.onQuery("END TRANSACTION", Collections.emptyList());
    }

    public void lambda$execSQL$10(String str) {
        this.mQueryCallback.onQuery(str, new ArrayList(0));
    }

    public void lambda$execSQL$11(String str, List list) {
        this.mQueryCallback.onQuery(str, list);
    }

    public void lambda$query$6(String str) {
        this.mQueryCallback.onQuery(str, Collections.emptyList());
    }

    public void lambda$query$7(String str, List list) {
        this.mQueryCallback.onQuery(str, list);
    }

    public void lambda$query$8(SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        this.mQueryCallback.onQuery(supportSQLiteQuery.getSql(), queryInterceptorProgram.getBindArgs());
    }

    public void lambda$query$9(SupportSQLiteQuery supportSQLiteQuery, QueryInterceptorProgram queryInterceptorProgram) {
        this.mQueryCallback.onQuery(supportSQLiteQuery.getSql(), queryInterceptorProgram.getBindArgs());
    }

    public void lambda$setTransactionSuccessful$5() {
        this.mQueryCallback.onQuery("TRANSACTION SUCCESSFUL", Collections.emptyList());
    }

    @Override
    public void beginTransaction() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$beginTransaction$0();
            }
        });
        this.mDelegate.beginTransaction();
    }

    @Override
    public void beginTransactionNonExclusive() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$beginTransactionNonExclusive$1();
            }
        });
        this.mDelegate.beginTransactionNonExclusive();
    }

    @Override
    public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$beginTransactionWithListener$2();
            }
        });
        this.mDelegate.beginTransactionWithListener(transactionListener);
    }

    @Override
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$beginTransactionWithListenerNonExclusive$3();
            }
        });
        this.mDelegate.beginTransactionWithListenerNonExclusive(transactionListener);
    }

    @Override
    public void close() throws IOException {
        this.mDelegate.close();
    }

    @Override
    public SupportSQLiteStatement compileStatement(String sql) {
        return new QueryInterceptorStatement(this.mDelegate.compileStatement(sql), this.mQueryCallback, sql, this.mQueryCallbackExecutor);
    }

    @Override
    public int delete(String table, String whereClause, Object[] whereArgs) {
        return this.mDelegate.delete(table, whereClause, whereArgs);
    }

    @Override
    public void disableWriteAheadLogging() {
        this.mDelegate.disableWriteAheadLogging();
    }

    @Override
    public boolean enableWriteAheadLogging() {
        return this.mDelegate.enableWriteAheadLogging();
    }

    @Override
    public void endTransaction() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$endTransaction$4();
            }
        });
        this.mDelegate.endTransaction();
    }

    @Override
    public void execSQL(final String sql) throws SQLException {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$execSQL$10(sql);
            }
        });
        this.mDelegate.execSQL(sql);
    }

    @Override
    public List<Pair<String, String>> getAttachedDbs() {
        return this.mDelegate.getAttachedDbs();
    }

    @Override
    public long getMaximumSize() {
        return this.mDelegate.getMaximumSize();
    }

    @Override
    public long getPageSize() {
        return this.mDelegate.getPageSize();
    }

    @Override
    public String getPath() {
        return this.mDelegate.getPath();
    }

    @Override
    public int getVersion() {
        return this.mDelegate.getVersion();
    }

    @Override
    public boolean inTransaction() {
        return this.mDelegate.inTransaction();
    }

    @Override
    public long insert(String table, int conflictAlgorithm, ContentValues values) throws SQLException {
        return this.mDelegate.insert(table, conflictAlgorithm, values);
    }

    @Override
    public boolean isDatabaseIntegrityOk() {
        return this.mDelegate.isDatabaseIntegrityOk();
    }

    @Override
    public boolean isDbLockedByCurrentThread() {
        return this.mDelegate.isDbLockedByCurrentThread();
    }

    @Override
    public boolean isOpen() {
        return this.mDelegate.isOpen();
    }

    @Override
    public boolean isReadOnly() {
        return this.mDelegate.isReadOnly();
    }

    @Override
    public boolean isWriteAheadLoggingEnabled() {
        return this.mDelegate.isWriteAheadLoggingEnabled();
    }

    @Override
    public boolean needUpgrade(int newVersion) {
        return this.mDelegate.needUpgrade(newVersion);
    }

    @Override
    public Cursor query(final String query) {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$6(query);
            }
        });
        return this.mDelegate.query(query);
    }

    @Override
    public void setForeignKeyConstraintsEnabled(boolean enable) {
        this.mDelegate.setForeignKeyConstraintsEnabled(enable);
    }

    @Override
    public void setLocale(Locale locale) {
        this.mDelegate.setLocale(locale);
    }

    @Override
    public void setMaxSqlCacheSize(int cacheSize) {
        this.mDelegate.setMaxSqlCacheSize(cacheSize);
    }

    @Override
    public long setMaximumSize(long numBytes) {
        return this.mDelegate.setMaximumSize(numBytes);
    }

    @Override
    public void setPageSize(long numBytes) {
        this.mDelegate.setPageSize(numBytes);
    }

    @Override
    public void setTransactionSuccessful() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$setTransactionSuccessful$5();
            }
        });
        this.mDelegate.setTransactionSuccessful();
    }

    @Override
    public void setVersion(int version) {
        this.mDelegate.setVersion(version);
    }

    @Override
    public int update(String table, int conflictAlgorithm, ContentValues values, String whereClause, Object[] whereArgs) {
        return this.mDelegate.update(table, conflictAlgorithm, values, whereClause, whereArgs);
    }

    @Override
    public boolean yieldIfContendedSafely() {
        return this.mDelegate.yieldIfContendedSafely();
    }

    @Override
    public boolean yieldIfContendedSafely(long sleepAfterYieldDelay) {
        return this.mDelegate.yieldIfContendedSafely(sleepAfterYieldDelay);
    }

    @Override
    public void execSQL(final String sql, Object[] bindArgs) throws SQLException {
        final ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(bindArgs));
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$execSQL$11(sql, arrayList);
            }
        });
        this.mDelegate.execSQL(sql, arrayList.toArray());
    }

    @Override
    public Cursor query(final String query, Object[] bindArgs) {
        final ArrayList arrayList = new ArrayList();
        arrayList.addAll(Arrays.asList(bindArgs));
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$7(query, arrayList);
            }
        });
        return this.mDelegate.query(query, bindArgs);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery query) {
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$8(query, queryInterceptorProgram);
            }
        });
        return this.mDelegate.query(query);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
        final QueryInterceptorProgram queryInterceptorProgram = new QueryInterceptorProgram();
        query.bindTo(queryInterceptorProgram);
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorDatabase.this.lambda$query$9(query, queryInterceptorProgram);
            }
        });
        return this.mDelegate.query(query);
    }
}
