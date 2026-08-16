package androidx.room;

import android.content.Context;
import android.util.Log;
import androidx.room.util.CopyLock;
import androidx.room.util.DBUtil;
import androidx.room.util.FileUtil;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.Channels;
import java.nio.channels.ReadableByteChannel;
import java.util.concurrent.Callable;

public class SQLiteCopyOpenHelper implements SupportSQLiteOpenHelper, DelegatingOpenHelper {
    private final Context mContext;
    private final String mCopyFromAssetPath;
    private final File mCopyFromFile;
    private final Callable<InputStream> mCopyFromInputStream;
    private DatabaseConfiguration mDatabaseConfiguration;
    private final int mDatabaseVersion;
    private final SupportSQLiteOpenHelper mDelegate;
    private boolean mVerified;

    public SQLiteCopyOpenHelper(Context context, String copyFromAssetPath, File copyFromFile, Callable<InputStream> copyFromInputStream, int databaseVersion, SupportSQLiteOpenHelper supportSQLiteOpenHelper) {
        this.mContext = context;
        this.mCopyFromAssetPath = copyFromAssetPath;
        this.mCopyFromFile = copyFromFile;
        this.mCopyFromInputStream = copyFromInputStream;
        this.mDatabaseVersion = databaseVersion;
        this.mDelegate = supportSQLiteOpenHelper;
    }

    private void copyDatabaseFile(File destinationFile, boolean writable) throws IOException {
        ReadableByteChannel newChannel;
        if (this.mCopyFromAssetPath != null) {
            newChannel = Channels.newChannel(this.mContext.getAssets().open(this.mCopyFromAssetPath));
        } else if (this.mCopyFromFile != null) {
            newChannel = new FileInputStream(this.mCopyFromFile).getChannel();
        } else {
            Callable<InputStream> callable = this.mCopyFromInputStream;
            if (callable == null) {
                throw new IllegalStateException("copyFromAssetPath, copyFromFile and copyFromInputStream are all null!");
            }
            try {
                newChannel = Channels.newChannel(callable.call());
            } catch (Exception e10) {
                throw new IOException("inputStreamCallable exception on call", e10);
            }
        }
        File createTempFile = File.createTempFile("room-copy-helper", ".tmp", this.mContext.getCacheDir());
        createTempFile.deleteOnExit();
        FileUtil.copy(newChannel, new FileOutputStream(createTempFile).getChannel());
        File parentFile = destinationFile.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            throw new IOException("Failed to create directories for " + destinationFile.getAbsolutePath());
        }
        dispatchOnOpenPrepackagedDatabase(createTempFile, writable);
        if (createTempFile.renameTo(destinationFile)) {
            return;
        }
        throw new IOException("Failed to move intermediate file (" + createTempFile.getAbsolutePath() + ") to destination (" + destinationFile.getAbsolutePath() + ").");
    }

    private SupportSQLiteOpenHelper createFrameworkOpenHelper(File databaseFile) {
        try {
            return new FrameworkSQLiteOpenHelperFactory().create(SupportSQLiteOpenHelper.Configuration.builder(this.mContext).name(databaseFile.getName()).callback(new SupportSQLiteOpenHelper.Callback(DBUtil.readVersion(databaseFile)) {
                @Override
                public void onCreate(SupportSQLiteDatabase db2) {
                }

                @Override
                public void onUpgrade(SupportSQLiteDatabase db2, int oldVersion, int newVersion) {
                }
            }).build());
        } catch (IOException e10) {
            throw new RuntimeException("Malformed database file, unable to read version.", e10);
        }
    }

    private void dispatchOnOpenPrepackagedDatabase(File databaseFile, boolean writable) {
        DatabaseConfiguration databaseConfiguration = this.mDatabaseConfiguration;
        if (databaseConfiguration == null || databaseConfiguration.prepackagedDatabaseCallback == null) {
            return;
        }
        SupportSQLiteOpenHelper createFrameworkOpenHelper = createFrameworkOpenHelper(databaseFile);
        try {
            this.mDatabaseConfiguration.prepackagedDatabaseCallback.onOpenPrepackagedDatabase(writable ? createFrameworkOpenHelper.getWritableDatabase() : createFrameworkOpenHelper.getReadableDatabase());
            createFrameworkOpenHelper.close();
        } catch (Throwable th2) {
            createFrameworkOpenHelper.close();
            throw th2;
        }
    }

    private void verifyDatabaseFile(boolean writable) {
        String databaseName = getDatabaseName();
        File databasePath = this.mContext.getDatabasePath(databaseName);
        DatabaseConfiguration databaseConfiguration = this.mDatabaseConfiguration;
        CopyLock copyLock = new CopyLock(databaseName, this.mContext.getFilesDir(), databaseConfiguration == null || databaseConfiguration.multiInstanceInvalidation);
        try {
            copyLock.lock();
            if (!databasePath.exists()) {
                try {
                    copyDatabaseFile(databasePath, writable);
                    copyLock.unlock();
                    return;
                } catch (IOException e10) {
                    throw new RuntimeException("Unable to copy database file.", e10);
                }
            }
            if (this.mDatabaseConfiguration == null) {
                copyLock.unlock();
                return;
            }
            try {
                int readVersion = DBUtil.readVersion(databasePath);
                int i10 = this.mDatabaseVersion;
                if (readVersion == i10) {
                    copyLock.unlock();
                    return;
                }
                if (this.mDatabaseConfiguration.isMigrationRequired(readVersion, i10)) {
                    copyLock.unlock();
                    return;
                }
                if (this.mContext.deleteDatabase(databaseName)) {
                    try {
                        copyDatabaseFile(databasePath, writable);
                    } catch (IOException e11) {
                        Log.w("ROOM", "Unable to copy database file.", e11);
                    }
                } else {
                    Log.w("ROOM", "Failed to delete database file (" + databaseName + ") for a copy destructive migration.");
                }
                copyLock.unlock();
                return;
            } catch (IOException e12) {
                Log.w("ROOM", "Unable to read database version.", e12);
                copyLock.unlock();
                return;
            }
        } catch (Throwable th2) {
            copyLock.unlock();
            throw th2;
        }
        copyLock.unlock();
        throw th2;
    }

    @Override
    public synchronized void close() {
        this.mDelegate.close();
        this.mVerified = false;
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
    public synchronized SupportSQLiteDatabase getReadableDatabase() {
        try {
            if (!this.mVerified) {
                verifyDatabaseFile(false);
                this.mVerified = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.mDelegate.getReadableDatabase();
    }

    @Override
    public synchronized SupportSQLiteDatabase getWritableDatabase() {
        try {
            if (!this.mVerified) {
                verifyDatabaseFile(true);
                this.mVerified = true;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return this.mDelegate.getWritableDatabase();
    }

    public void setDatabaseConfiguration(DatabaseConfiguration databaseConfiguration) {
        this.mDatabaseConfiguration = databaseConfiguration;
    }

    @Override
    public void setWriteAheadLoggingEnabled(boolean enabled) {
        this.mDelegate.setWriteAheadLoggingEnabled(enabled);
    }
}
