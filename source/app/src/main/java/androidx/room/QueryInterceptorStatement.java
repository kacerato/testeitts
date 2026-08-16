package androidx.room;

import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteStatement;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

public final class QueryInterceptorStatement implements SupportSQLiteStatement {
    private final List<Object> mBindArgsCache = new ArrayList();
    private final SupportSQLiteStatement mDelegate;
    private final RoomDatabase.QueryCallback mQueryCallback;
    private final Executor mQueryCallbackExecutor;
    private final String mSqlStatement;

    public QueryInterceptorStatement(SupportSQLiteStatement compileStatement, RoomDatabase.QueryCallback queryCallback, String sqlStatement, Executor queryCallbackExecutor) {
        this.mDelegate = compileStatement;
        this.mQueryCallback = queryCallback;
        this.mSqlStatement = sqlStatement;
        this.mQueryCallbackExecutor = queryCallbackExecutor;
    }

    public void lambda$execute$0() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    public void lambda$executeInsert$2() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    public void lambda$executeUpdateDelete$1() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    public void lambda$simpleQueryForLong$3() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    public void lambda$simpleQueryForString$4() {
        this.mQueryCallback.onQuery(this.mSqlStatement, this.mBindArgsCache);
    }

    private void saveArgsToCache(int bindIndex, Object value) {
        int i10 = bindIndex - 1;
        if (i10 >= this.mBindArgsCache.size()) {
            for (int size = this.mBindArgsCache.size(); size <= i10; size++) {
                this.mBindArgsCache.add(null);
            }
        }
        this.mBindArgsCache.set(i10, value);
    }

    @Override
    public void bindBlob(int index, byte[] value) {
        saveArgsToCache(index, value);
        this.mDelegate.bindBlob(index, value);
    }

    @Override
    public void bindDouble(int index, double value) {
        saveArgsToCache(index, Double.valueOf(value));
        this.mDelegate.bindDouble(index, value);
    }

    @Override
    public void bindLong(int index, long value) {
        saveArgsToCache(index, Long.valueOf(value));
        this.mDelegate.bindLong(index, value);
    }

    @Override
    public void bindNull(int index) {
        saveArgsToCache(index, this.mBindArgsCache.toArray());
        this.mDelegate.bindNull(index);
    }

    @Override
    public void bindString(int index, String value) {
        saveArgsToCache(index, value);
        this.mDelegate.bindString(index, value);
    }

    @Override
    public void clearBindings() {
        this.mBindArgsCache.clear();
        this.mDelegate.clearBindings();
    }

    @Override
    public void close() throws IOException {
        this.mDelegate.close();
    }

    @Override
    public void execute() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.this.lambda$execute$0();
            }
        });
        this.mDelegate.execute();
    }

    @Override
    public long executeInsert() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.this.lambda$executeInsert$2();
            }
        });
        return this.mDelegate.executeInsert();
    }

    @Override
    public int executeUpdateDelete() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.this.lambda$executeUpdateDelete$1();
            }
        });
        return this.mDelegate.executeUpdateDelete();
    }

    @Override
    public long simpleQueryForLong() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.this.lambda$simpleQueryForLong$3();
            }
        });
        return this.mDelegate.simpleQueryForLong();
    }

    @Override
    public String simpleQueryForString() {
        this.mQueryCallbackExecutor.execute(new Runnable() {
            @Override
            public final void run() {
                QueryInterceptorStatement.this.lambda$simpleQueryForString$4();
            }
        });
        return this.mDelegate.simpleQueryForString();
    }
}
