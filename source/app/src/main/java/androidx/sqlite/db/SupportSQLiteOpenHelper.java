package androidx.sqlite.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

public interface SupportSQLiteOpenHelper extends Closeable {

    public static abstract class Callback {
        private static final String TAG = "SupportSQLite";
        public final int version;

        public Callback(int i10) {
            this.version = i10;
        }

        private void deleteDatabaseFile(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w(TAG, "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e10) {
                Log.w(TAG, "delete failed: ", e10);
            }
        }

        public void onConfigure(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public void onCorruption(SupportSQLiteDatabase supportSQLiteDatabase) {
            Log.e(TAG, "Corruption reported by sqlite on database: " + supportSQLiteDatabase.getPath());
            if (!supportSQLiteDatabase.isOpen()) {
                deleteDatabaseFile(supportSQLiteDatabase.getPath());
                return;
            }
            List<Pair<String, String>> list = null;
            try {
                try {
                    list = supportSQLiteDatabase.getAttachedDbs();
                } catch (SQLiteException unused) {
                }
                try {
                    supportSQLiteDatabase.close();
                } catch (IOException unused2) {
                }
            } finally {
                if (list != null) {
                    Iterator<Pair<String, String>> it = list.iterator();
                    while (it.hasNext()) {
                        deleteDatabaseFile(it.next().second);
                    }
                } else {
                    deleteDatabaseFile(supportSQLiteDatabase.getPath());
                }
            }
        }

        public abstract void onCreate(SupportSQLiteDatabase supportSQLiteDatabase);

        public void onDowngrade(SupportSQLiteDatabase supportSQLiteDatabase, int i10, int i11) {
            throw new SQLiteException("Can't downgrade database from version " + i10 + " to " + i11);
        }

        public void onOpen(SupportSQLiteDatabase supportSQLiteDatabase) {
        }

        public abstract void onUpgrade(SupportSQLiteDatabase supportSQLiteDatabase, int i10, int i11);
    }

    public static class Configuration {
        public final Callback callback;
        public final Context context;
        public final String name;
        public final boolean useNoBackupDirectory;

        public static class Builder {
            Callback mCallback;
            Context mContext;
            String mName;
            boolean mUseNoBackUpDirectory;

            public Builder(Context context) {
                this.mContext = context;
            }

            public Configuration build() {
                if (this.mCallback == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.mContext == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                if (this.mUseNoBackUpDirectory && TextUtils.isEmpty(this.mName)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new Configuration(this.mContext, this.mName, this.mCallback, this.mUseNoBackUpDirectory);
            }

            public Builder callback(Callback callback) {
                this.mCallback = callback;
                return this;
            }

            public Builder name(String str) {
                this.mName = str;
                return this;
            }

            public Builder noBackupDirectory(boolean z10) {
                this.mUseNoBackUpDirectory = z10;
                return this;
            }
        }

        public Configuration(Context context, String str, Callback callback) {
            this(context, str, callback, false);
        }

        public static Builder builder(Context context) {
            return new Builder(context);
        }

        public Configuration(Context context, String str, Callback callback, boolean z10) {
            this.context = context;
            this.name = str;
            this.callback = callback;
            this.useNoBackupDirectory = z10;
        }
    }

    public interface Factory {
        SupportSQLiteOpenHelper create(Configuration configuration);
    }

    @Override
    void close();

    String getDatabaseName();

    SupportSQLiteDatabase getReadableDatabase();

    SupportSQLiteDatabase getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z10);
}
