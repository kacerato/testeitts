package androidx.room;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.concurrent.Executor;

final class QueryInterceptorOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    private final SupportSQLiteOpenHelper mDelegate;
    private final RoomDatabase.QueryCallback mQueryCallback;
    private final Executor mQueryCallbackExecutor;

    public QueryInterceptorOpenHelper(SupportSQLiteOpenHelper supportSQLiteOpenHelper, RoomDatabase.QueryCallback queryCallback, Executor queryCallbackExecutor) {
        this.mDelegate = supportSQLiteOpenHelper;
        this.mQueryCallback = queryCallback;
        this.mQueryCallbackExecutor = queryCallbackExecutor;
    }

    @Override
    public void close() {
        this.mDelegate.close();
    }

    @Override
    public String getDatabaseName() {
        return this.mDelegate.getDatabaseName();
    }

    @Override
    public SupportSQLiteOpenHelper getDelegate() {
        return this.mDelegate;
    }

    @Override
    public SupportSQLiteDatabase getReadableDatabase() {
        return new QueryInterceptorDatabase(this.mDelegate.getReadableDatabase(), this.mQueryCallback, this.mQueryCallbackExecutor);
    }

    @Override
    public SupportSQLiteDatabase getWritableDatabase() {
        return new QueryInterceptorDatabase(this.mDelegate.getWritableDatabase(), this.mQueryCallback, this.mQueryCallbackExecutor);
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        this.mDelegate.setWriteAheadLoggingEnabled(enabled);
    }
}
