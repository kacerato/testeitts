package com.tonyodev.fetch2.database;

import androidx.annotation.NonNull;
import androidx.room.DatabaseConfiguration;
import androidx.room.InvalidationTracker;
import androidx.room.RoomDatabase;
import androidx.room.RoomMasterTable;
import androidx.room.RoomOpenHelper;
import androidx.room.migration.AutoMigrationSpec;
import androidx.room.migration.Migration;
import androidx.room.util.DBUtil;
import androidx.room.util.TableInfo;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class DownloadDatabase_Impl extends DownloadDatabase {
    private volatile DownloadDao _downloadDao;

    @Override
    public void clearAllTables() {
        super.assertNotMainThread();
        SupportSQLiteDatabase writableDatabase = super.getOpenHelper().getWritableDatabase();
        try {
            super.beginTransaction();
            writableDatabase.execSQL("DELETE FROM `requests`");
            super.setTransactionSuccessful();
        } finally {
            super.endTransaction();
            writableDatabase.query("PRAGMA wal_checkpoint(FULL)").close();
            if (!writableDatabase.inTransaction()) {
                writableDatabase.execSQL("VACUUM");
            }
        }
    }

    @Override
    @NonNull
    public InvalidationTracker createInvalidationTracker() {
        return new InvalidationTracker(this, new HashMap(0), new HashMap(0), DownloadDatabase.TABLE_NAME);
    }

    @Override
    @NonNull
    public SupportSQLiteOpenHelper createOpenHelper(@NonNull final DatabaseConfiguration config) {
        return config.sqliteOpenHelperFactory.create(SupportSQLiteOpenHelper.Configuration.builder(config.context).name(config.name).callback(new RoomOpenHelper(config, new RoomOpenHelper.Delegate(7) {
            @Override
            public void createAllTables(@NonNull final SupportSQLiteDatabase db2) {
                db2.execSQL("CREATE TABLE IF NOT EXISTS `requests` (`_id` INTEGER NOT NULL, `_namespace` TEXT NOT NULL, `_url` TEXT NOT NULL, `_file` TEXT NOT NULL, `_group` INTEGER NOT NULL, `_priority` INTEGER NOT NULL, `_headers` TEXT NOT NULL, `_written_bytes` INTEGER NOT NULL, `_total_bytes` INTEGER NOT NULL, `_status` INTEGER NOT NULL, `_error` INTEGER NOT NULL, `_network_type` INTEGER NOT NULL, `_created` INTEGER NOT NULL, `_tag` TEXT, `_enqueue_action` INTEGER NOT NULL, `_identifier` INTEGER NOT NULL, `_download_on_enqueue` INTEGER NOT NULL, `_extras` TEXT NOT NULL, `_auto_retry_max_attempts` INTEGER NOT NULL, `_auto_retry_attempts` INTEGER NOT NULL, PRIMARY KEY(`_id`))");
                db2.execSQL("CREATE UNIQUE INDEX IF NOT EXISTS `index_requests__file` ON `requests` (`_file`)");
                db2.execSQL("CREATE INDEX IF NOT EXISTS `index_requests__group__status` ON `requests` (`_group`, `_status`)");
                db2.execSQL(RoomMasterTable.CREATE_QUERY);
                db2.execSQL("INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, '460643a974555d792b8f5a6e1a5d323c')");
            }

            @Override
            public void dropAllTables(@NonNull final SupportSQLiteDatabase db2) {
                db2.execSQL("DROP TABLE IF EXISTS `requests`");
                List list = ((RoomDatabase) DownloadDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onDestructiveMigration(db2);
                    }
                }
            }

            @Override
            public void onCreate(@NonNull final SupportSQLiteDatabase db2) {
                List list = ((RoomDatabase) DownloadDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onCreate(db2);
                    }
                }
            }

            @Override
            public void onOpen(@NonNull final SupportSQLiteDatabase db2) {
                ((RoomDatabase) DownloadDatabase_Impl.this).mDatabase = db2;
                DownloadDatabase_Impl.this.internalInitInvalidationTracker(db2);
                List list = ((RoomDatabase) DownloadDatabase_Impl.this).mCallbacks;
                if (list != null) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((RoomDatabase.Callback) it.next()).onOpen(db2);
                    }
                }
            }

            @Override
            public void onPostMigrate(@NonNull final SupportSQLiteDatabase db2) {
            }

            @Override
            public void onPreMigrate(@NonNull final SupportSQLiteDatabase db2) {
                DBUtil.dropFtsSyncTriggers(db2);
            }

            @Override
            @NonNull
            public RoomOpenHelper.ValidationResult onValidateSchema(@NonNull final SupportSQLiteDatabase db2) {
                HashMap hashMap = new HashMap(20);
                hashMap.put("_id", new TableInfo.Column("_id", "INTEGER", true, 1, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_NAMESPACE, new TableInfo.Column(DownloadDatabase.COLUMN_NAMESPACE, "TEXT", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_URL, new TableInfo.Column(DownloadDatabase.COLUMN_URL, "TEXT", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_FILE, new TableInfo.Column(DownloadDatabase.COLUMN_FILE, "TEXT", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_GROUP, new TableInfo.Column(DownloadDatabase.COLUMN_GROUP, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_PRIORITY, new TableInfo.Column(DownloadDatabase.COLUMN_PRIORITY, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_HEADERS, new TableInfo.Column(DownloadDatabase.COLUMN_HEADERS, "TEXT", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_DOWNLOADED, new TableInfo.Column(DownloadDatabase.COLUMN_DOWNLOADED, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_TOTAL, new TableInfo.Column(DownloadDatabase.COLUMN_TOTAL, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_STATUS, new TableInfo.Column(DownloadDatabase.COLUMN_STATUS, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_ERROR, new TableInfo.Column(DownloadDatabase.COLUMN_ERROR, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_NETWORK_TYPE, new TableInfo.Column(DownloadDatabase.COLUMN_NETWORK_TYPE, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_CREATED, new TableInfo.Column(DownloadDatabase.COLUMN_CREATED, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_TAG, new TableInfo.Column(DownloadDatabase.COLUMN_TAG, "TEXT", false, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_ENQUEUE_ACTION, new TableInfo.Column(DownloadDatabase.COLUMN_ENQUEUE_ACTION, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_IDENTIFIER, new TableInfo.Column(DownloadDatabase.COLUMN_IDENTIFIER, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE, new TableInfo.Column(DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_EXTRAS, new TableInfo.Column(DownloadDatabase.COLUMN_EXTRAS, "TEXT", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS, new TableInfo.Column(DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS, "INTEGER", true, 0, null, 1));
                hashMap.put(DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS, new TableInfo.Column(DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS, "INTEGER", true, 0, null, 1));
                HashSet hashSet = new HashSet(0);
                HashSet hashSet2 = new HashSet(2);
                hashSet2.add(new TableInfo.Index("index_requests__file", true, Arrays.asList(DownloadDatabase.COLUMN_FILE), Arrays.asList("ASC")));
                hashSet2.add(new TableInfo.Index("index_requests__group__status", false, Arrays.asList(DownloadDatabase.COLUMN_GROUP, DownloadDatabase.COLUMN_STATUS), Arrays.asList("ASC", "ASC")));
                TableInfo tableInfo = new TableInfo(DownloadDatabase.TABLE_NAME, hashMap, hashSet, hashSet2);
                TableInfo read = TableInfo.read(db2, DownloadDatabase.TABLE_NAME);
                if (tableInfo.equals(read)) {
                    return new RoomOpenHelper.ValidationResult(true, null);
                }
                return new RoomOpenHelper.ValidationResult(false, "requests(com.tonyodev.fetch2.database.DownloadInfo).\n Expected:\n" + ((Object) tableInfo) + "\n Found:\n" + ((Object) read));
            }
        }, "460643a974555d792b8f5a6e1a5d323c", "946eca6b182e63ebe50cf82e483715bf")).build());
    }

    @NonNull
    public List<Migration> getAutoMigrations(@NonNull final Map<Class<? extends AutoMigrationSpec>, AutoMigrationSpec> autoMigrationSpecs) {
        return new ArrayList();
    }

    @NonNull
    public Set<Class<? extends AutoMigrationSpec>> getRequiredAutoMigrationSpecs() {
        return new HashSet();
    }

    @Override
    @NonNull
    public Map<Class<?>, List<Class<?>>> getRequiredTypeConverters() {
        HashMap hashMap = new HashMap();
        hashMap.put(DownloadDao.class, DownloadDao_Impl.getRequiredConverters());
        return hashMap;
    }

    @Override
    public DownloadDao requestDao() {
        DownloadDao downloadDao;
        if (this._downloadDao != null) {
            return this._downloadDao;
        }
        synchronized (this) {
            try {
                if (this._downloadDao == null) {
                    this._downloadDao = new DownloadDao_Impl(this);
                }
                downloadDao = this._downloadDao;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return downloadDao;
    }
}
