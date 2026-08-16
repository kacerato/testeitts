package androidx.room;

import androidx.sqlite.db.SupportSQLiteProgram;
import java.util.ArrayList;
import java.util.List;

public final class QueryInterceptorProgram implements SupportSQLiteProgram {
    private List<Object> mBindArgsCache = new ArrayList();

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
    }

    @Override
    public void bindDouble(int index, double value) {
        saveArgsToCache(index, Double.valueOf(value));
    }

    @Override
    public void bindLong(int index, long value) {
        saveArgsToCache(index, Long.valueOf(value));
    }

    @Override
    public void bindNull(int index) {
        saveArgsToCache(index, null);
    }

    @Override
    public void bindString(int index, String value) {
        saveArgsToCache(index, value);
    }

    @Override
    public void clearBindings() {
        this.mBindArgsCache.clear();
    }

    @Override
    public void close() {
    }

    public List<Object> getBindArgs() {
        return this.mBindArgsCache;
    }
}
