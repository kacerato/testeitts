package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteProgram;
import androidx.sqlite.db.SupportSQLiteProgram;

class FrameworkSQLiteProgram implements SupportSQLiteProgram {
    private final SQLiteProgram mDelegate;

    public FrameworkSQLiteProgram(SQLiteProgram sQLiteProgram) {
        this.mDelegate = sQLiteProgram;
    }

    @Override
    public void bindBlob(int i10, byte[] bArr) {
        this.mDelegate.bindBlob(i10, bArr);
    }

    @Override
    public void bindDouble(int i10, double d10) {
        this.mDelegate.bindDouble(i10, d10);
    }

    @Override
    public void bindLong(int i10, long j10) {
        this.mDelegate.bindLong(i10, j10);
    }

    @Override
    public void bindNull(int i10) {
        this.mDelegate.bindNull(i10);
    }

    @Override
    public void bindString(int i10, String str) {
        this.mDelegate.bindString(i10, str);
    }

    @Override
    public void clearBindings() {
        this.mDelegate.clearBindings();
    }

    @Override
    public void close() {
        this.mDelegate.close();
    }
}
