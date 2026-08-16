package androidx.sqlite.db.framework;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;

public class FrameworkSQLiteOpenHelper implements SupportSQLiteOpenHelper {
    private final SupportSQLiteOpenHelper.Callback mCallback;
    private final Context mContext;
    private OpenHelper mDelegate;
    private final Object mLock;
    private final String mName;
    private final boolean mUseNoBackupDirectory;
    private boolean mWriteAheadLoggingEnabled;

    public static class OpenHelper extends SQLiteOpenHelper {
        final SupportSQLiteOpenHelper.Callback mCallback;
        final FrameworkSQLiteDatabase[] mDbRef;
        private boolean mMigrated;

        public OpenHelper(Context context, String str, final FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, final SupportSQLiteOpenHelper.Callback callback) {
            super(context, str, null, callback.version, new DatabaseErrorHandler() {
                @Override
                public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    SupportSQLiteOpenHelper.Callback.this.onCorruption(OpenHelper.getWrappedDb(frameworkSQLiteDatabaseArr, sQLiteDatabase));
                }
            });
            this.mCallback = callback;
            this.mDbRef = frameworkSQLiteDatabaseArr;
        }

        @Override
        public synchronized void close() {
            super.close();
            this.mDbRef[0] = null;
        }

        public synchronized SupportSQLiteDatabase getReadableSupportDatabase() {
            this.mMigrated = false;
            SQLiteDatabase readableDatabase = super.getReadableDatabase();
            if (!this.mMigrated) {
                return getWrappedDb(readableDatabase);
            }
            close();
            return getReadableSupportDatabase();
        }

        public FrameworkSQLiteDatabase getWrappedDb(SQLiteDatabase sQLiteDatabase) {
            return getWrappedDb(this.mDbRef, sQLiteDatabase);
        }

        public synchronized SupportSQLiteDatabase getWritableSupportDatabase() {
            this.mMigrated = false;
            SQLiteDatabase writableDatabase = super.getWritableDatabase();
            if (!this.mMigrated) {
                return getWrappedDb(writableDatabase);
            }
            close();
            return getWritableSupportDatabase();
        }

        @Override
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.mCallback.onConfigure(getWrappedDb(sQLiteDatabase));
        }

        @Override
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.mCallback.onCreate(getWrappedDb(sQLiteDatabase));
        }

        @Override
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.mMigrated = true;
            this.mCallback.onDowngrade(getWrappedDb(sQLiteDatabase), i10, i11);
        }

        @Override
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (this.mMigrated) {
                return;
            }
            this.mCallback.onOpen(getWrappedDb(sQLiteDatabase));
        }

        @Override
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            this.mMigrated = true;
            this.mCallback.onUpgrade(getWrappedDb(sQLiteDatabase), i10, i11);
        }

        public static FrameworkSQLiteDatabase getWrappedDb(FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr, SQLiteDatabase sQLiteDatabase) {
            FrameworkSQLiteDatabase frameworkSQLiteDatabase = frameworkSQLiteDatabaseArr[0];
            if (frameworkSQLiteDatabase == null || !frameworkSQLiteDatabase.isDelegate(sQLiteDatabase)) {
                frameworkSQLiteDatabaseArr[0] = new FrameworkSQLiteDatabase(sQLiteDatabase);
            }
            return frameworkSQLiteDatabaseArr[0];
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback) {
        this(context, str, callback, false);
    }

    private OpenHelper getDelegate() {
        OpenHelper openHelper;
        synchronized (this.mLock) {
            try {
                if (this.mDelegate == null) {
                    FrameworkSQLiteDatabase[] frameworkSQLiteDatabaseArr = new FrameworkSQLiteDatabase[1];
                    if (this.mName == null || !this.mUseNoBackupDirectory) {
                        this.mDelegate = new OpenHelper(this.mContext, this.mName, frameworkSQLiteDatabaseArr, this.mCallback);
                    } else {
                        this.mDelegate = new OpenHelper(this.mContext, new File(this.mContext.getNoBackupFilesDir(), this.mName).getAbsolutePath(), frameworkSQLiteDatabaseArr, this.mCallback);
                    }
                    this.mDelegate.setWriteAheadLoggingEnabled(this.mWriteAheadLoggingEnabled);
                }
                openHelper = this.mDelegate;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return openHelper;
    }

    @Override
    public void close() {
        getDelegate().close();
    }

    @Override
    public String getDatabaseName() {
        return this.mName;
    }

    @Override
    public SupportSQLiteDatabase getReadableDatabase() {
        return getDelegate().getReadableSupportDatabase();
    }

    @Override
    public SupportSQLiteDatabase getWritableDatabase() {
        return getDelegate().getWritableSupportDatabase();
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean z10) {
        synchronized (this.mLock) {
            try {
                OpenHelper openHelper = this.mDelegate;
                if (openHelper != null) {
                    openHelper.setWriteAheadLoggingEnabled(z10);
                }
                this.mWriteAheadLoggingEnabled = z10;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public FrameworkSQLiteOpenHelper(Context context, String str, SupportSQLiteOpenHelper.Callback callback, boolean z10) {
        this.mContext = context;
        this.mName = str;
        this.mCallback = callback;
        this.mUseNoBackupDirectory = z10;
        this.mLock = new Object();
    }
}
