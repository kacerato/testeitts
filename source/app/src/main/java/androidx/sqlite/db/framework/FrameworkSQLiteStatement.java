package androidx.sqlite.db.framework;

import android.database.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteStatement;

class FrameworkSQLiteStatement extends FrameworkSQLiteProgram implements SupportSQLiteStatement {
    private final SQLiteStatement mDelegate;

    public FrameworkSQLiteStatement(SQLiteStatement sQLiteStatement) {
        super(sQLiteStatement);
        this.mDelegate = sQLiteStatement;
    }

    @Override
    public void execute() {
        this.mDelegate.execute();
    }

    @Override
    public long executeInsert() {
        return this.mDelegate.executeInsert();
    }

    @Override
    public int executeUpdateDelete() {
        return this.mDelegate.executeUpdateDelete();
    }

    @Override
    public long simpleQueryForLong() {
        return this.mDelegate.simpleQueryForLong();
    }

    @Override
    public String simpleQueryForString() {
        return this.mDelegate.simpleQueryForString();
    }
}
