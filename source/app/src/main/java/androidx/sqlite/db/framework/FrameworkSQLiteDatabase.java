package androidx.sqlite.db.framework;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteCursorDriver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQuery;
import android.database.sqlite.SQLiteTransactionListener;
import android.os.CancellationSignal;
import android.text.TextUtils;
import android.util.Pair;
import androidx.sqlite.db.SimpleSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import org.openjdk.tools.doclint.DocLint;

class FrameworkSQLiteDatabase implements SupportSQLiteDatabase {
    private static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    private static final String[] EMPTY_STRING_ARRAY = new String[0];
    private final SQLiteDatabase mDelegate;

    public FrameworkSQLiteDatabase(SQLiteDatabase sQLiteDatabase) {
        this.mDelegate = sQLiteDatabase;
    }

    @Override
    public void beginTransaction() {
        this.mDelegate.beginTransaction();
    }

    @Override
    public void beginTransactionNonExclusive() {
        this.mDelegate.beginTransactionNonExclusive();
    }

    @Override
    public void beginTransactionWithListener(SQLiteTransactionListener sQLiteTransactionListener) {
        this.mDelegate.beginTransactionWithListener(sQLiteTransactionListener);
    }

    @Override
    public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener sQLiteTransactionListener) {
        this.mDelegate.beginTransactionWithListenerNonExclusive(sQLiteTransactionListener);
    }

    @Override
    public void close() throws IOException {
        this.mDelegate.close();
    }

    @Override
    public SupportSQLiteStatement compileStatement(String str) {
        return new FrameworkSQLiteStatement(this.mDelegate.compileStatement(str));
    }

    @Override
    public int delete(String str, String str2, Object[] objArr) {
        String str3;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("DELETE FROM ");
        sb2.append(str);
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = " WHERE " + str2;
        }
        sb2.append(str3);
        SupportSQLiteStatement compileStatement = compileStatement(sb2.toString());
        SimpleSQLiteQuery.bind(compileStatement, objArr);
        return compileStatement.executeUpdateDelete();
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
        this.mDelegate.endTransaction();
    }

    @Override
    public void execSQL(String str) throws SQLException {
        this.mDelegate.execSQL(str);
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
    public long insert(String str, int i10, ContentValues contentValues) throws SQLException {
        return this.mDelegate.insertWithOnConflict(str, null, contentValues, i10);
    }

    @Override
    public boolean isDatabaseIntegrityOk() {
        return this.mDelegate.isDatabaseIntegrityOk();
    }

    @Override
    public boolean isDbLockedByCurrentThread() {
        return this.mDelegate.isDbLockedByCurrentThread();
    }

    public boolean isDelegate(SQLiteDatabase sQLiteDatabase) {
        return this.mDelegate == sQLiteDatabase;
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
    public boolean needUpgrade(int i10) {
        return this.mDelegate.needUpgrade(i10);
    }

    @Override
    public Cursor query(String str) {
        return query(new SimpleSQLiteQuery(str));
    }

    @Override
    public void setForeignKeyConstraintsEnabled(boolean z10) {
        this.mDelegate.setForeignKeyConstraintsEnabled(z10);
    }

    @Override
    public void setLocale(Locale locale) {
        this.mDelegate.setLocale(locale);
    }

    @Override
    public void setMaxSqlCacheSize(int i10) {
        this.mDelegate.setMaxSqlCacheSize(i10);
    }

    @Override
    public long setMaximumSize(long j10) {
        return this.mDelegate.setMaximumSize(j10);
    }

    @Override
    public void setPageSize(long j10) {
        this.mDelegate.setPageSize(j10);
    }

    @Override
    public void setTransactionSuccessful() {
        this.mDelegate.setTransactionSuccessful();
    }

    @Override
    public void setVersion(int i10) {
        this.mDelegate.setVersion(i10);
    }

    @Override
    public int update(String str, int i10, ContentValues contentValues, String str2, Object[] objArr) {
        if (contentValues == null || contentValues.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        StringBuilder sb2 = new StringBuilder(120);
        sb2.append("UPDATE ");
        sb2.append(CONFLICT_VALUES[i10]);
        sb2.append(str);
        sb2.append(" SET ");
        int size = contentValues.size();
        int length = objArr == null ? size : objArr.length + size;
        Object[] objArr2 = new Object[length];
        int i11 = 0;
        for (String str3 : contentValues.keySet()) {
            sb2.append(i11 > 0 ? DocLint.SEPARATOR : "");
            sb2.append(str3);
            objArr2[i11] = contentValues.get(str3);
            sb2.append("=?");
            i11++;
        }
        if (objArr != null) {
            for (int i12 = size; i12 < length; i12++) {
                objArr2[i12] = objArr[i12 - size];
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            sb2.append(" WHERE ");
            sb2.append(str2);
        }
        SupportSQLiteStatement compileStatement = compileStatement(sb2.toString());
        SimpleSQLiteQuery.bind(compileStatement, objArr2);
        return compileStatement.executeUpdateDelete();
    }

    @Override
    public boolean yieldIfContendedSafely() {
        return this.mDelegate.yieldIfContendedSafely();
    }

    @Override
    public void execSQL(String str, Object[] objArr) throws SQLException {
        this.mDelegate.execSQL(str, objArr);
    }

    @Override
    public Cursor query(String str, Object[] objArr) {
        return query(new SimpleSQLiteQuery(str, objArr));
    }

    @Override
    public boolean yieldIfContendedSafely(long j10) {
        return this.mDelegate.yieldIfContendedSafely(j10);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery) {
        return this.mDelegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() {
            @Override
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteQuery.getSql(), EMPTY_STRING_ARRAY, null);
    }

    @Override
    public Cursor query(final SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal) {
        return this.mDelegate.rawQueryWithFactory(new SQLiteDatabase.CursorFactory() {
            @Override
            public Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery) {
                supportSQLiteQuery.bindTo(new FrameworkSQLiteProgram(sQLiteQuery));
                return new SQLiteCursor(sQLiteCursorDriver, str, sQLiteQuery);
            }
        }, supportSQLiteQuery.getSql(), EMPTY_STRING_ARRAY, null, cancellationSignal);
    }
}
