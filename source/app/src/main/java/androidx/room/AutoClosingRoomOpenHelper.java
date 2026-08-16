package androidx.room;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.database.SQLException;
import android.database.sqlite.SQLiteTransactionListener;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.arch.core.util.Function;
import androidx.room.AutoClosingRoomOpenHelper;
import androidx.room.util.SneakyThrow;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class AutoClosingRoomOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    private final AutoCloser mAutoCloser;
    private final AutoClosingSupportSQLiteDatabase mAutoClosingDb;
    private final SupportSQLiteOpenHelper mDelegateOpenHelper;

    public static final class AutoClosingSupportSQLiteDatabase implements SupportSQLiteDatabase {
        private final AutoCloser mAutoCloser;

        public AutoClosingSupportSQLiteDatabase(AutoCloser autoCloser) {
            this.mAutoCloser = autoCloser;
        }

        public static Integer lambda$delete$5(String str, String str2, Object[] objArr, SupportSQLiteDatabase supportSQLiteDatabase) {
            return Integer.valueOf(supportSQLiteDatabase.delete(str, str2, objArr));
        }

        public static Object lambda$execSQL$7(String str, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(str);
            return null;
        }

        public static Object lambda$execSQL$8(String str, Object[] objArr, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.execSQL(str, objArr);
            return null;
        }

        public static Long lambda$insert$4(String str, int i10, ContentValues contentValues, SupportSQLiteDatabase supportSQLiteDatabase) {
            return Long.valueOf(supportSQLiteDatabase.insert(str, i10, contentValues));
        }

        public static Boolean lambda$isWriteAheadLoggingEnabled$13(SupportSQLiteDatabase supportSQLiteDatabase) {
            return Boolean.valueOf(supportSQLiteDatabase.isWriteAheadLoggingEnabled());
        }

        public static Boolean lambda$needUpgrade$9(int i10, SupportSQLiteDatabase supportSQLiteDatabase) {
            return Boolean.valueOf(supportSQLiteDatabase.needUpgrade(i10));
        }

        public static Object lambda$pokeOpen$0(SupportSQLiteDatabase supportSQLiteDatabase) {
            return null;
        }

        public static Object lambda$setForeignKeyConstraintsEnabled$12(boolean z10, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.setForeignKeyConstraintsEnabled(z10);
            return null;
        }

        public static Object lambda$setLocale$10(Locale locale, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.setLocale(locale);
            return null;
        }

        public static Object lambda$setMaxSqlCacheSize$11(int i10, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.setMaxSqlCacheSize(i10);
            return null;
        }

        public static Long lambda$setMaximumSize$2(long j10, SupportSQLiteDatabase supportSQLiteDatabase) {
            return Long.valueOf(supportSQLiteDatabase.setMaximumSize(j10));
        }

        public static Object lambda$setPageSize$3(long j10, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.setPageSize(j10);
            return null;
        }

        public static Object lambda$setVersion$1(int i10, SupportSQLiteDatabase supportSQLiteDatabase) {
            supportSQLiteDatabase.setVersion(i10);
            return null;
        }

        public static Integer lambda$update$6(String str, int i10, ContentValues contentValues, String str2, Object[] objArr, SupportSQLiteDatabase supportSQLiteDatabase) {
            return Integer.valueOf(supportSQLiteDatabase.update(str, i10, contentValues, str2, objArr));
        }

        @Override
        public void beginTransaction() {
            try {
                this.mAutoCloser.incrementCountAndEnsureDbIsOpen().beginTransaction();
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public void beginTransactionNonExclusive() {
            try {
                this.mAutoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionNonExclusive();
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public void beginTransactionWithListener(SQLiteTransactionListener transactionListener) {
            try {
                this.mAutoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionWithListener(transactionListener);
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public void beginTransactionWithListenerNonExclusive(SQLiteTransactionListener transactionListener) {
            try {
                this.mAutoCloser.incrementCountAndEnsureDbIsOpen().beginTransactionWithListenerNonExclusive(transactionListener);
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public void close() throws IOException {
            this.mAutoCloser.closeDatabaseIfOpen();
        }

        @Override
        public SupportSQLiteStatement compileStatement(String sql) {
            return new AutoClosingSupportSqliteStatement(sql, this.mAutoCloser);
        }

        @Override
        public int delete(final String table, final String whereClause, final Object[] whereArgs) {
            return ((Integer) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Integer lambda$delete$5;
                    lambda$delete$5 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$delete$5(String.this, whereClause, whereArgs, (SupportSQLiteDatabase) obj);
                    return lambda$delete$5;
                }
            })).intValue();
        }

        @Override
        public void disableWriteAheadLogging() {
            throw new UnsupportedOperationException("Enable/disable write ahead logging on the OpenHelper instead of on the database directly.");
        }

        @Override
        public boolean enableWriteAheadLogging() {
            throw new UnsupportedOperationException("Enable/disable write ahead logging on the OpenHelper instead of on the database directly.");
        }

        @Override
        public void endTransaction() {
            if (this.mAutoCloser.getDelegateDatabase() == null) {
                throw new IllegalStateException("End transaction called but delegateDb is null");
            }
            try {
                this.mAutoCloser.getDelegateDatabase().endTransaction();
            } finally {
                this.mAutoCloser.decrementCountAndScheduleClose();
            }
        }

        @Override
        public void execSQL(final String sql) throws SQLException {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$execSQL$7;
                    lambda$execSQL$7 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$execSQL$7(String.this, (SupportSQLiteDatabase) obj);
                    return lambda$execSQL$7;
                }
            });
        }

        @Override
        public List<Pair<String, String>> getAttachedDbs() {
            return (List) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((SupportSQLiteDatabase) obj).getAttachedDbs();
                }
            });
        }

        @Override
        public long getMaximumSize() {
            return ((Long) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Long.valueOf(((SupportSQLiteDatabase) obj).getMaximumSize());
                }
            })).longValue();
        }

        @Override
        public long getPageSize() {
            return ((Long) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Long.valueOf(((SupportSQLiteDatabase) obj).getPageSize());
                }
            })).longValue();
        }

        @Override
        public String getPath() {
            return (String) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((SupportSQLiteDatabase) obj).getPath();
                }
            });
        }

        @Override
        public int getVersion() {
            return ((Integer) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Integer.valueOf(((SupportSQLiteDatabase) obj).getVersion());
                }
            })).intValue();
        }

        @Override
        public boolean inTransaction() {
            if (this.mAutoCloser.getDelegateDatabase() == null) {
                return false;
            }
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).inTransaction());
                }
            })).booleanValue();
        }

        @Override
        public long insert(final String table, final int conflictAlgorithm, final ContentValues values) throws SQLException {
            return ((Long) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Long lambda$insert$4;
                    lambda$insert$4 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$insert$4(String.this, conflictAlgorithm, values, (SupportSQLiteDatabase) obj);
                    return lambda$insert$4;
                }
            })).longValue();
        }

        @Override
        public boolean isDatabaseIntegrityOk() {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isDatabaseIntegrityOk());
                }
            })).booleanValue();
        }

        @Override
        public boolean isDbLockedByCurrentThread() {
            if (this.mAutoCloser.getDelegateDatabase() == null) {
                return false;
            }
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isDbLockedByCurrentThread());
                }
            })).booleanValue();
        }

        @Override
        public boolean isOpen() {
            SupportSQLiteDatabase delegateDatabase = this.mAutoCloser.getDelegateDatabase();
            if (delegateDatabase == null) {
                return false;
            }
            return delegateDatabase.isOpen();
        }

        @Override
        public boolean isReadOnly() {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Boolean.valueOf(((SupportSQLiteDatabase) obj).isReadOnly());
                }
            })).booleanValue();
        }

        @Override
        public boolean isWriteAheadLoggingEnabled() {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Boolean lambda$isWriteAheadLoggingEnabled$13;
                    lambda$isWriteAheadLoggingEnabled$13 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$isWriteAheadLoggingEnabled$13((SupportSQLiteDatabase) obj);
                    return lambda$isWriteAheadLoggingEnabled$13;
                }
            })).booleanValue();
        }

        @Override
        public boolean needUpgrade(final int newVersion) {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Boolean lambda$needUpgrade$9;
                    lambda$needUpgrade$9 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$needUpgrade$9(newVersion, (SupportSQLiteDatabase) obj);
                    return lambda$needUpgrade$9;
                }
            })).booleanValue();
        }

        public void pokeOpen() {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$pokeOpen$0;
                    lambda$pokeOpen$0 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$pokeOpen$0((SupportSQLiteDatabase) obj);
                    return lambda$pokeOpen$0;
                }
            });
        }

        @Override
        public Cursor query(String query) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(query), this.mAutoCloser);
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public void setForeignKeyConstraintsEnabled(final boolean enable) {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$setForeignKeyConstraintsEnabled$12;
                    lambda$setForeignKeyConstraintsEnabled$12 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$setForeignKeyConstraintsEnabled$12(enable, (SupportSQLiteDatabase) obj);
                    return lambda$setForeignKeyConstraintsEnabled$12;
                }
            });
        }

        @Override
        public void setLocale(final Locale locale) {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$setLocale$10;
                    lambda$setLocale$10 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$setLocale$10(Locale.this, (SupportSQLiteDatabase) obj);
                    return lambda$setLocale$10;
                }
            });
        }

        @Override
        public void setMaxSqlCacheSize(final int cacheSize) {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$setMaxSqlCacheSize$11;
                    lambda$setMaxSqlCacheSize$11 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$setMaxSqlCacheSize$11(cacheSize, (SupportSQLiteDatabase) obj);
                    return lambda$setMaxSqlCacheSize$11;
                }
            });
        }

        @Override
        public long setMaximumSize(final long numBytes) {
            return ((Long) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Long lambda$setMaximumSize$2;
                    lambda$setMaximumSize$2 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$setMaximumSize$2(numBytes, (SupportSQLiteDatabase) obj);
                    return lambda$setMaximumSize$2;
                }
            })).longValue();
        }

        @Override
        public void setPageSize(final long numBytes) {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$setPageSize$3;
                    lambda$setPageSize$3 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$setPageSize$3(numBytes, (SupportSQLiteDatabase) obj);
                    return lambda$setPageSize$3;
                }
            });
        }

        @Override
        public void setTransactionSuccessful() {
            SupportSQLiteDatabase delegateDatabase = this.mAutoCloser.getDelegateDatabase();
            if (delegateDatabase == null) {
                throw new IllegalStateException("setTransactionSuccessful called but delegateDb is null");
            }
            delegateDatabase.setTransactionSuccessful();
        }

        @Override
        public void setVersion(final int version) {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$setVersion$1;
                    lambda$setVersion$1 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$setVersion$1(version, (SupportSQLiteDatabase) obj);
                    return lambda$setVersion$1;
                }
            });
        }

        @Override
        public int update(final String table, final int conflictAlgorithm, final ContentValues values, final String whereClause, final Object[] whereArgs) {
            return ((Integer) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Integer lambda$update$6;
                    lambda$update$6 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$update$6(String.this, conflictAlgorithm, values, whereClause, whereArgs, (SupportSQLiteDatabase) obj);
                    return lambda$update$6;
                }
            })).intValue();
        }

        @Override
        public boolean yieldIfContendedSafely() {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new C3797v())).booleanValue();
        }

        @Override
        public void execSQL(final String sql, final Object[] bindArgs) throws SQLException {
            this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$execSQL$8;
                    lambda$execSQL$8 = AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.lambda$execSQL$8(String.this, bindArgs, (SupportSQLiteDatabase) obj);
                    return lambda$execSQL$8;
                }
            });
        }

        @Override
        public boolean yieldIfContendedSafely(long sleepAfterYieldDelay) {
            return ((Boolean) this.mAutoCloser.executeRefCountingFunction(new C3797v())).booleanValue();
        }

        @Override
        public Cursor query(String query, Object[] bindArgs) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(query, bindArgs), this.mAutoCloser);
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public Cursor query(SupportSQLiteQuery query) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(query), this.mAutoCloser);
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }

        @Override
        public Cursor query(SupportSQLiteQuery query, CancellationSignal cancellationSignal) {
            try {
                return new KeepAliveCursor(this.mAutoCloser.incrementCountAndEnsureDbIsOpen().query(query, cancellationSignal), this.mAutoCloser);
            } catch (Throwable th2) {
                this.mAutoCloser.decrementCountAndScheduleClose();
                throw th2;
            }
        }
    }

    public static class AutoClosingSupportSqliteStatement implements SupportSQLiteStatement {
        private final AutoCloser mAutoCloser;
        private final ArrayList<Object> mBinds = new ArrayList<>();
        private final String mSql;

        public AutoClosingSupportSqliteStatement(String sql, AutoCloser autoCloser) {
            this.mSql = sql;
            this.mAutoCloser = autoCloser;
        }

        private void doBinds(SupportSQLiteStatement supportSQLiteStatement) {
            int i10 = 0;
            while (i10 < this.mBinds.size()) {
                int i11 = i10 + 1;
                Object obj = this.mBinds.get(i10);
                if (obj == null) {
                    supportSQLiteStatement.bindNull(i11);
                } else if (obj instanceof Long) {
                    supportSQLiteStatement.bindLong(i11, ((Long) obj).longValue());
                } else if (obj instanceof Double) {
                    supportSQLiteStatement.bindDouble(i11, ((Double) obj).doubleValue());
                } else if (obj instanceof String) {
                    supportSQLiteStatement.bindString(i11, (String) obj);
                } else if (obj instanceof byte[]) {
                    supportSQLiteStatement.bindBlob(i11, (byte[]) obj);
                }
                i10 = i11;
            }
        }

        private <T> T executeSqliteStatementWithRefCount(final Function<SupportSQLiteStatement, T> function) {
            return (T) this.mAutoCloser.executeRefCountingFunction(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$executeSqliteStatementWithRefCount$0;
                    lambda$executeSqliteStatementWithRefCount$0 = AutoClosingRoomOpenHelper.AutoClosingSupportSqliteStatement.this.lambda$executeSqliteStatementWithRefCount$0(function, (SupportSQLiteDatabase) obj);
                    return lambda$executeSqliteStatementWithRefCount$0;
                }
            });
        }

        public static Object lambda$execute$1(SupportSQLiteStatement supportSQLiteStatement) {
            supportSQLiteStatement.execute();
            return null;
        }

        public Object lambda$executeSqliteStatementWithRefCount$0(Function function, SupportSQLiteDatabase supportSQLiteDatabase) {
            SupportSQLiteStatement compileStatement = supportSQLiteDatabase.compileStatement(this.mSql);
            doBinds(compileStatement);
            return function.apply(compileStatement);
        }

        private void saveBinds(int bindIndex, Object value) {
            int i10 = bindIndex - 1;
            if (i10 >= this.mBinds.size()) {
                for (int size = this.mBinds.size(); size <= i10; size++) {
                    this.mBinds.add(null);
                }
            }
            this.mBinds.set(i10, value);
        }

        @Override
        public void bindBlob(int index, byte[] value) {
            saveBinds(index, value);
        }

        @Override
        public void bindDouble(int index, double value) {
            saveBinds(index, Double.valueOf(value));
        }

        @Override
        public void bindLong(int index, long value) {
            saveBinds(index, Long.valueOf(value));
        }

        @Override
        public void bindNull(int index) {
            saveBinds(index, null);
        }

        @Override
        public void bindString(int index, String value) {
            saveBinds(index, value);
        }

        @Override
        public void clearBindings() {
            this.mBinds.clear();
        }

        @Override
        public void close() throws IOException {
        }

        @Override
        public void execute() {
            executeSqliteStatementWithRefCount(new Function() {
                @Override
                public final Object apply(Object obj) {
                    Object lambda$execute$1;
                    lambda$execute$1 = AutoClosingRoomOpenHelper.AutoClosingSupportSqliteStatement.lambda$execute$1((SupportSQLiteStatement) obj);
                    return lambda$execute$1;
                }
            });
        }

        @Override
        public long executeInsert() {
            return ((Long) executeSqliteStatementWithRefCount(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Long.valueOf(((SupportSQLiteStatement) obj).executeInsert());
                }
            })).longValue();
        }

        @Override
        public int executeUpdateDelete() {
            return ((Integer) executeSqliteStatementWithRefCount(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Integer.valueOf(((SupportSQLiteStatement) obj).executeUpdateDelete());
                }
            })).intValue();
        }

        @Override
        public long simpleQueryForLong() {
            return ((Long) executeSqliteStatementWithRefCount(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return Long.valueOf(((SupportSQLiteStatement) obj).simpleQueryForLong());
                }
            })).longValue();
        }

        @Override
        public String simpleQueryForString() {
            return (String) executeSqliteStatementWithRefCount(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((SupportSQLiteStatement) obj).simpleQueryForString();
                }
            });
        }
    }

    public static final class KeepAliveCursor implements Cursor {
        private final AutoCloser mAutoCloser;
        private final Cursor mDelegate;

        public KeepAliveCursor(Cursor delegate, AutoCloser autoCloser) {
            this.mDelegate = delegate;
            this.mAutoCloser = autoCloser;
        }

        @Override
        public void close() {
            this.mDelegate.close();
            this.mAutoCloser.decrementCountAndScheduleClose();
        }

        @Override
        public void copyStringToBuffer(int columnIndex, CharArrayBuffer buffer) {
            this.mDelegate.copyStringToBuffer(columnIndex, buffer);
        }

        @Override
        @Deprecated
        public void deactivate() {
            this.mDelegate.deactivate();
        }

        @Override
        public byte[] getBlob(int columnIndex) {
            return this.mDelegate.getBlob(columnIndex);
        }

        @Override
        public int getColumnCount() {
            return this.mDelegate.getColumnCount();
        }

        @Override
        public int getColumnIndex(String columnName) {
            return this.mDelegate.getColumnIndex(columnName);
        }

        @Override
        public int getColumnIndexOrThrow(String columnName) throws IllegalArgumentException {
            return this.mDelegate.getColumnIndexOrThrow(columnName);
        }

        @Override
        public String getColumnName(int columnIndex) {
            return this.mDelegate.getColumnName(columnIndex);
        }

        @Override
        public String[] getColumnNames() {
            return this.mDelegate.getColumnNames();
        }

        @Override
        public int getCount() {
            return this.mDelegate.getCount();
        }

        @Override
        public double getDouble(int columnIndex) {
            return this.mDelegate.getDouble(columnIndex);
        }

        @Override
        public Bundle getExtras() {
            return this.mDelegate.getExtras();
        }

        @Override
        public float getFloat(int columnIndex) {
            return this.mDelegate.getFloat(columnIndex);
        }

        @Override
        public int getInt(int columnIndex) {
            return this.mDelegate.getInt(columnIndex);
        }

        @Override
        public long getLong(int columnIndex) {
            return this.mDelegate.getLong(columnIndex);
        }

        @Override
        public Uri getNotificationUri() {
            return this.mDelegate.getNotificationUri();
        }

        public List<Uri> getNotificationUris() {
            List<Uri> notificationUris;
            notificationUris = this.mDelegate.getNotificationUris();
            return notificationUris;
        }

        @Override
        public int getPosition() {
            return this.mDelegate.getPosition();
        }

        @Override
        public short getShort(int columnIndex) {
            return this.mDelegate.getShort(columnIndex);
        }

        @Override
        public String getString(int columnIndex) {
            return this.mDelegate.getString(columnIndex);
        }

        @Override
        public int getType(int columnIndex) {
            return this.mDelegate.getType(columnIndex);
        }

        @Override
        public boolean getWantsAllOnMoveCalls() {
            return this.mDelegate.getWantsAllOnMoveCalls();
        }

        @Override
        public boolean isAfterLast() {
            return this.mDelegate.isAfterLast();
        }

        @Override
        public boolean isBeforeFirst() {
            return this.mDelegate.isBeforeFirst();
        }

        @Override
        public boolean isClosed() {
            return this.mDelegate.isClosed();
        }

        @Override
        public boolean isFirst() {
            return this.mDelegate.isFirst();
        }

        @Override
        public boolean isLast() {
            return this.mDelegate.isLast();
        }

        @Override
        public boolean isNull(int columnIndex) {
            return this.mDelegate.isNull(columnIndex);
        }

        @Override
        public boolean move(int offset) {
            return this.mDelegate.move(offset);
        }

        @Override
        public boolean moveToFirst() {
            return this.mDelegate.moveToFirst();
        }

        @Override
        public boolean moveToLast() {
            return this.mDelegate.moveToLast();
        }

        @Override
        public boolean moveToNext() {
            return this.mDelegate.moveToNext();
        }

        @Override
        public boolean moveToPosition(int position) {
            return this.mDelegate.moveToPosition(position);
        }

        @Override
        public boolean moveToPrevious() {
            return this.mDelegate.moveToPrevious();
        }

        @Override
        public void registerContentObserver(ContentObserver observer) {
            this.mDelegate.registerContentObserver(observer);
        }

        @Override
        public void registerDataSetObserver(DataSetObserver observer) {
            this.mDelegate.registerDataSetObserver(observer);
        }

        @Override
        @Deprecated
        public boolean requery() {
            return this.mDelegate.requery();
        }

        @Override
        public Bundle respond(Bundle extras) {
            return this.mDelegate.respond(extras);
        }

        @Override
        public void setExtras(Bundle extras) {
            this.mDelegate.setExtras(extras);
        }

        @Override
        public void setNotificationUri(ContentResolver cr, Uri uri) {
            this.mDelegate.setNotificationUri(cr, uri);
        }

        public void setNotificationUris(ContentResolver cr, List<Uri> uris) {
            this.mDelegate.setNotificationUris(cr, uris);
        }

        @Override
        public void unregisterContentObserver(ContentObserver observer) {
            this.mDelegate.unregisterContentObserver(observer);
        }

        @Override
        public void unregisterDataSetObserver(DataSetObserver observer) {
            this.mDelegate.unregisterDataSetObserver(observer);
        }
    }

    public AutoClosingRoomOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper, AutoCloser autoCloser) {
        this.mDelegateOpenHelper = supportSQLiteOpenHelper;
        this.mAutoCloser = autoCloser;
        autoCloser.init(supportSQLiteOpenHelper);
        this.mAutoClosingDb = new AutoClosingSupportSQLiteDatabase(autoCloser);
    }

    @Override
    public void close() {
        try {
            this.mAutoClosingDb.close();
        } catch (IOException e10) {
            SneakyThrow.reThrow(e10);
        }
    }

    public AutoCloser getAutoCloser() {
        return this.mAutoCloser;
    }

    public SupportSQLiteDatabase getAutoClosingDb() {
        return this.mAutoClosingDb;
    }

    @Override
    public String getDatabaseName() {
        return this.mDelegateOpenHelper.getDatabaseName();
    }

    @Override
    public SupportSQLiteOpenHelper getDelegate() {
        return this.mDelegateOpenHelper;
    }

    @Override
    public SupportSQLiteDatabase getReadableDatabase() {
        this.mAutoClosingDb.pokeOpen();
        return this.mAutoClosingDb;
    }

    @Override
    public SupportSQLiteDatabase getWritableDatabase() {
        this.mAutoClosingDb.pokeOpen();
        return this.mAutoClosingDb;
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        this.mDelegateOpenHelper.setWriteAheadLoggingEnabled(enabled);
    }
}
