package com.tonyodev.fetch2.database;

import android.database.Cursor;
import androidx.annotation.NonNull;
import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.room.EntityInsertionAdapter;
import androidx.room.RoomDatabase;
import androidx.room.RoomSQLiteQuery;
import androidx.room.SharedSQLiteStatement;
import androidx.room.util.CursorUtil;
import androidx.room.util.DBUtil;
import androidx.room.util.StringUtil;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.tonyodev.fetch2.Status;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class DownloadDao_Impl implements DownloadDao {
    private final Converter __converter = new Converter();
    private final RoomDatabase __db;
    private final EntityDeletionOrUpdateAdapter<DownloadInfo> __deletionAdapterOfDownloadInfo;
    private final EntityInsertionAdapter<DownloadInfo> __insertionAdapterOfDownloadInfo;
    private final SharedSQLiteStatement __preparedStmtOfDeleteAll;
    private final EntityDeletionOrUpdateAdapter<DownloadInfo> __updateAdapterOfDownloadInfo;

    public DownloadDao_Impl(@NonNull final RoomDatabase __db) {
        this.__db = __db;
        this.__insertionAdapterOfDownloadInfo = new EntityInsertionAdapter<DownloadInfo>(__db) {
            @Override
            @NonNull
            public String createQuery() {
                return "INSERT OR ABORT INTO `requests` (`_id`,`_namespace`,`_url`,`_file`,`_group`,`_priority`,`_headers`,`_written_bytes`,`_total_bytes`,`_status`,`_error`,`_network_type`,`_created`,`_tag`,`_enqueue_action`,`_identifier`,`_download_on_enqueue`,`_extras`,`_auto_retry_max_attempts`,`_auto_retry_attempts`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            }

            @Override
            public void bind(@NonNull SupportSQLiteStatement supportSQLiteStatement, @NonNull DownloadInfo downloadInfo) {
                supportSQLiteStatement.bindLong(1, downloadInfo.getId());
                supportSQLiteStatement.bindString(2, downloadInfo.getNamespace());
                supportSQLiteStatement.bindString(3, downloadInfo.getUrl());
                supportSQLiteStatement.bindString(4, downloadInfo.getFile());
                supportSQLiteStatement.bindLong(5, downloadInfo.getGroup());
                supportSQLiteStatement.bindLong(6, DownloadDao_Impl.this.__converter.toPriorityValue(downloadInfo.getPriority()));
                supportSQLiteStatement.bindString(7, DownloadDao_Impl.this.__converter.toHeaderStringsMap(downloadInfo.getHeaders()));
                supportSQLiteStatement.bindLong(8, downloadInfo.getDownloaded());
                supportSQLiteStatement.bindLong(9, downloadInfo.getTotal());
                supportSQLiteStatement.bindLong(10, DownloadDao_Impl.this.__converter.toStatusValue(downloadInfo.getStatus()));
                supportSQLiteStatement.bindLong(11, DownloadDao_Impl.this.__converter.toErrorValue(downloadInfo.getError()));
                supportSQLiteStatement.bindLong(12, DownloadDao_Impl.this.__converter.toNetworkTypeValue(downloadInfo.getNetworkType()));
                supportSQLiteStatement.bindLong(13, downloadInfo.getCreated());
                if (downloadInfo.getTag() == null) {
                    supportSQLiteStatement.bindNull(14);
                } else {
                    supportSQLiteStatement.bindString(14, downloadInfo.getTag());
                }
                supportSQLiteStatement.bindLong(15, DownloadDao_Impl.this.__converter.toEnqueueActionValue(downloadInfo.getEnqueueAction()));
                supportSQLiteStatement.bindLong(16, downloadInfo.getIdentifier());
                supportSQLiteStatement.bindLong(17, downloadInfo.getDownloadOnEnqueue() ? 1L : 0L);
                supportSQLiteStatement.bindString(18, DownloadDao_Impl.this.__converter.fromExtrasToString(downloadInfo.getExtras()));
                supportSQLiteStatement.bindLong(19, downloadInfo.getAutoRetryMaxAttempts());
                supportSQLiteStatement.bindLong(20, downloadInfo.getAutoRetryAttempts());
            }
        };
        this.__deletionAdapterOfDownloadInfo = new EntityDeletionOrUpdateAdapter<DownloadInfo>(__db) {
            @Override
            @NonNull
            public String createQuery() {
                return "DELETE FROM `requests` WHERE `_id` = ?";
            }

            @Override
            public void bind(@NonNull final SupportSQLiteStatement statement, @NonNull final DownloadInfo entity) {
                statement.bindLong(1, entity.getId());
            }
        };
        this.__updateAdapterOfDownloadInfo = new EntityDeletionOrUpdateAdapter<DownloadInfo>(__db) {
            @Override
            @NonNull
            public String createQuery() {
                return "UPDATE OR REPLACE `requests` SET `_id` = ?,`_namespace` = ?,`_url` = ?,`_file` = ?,`_group` = ?,`_priority` = ?,`_headers` = ?,`_written_bytes` = ?,`_total_bytes` = ?,`_status` = ?,`_error` = ?,`_network_type` = ?,`_created` = ?,`_tag` = ?,`_enqueue_action` = ?,`_identifier` = ?,`_download_on_enqueue` = ?,`_extras` = ?,`_auto_retry_max_attempts` = ?,`_auto_retry_attempts` = ? WHERE `_id` = ?";
            }

            @Override
            public void bind(@NonNull SupportSQLiteStatement supportSQLiteStatement, @NonNull DownloadInfo downloadInfo) {
                supportSQLiteStatement.bindLong(1, downloadInfo.getId());
                supportSQLiteStatement.bindString(2, downloadInfo.getNamespace());
                supportSQLiteStatement.bindString(3, downloadInfo.getUrl());
                supportSQLiteStatement.bindString(4, downloadInfo.getFile());
                supportSQLiteStatement.bindLong(5, downloadInfo.getGroup());
                supportSQLiteStatement.bindLong(6, DownloadDao_Impl.this.__converter.toPriorityValue(downloadInfo.getPriority()));
                supportSQLiteStatement.bindString(7, DownloadDao_Impl.this.__converter.toHeaderStringsMap(downloadInfo.getHeaders()));
                supportSQLiteStatement.bindLong(8, downloadInfo.getDownloaded());
                supportSQLiteStatement.bindLong(9, downloadInfo.getTotal());
                supportSQLiteStatement.bindLong(10, DownloadDao_Impl.this.__converter.toStatusValue(downloadInfo.getStatus()));
                supportSQLiteStatement.bindLong(11, DownloadDao_Impl.this.__converter.toErrorValue(downloadInfo.getError()));
                supportSQLiteStatement.bindLong(12, DownloadDao_Impl.this.__converter.toNetworkTypeValue(downloadInfo.getNetworkType()));
                supportSQLiteStatement.bindLong(13, downloadInfo.getCreated());
                if (downloadInfo.getTag() == null) {
                    supportSQLiteStatement.bindNull(14);
                } else {
                    supportSQLiteStatement.bindString(14, downloadInfo.getTag());
                }
                supportSQLiteStatement.bindLong(15, DownloadDao_Impl.this.__converter.toEnqueueActionValue(downloadInfo.getEnqueueAction()));
                supportSQLiteStatement.bindLong(16, downloadInfo.getIdentifier());
                supportSQLiteStatement.bindLong(17, downloadInfo.getDownloadOnEnqueue() ? 1L : 0L);
                supportSQLiteStatement.bindString(18, DownloadDao_Impl.this.__converter.fromExtrasToString(downloadInfo.getExtras()));
                supportSQLiteStatement.bindLong(19, downloadInfo.getAutoRetryMaxAttempts());
                supportSQLiteStatement.bindLong(20, downloadInfo.getAutoRetryAttempts());
                supportSQLiteStatement.bindLong(21, downloadInfo.getId());
            }
        };
        this.__preparedStmtOfDeleteAll = new SharedSQLiteStatement(__db) {
            @Override
            @NonNull
            public String createQuery() {
                return "DELETE FROM requests";
            }
        };
    }

    @NonNull
    public static List<Class<?>> getRequiredConverters() {
        return Collections.emptyList();
    }

    @Override
    public void delete(final DownloadInfo downloadInfo) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__deletionAdapterOfDownloadInfo.handle(downloadInfo);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void deleteAll() {
        this.__db.assertNotSuspendingTransaction();
        SupportSQLiteStatement acquire = this.__preparedStmtOfDeleteAll.acquire();
        try {
            this.__db.beginTransaction();
            try {
                acquire.executeUpdateDelete();
                this.__db.setTransactionSuccessful();
            } finally {
                this.__db.endTransaction();
            }
        } finally {
            this.__preparedStmtOfDeleteAll.release(acquire);
        }
    }

    @Override
    public List<DownloadInfo> get() {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
            int i10 = columnIndexOrThrow13;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                DownloadInfo downloadInfo = new DownloadInfo();
                ArrayList arrayList2 = arrayList;
                downloadInfo.setId(query.getInt(columnIndexOrThrow));
                downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                int i11 = columnIndexOrThrow;
                downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                int i12 = columnIndexOrThrow2;
                int i13 = columnIndexOrThrow3;
                downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                int i14 = columnIndexOrThrow12;
                int i15 = i10;
                downloadInfo.setCreated(query.getLong(i15));
                int i16 = columnIndexOrThrow14;
                downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                int i17 = columnIndexOrThrow15;
                downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                int i18 = columnIndexOrThrow16;
                downloadInfo.setIdentifier(query.getLong(i18));
                int i19 = columnIndexOrThrow17;
                downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                int i20 = columnIndexOrThrow18;
                downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                int i21 = columnIndexOrThrow19;
                downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                columnIndexOrThrow19 = i21;
                int i22 = columnIndexOrThrow20;
                downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                arrayList2.add(downloadInfo);
                columnIndexOrThrow20 = i22;
                columnIndexOrThrow12 = i14;
                columnIndexOrThrow3 = i13;
                i10 = i15;
                columnIndexOrThrow2 = i12;
                columnIndexOrThrow14 = i16;
                columnIndexOrThrow15 = i17;
                columnIndexOrThrow16 = i18;
                columnIndexOrThrow17 = i19;
                columnIndexOrThrow18 = i20;
                arrayList = arrayList2;
                columnIndexOrThrow = i11;
            }
            ArrayList arrayList3 = arrayList;
            query.close();
            roomSQLiteQuery.release();
            return arrayList3;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override
    public List<Integer> getAllGroupIds() {
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT DISTINCT _group from requests", 0);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                arrayList.add(Integer.valueOf(query.getInt(0)));
            }
            return arrayList;
        } finally {
            query.close();
            acquire.release();
        }
    }

    @Override
    public DownloadInfo getByFile(final String file) {
        RoomSQLiteQuery roomSQLiteQuery;
        DownloadInfo downloadInfo;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _file = ?", 1);
        acquire.bindString(1, file);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
                if (query.moveToFirst()) {
                    DownloadInfo downloadInfo2 = new DownloadInfo();
                    downloadInfo2.setId(query.getInt(columnIndexOrThrow));
                    downloadInfo2.setNamespace(query.getString(columnIndexOrThrow2));
                    downloadInfo2.setUrl(query.getString(columnIndexOrThrow3));
                    downloadInfo2.setFile(query.getString(columnIndexOrThrow4));
                    downloadInfo2.setGroup(query.getInt(columnIndexOrThrow5));
                    downloadInfo2.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                    downloadInfo2.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                    downloadInfo2.setDownloaded(query.getLong(columnIndexOrThrow8));
                    downloadInfo2.setTotal(query.getLong(columnIndexOrThrow9));
                    downloadInfo2.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                    downloadInfo2.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                    downloadInfo2.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                    downloadInfo2.setCreated(query.getLong(columnIndexOrThrow13));
                    downloadInfo2.setTag(query.isNull(columnIndexOrThrow14) ? null : query.getString(columnIndexOrThrow14));
                    downloadInfo2.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(columnIndexOrThrow15)));
                    downloadInfo2.setIdentifier(query.getLong(columnIndexOrThrow16));
                    downloadInfo2.setDownloadOnEnqueue(query.getInt(columnIndexOrThrow17) != 0);
                    downloadInfo2.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(columnIndexOrThrow18)));
                    downloadInfo2.setAutoRetryMaxAttempts(query.getInt(columnIndexOrThrow19));
                    downloadInfo2.setAutoRetryAttempts(query.getInt(columnIndexOrThrow20));
                    downloadInfo = downloadInfo2;
                } else {
                    downloadInfo = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return downloadInfo;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override
    public List<DownloadInfo> getByGroup(final int group) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _group = ?", 1);
        acquire.bindLong(1, group);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
            int i10 = columnIndexOrThrow13;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                DownloadInfo downloadInfo = new DownloadInfo();
                ArrayList arrayList2 = arrayList;
                downloadInfo.setId(query.getInt(columnIndexOrThrow));
                downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                int i11 = columnIndexOrThrow;
                downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                int i12 = columnIndexOrThrow2;
                int i13 = columnIndexOrThrow3;
                downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                int i14 = columnIndexOrThrow11;
                int i15 = i10;
                downloadInfo.setCreated(query.getLong(i15));
                int i16 = columnIndexOrThrow14;
                downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                int i17 = columnIndexOrThrow15;
                downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                int i18 = columnIndexOrThrow16;
                downloadInfo.setIdentifier(query.getLong(i18));
                int i19 = columnIndexOrThrow17;
                downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                int i20 = columnIndexOrThrow18;
                downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                int i21 = columnIndexOrThrow19;
                downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                columnIndexOrThrow19 = i21;
                int i22 = columnIndexOrThrow20;
                downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                arrayList2.add(downloadInfo);
                columnIndexOrThrow20 = i22;
                columnIndexOrThrow11 = i14;
                columnIndexOrThrow3 = i13;
                i10 = i15;
                columnIndexOrThrow2 = i12;
                columnIndexOrThrow14 = i16;
                columnIndexOrThrow15 = i17;
                columnIndexOrThrow16 = i18;
                columnIndexOrThrow17 = i19;
                columnIndexOrThrow18 = i20;
                arrayList = arrayList2;
                columnIndexOrThrow = i11;
            }
            ArrayList arrayList3 = arrayList;
            query.close();
            roomSQLiteQuery.release();
            return arrayList3;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override
    public List<DownloadInfo> getByGroupWithStatus(final int group, final List<Status> statuses) {
        RoomSQLiteQuery roomSQLiteQuery;
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM requests WHERE _group = ");
        newStringBuilder.append("?");
        newStringBuilder.append(" AND _status IN (");
        int size = statuses.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size + 1);
        acquire.bindLong(1, group);
        Iterator<Status> it = statuses.iterator();
        int i10 = 2;
        while (it.hasNext()) {
            acquire.bindLong(i10, this.__converter.toStatusValue(it.next()));
            i10++;
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
                int i11 = columnIndexOrThrow13;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    DownloadInfo downloadInfo = new DownloadInfo();
                    ArrayList arrayList2 = arrayList;
                    downloadInfo.setId(query.getInt(columnIndexOrThrow));
                    downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                    downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                    downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                    downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                    int i12 = columnIndexOrThrow;
                    downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                    downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                    int i13 = columnIndexOrThrow2;
                    int i14 = columnIndexOrThrow3;
                    downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                    downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                    downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                    downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                    downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                    int i15 = columnIndexOrThrow11;
                    int i16 = i11;
                    downloadInfo.setCreated(query.getLong(i16));
                    int i17 = columnIndexOrThrow14;
                    downloadInfo.setTag(query.isNull(i17) ? null : query.getString(i17));
                    int i18 = columnIndexOrThrow15;
                    downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i18)));
                    int i19 = columnIndexOrThrow16;
                    downloadInfo.setIdentifier(query.getLong(i19));
                    int i20 = columnIndexOrThrow17;
                    downloadInfo.setDownloadOnEnqueue(query.getInt(i20) != 0);
                    int i21 = columnIndexOrThrow18;
                    downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i21)));
                    int i22 = columnIndexOrThrow19;
                    downloadInfo.setAutoRetryMaxAttempts(query.getInt(i22));
                    columnIndexOrThrow19 = i22;
                    int i23 = columnIndexOrThrow20;
                    downloadInfo.setAutoRetryAttempts(query.getInt(i23));
                    arrayList2.add(downloadInfo);
                    columnIndexOrThrow20 = i23;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i12;
                    columnIndexOrThrow18 = i21;
                    columnIndexOrThrow11 = i15;
                    columnIndexOrThrow3 = i14;
                    i11 = i16;
                    columnIndexOrThrow2 = i13;
                    columnIndexOrThrow14 = i17;
                    columnIndexOrThrow15 = i18;
                    columnIndexOrThrow16 = i19;
                    columnIndexOrThrow17 = i20;
                }
                ArrayList arrayList3 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override
    public List<DownloadInfo> getByStatus(final Status status) {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _status = ?", 1);
        acquire.bindLong(1, this.__converter.toStatusValue(status));
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
                int i10 = columnIndexOrThrow13;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    DownloadInfo downloadInfo = new DownloadInfo();
                    ArrayList arrayList2 = arrayList;
                    downloadInfo.setId(query.getInt(columnIndexOrThrow));
                    downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                    downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                    downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                    downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                    int i11 = columnIndexOrThrow;
                    downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                    downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                    int i12 = columnIndexOrThrow2;
                    int i13 = columnIndexOrThrow3;
                    downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                    downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                    downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                    downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                    downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                    int i14 = columnIndexOrThrow11;
                    int i15 = i10;
                    downloadInfo.setCreated(query.getLong(i15));
                    int i16 = columnIndexOrThrow14;
                    downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                    int i17 = columnIndexOrThrow15;
                    downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                    int i18 = columnIndexOrThrow16;
                    downloadInfo.setIdentifier(query.getLong(i18));
                    int i19 = columnIndexOrThrow17;
                    downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                    int i20 = columnIndexOrThrow18;
                    downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                    int i21 = columnIndexOrThrow19;
                    downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                    columnIndexOrThrow19 = i21;
                    int i22 = columnIndexOrThrow20;
                    downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                    arrayList2.add(downloadInfo);
                    columnIndexOrThrow20 = i22;
                    columnIndexOrThrow11 = i14;
                    columnIndexOrThrow3 = i13;
                    i10 = i15;
                    columnIndexOrThrow2 = i12;
                    columnIndexOrThrow14 = i16;
                    columnIndexOrThrow15 = i17;
                    columnIndexOrThrow16 = i18;
                    columnIndexOrThrow17 = i19;
                    columnIndexOrThrow18 = i20;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i11;
                }
                ArrayList arrayList3 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override
    public List<DownloadInfo> getDownloadsByRequestIdentifier(final long identifier) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _identifier = ?", 1);
        acquire.bindLong(1, identifier);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
            int i10 = columnIndexOrThrow13;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                DownloadInfo downloadInfo = new DownloadInfo();
                ArrayList arrayList2 = arrayList;
                downloadInfo.setId(query.getInt(columnIndexOrThrow));
                downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                int i11 = columnIndexOrThrow;
                downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                int i12 = columnIndexOrThrow2;
                int i13 = columnIndexOrThrow3;
                downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                int i14 = columnIndexOrThrow11;
                int i15 = i10;
                downloadInfo.setCreated(query.getLong(i15));
                int i16 = columnIndexOrThrow14;
                downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                int i17 = columnIndexOrThrow15;
                downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                int i18 = columnIndexOrThrow16;
                downloadInfo.setIdentifier(query.getLong(i18));
                int i19 = columnIndexOrThrow17;
                downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                int i20 = columnIndexOrThrow18;
                downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                int i21 = columnIndexOrThrow19;
                downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                columnIndexOrThrow19 = i21;
                int i22 = columnIndexOrThrow20;
                downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                arrayList2.add(downloadInfo);
                columnIndexOrThrow20 = i22;
                columnIndexOrThrow11 = i14;
                columnIndexOrThrow3 = i13;
                i10 = i15;
                columnIndexOrThrow2 = i12;
                columnIndexOrThrow14 = i16;
                columnIndexOrThrow15 = i17;
                columnIndexOrThrow16 = i18;
                columnIndexOrThrow17 = i19;
                columnIndexOrThrow18 = i20;
                arrayList = arrayList2;
                columnIndexOrThrow = i11;
            }
            ArrayList arrayList3 = arrayList;
            query.close();
            roomSQLiteQuery.release();
            return arrayList3;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override
    public List<DownloadInfo> getDownloadsByTag(final String tag) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _tag = ?", 1);
        acquire.bindString(1, tag);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
            int i10 = columnIndexOrThrow13;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                DownloadInfo downloadInfo = new DownloadInfo();
                ArrayList arrayList2 = arrayList;
                downloadInfo.setId(query.getInt(columnIndexOrThrow));
                downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                int i11 = columnIndexOrThrow;
                downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                int i12 = columnIndexOrThrow2;
                int i13 = columnIndexOrThrow3;
                downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                int i14 = columnIndexOrThrow11;
                int i15 = i10;
                downloadInfo.setCreated(query.getLong(i15));
                int i16 = columnIndexOrThrow14;
                downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                int i17 = columnIndexOrThrow15;
                downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                int i18 = columnIndexOrThrow16;
                downloadInfo.setIdentifier(query.getLong(i18));
                int i19 = columnIndexOrThrow17;
                downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                int i20 = columnIndexOrThrow18;
                downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                int i21 = columnIndexOrThrow19;
                downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                columnIndexOrThrow19 = i21;
                int i22 = columnIndexOrThrow20;
                downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                arrayList2.add(downloadInfo);
                columnIndexOrThrow20 = i22;
                columnIndexOrThrow11 = i14;
                columnIndexOrThrow3 = i13;
                i10 = i15;
                columnIndexOrThrow2 = i12;
                columnIndexOrThrow14 = i16;
                columnIndexOrThrow15 = i17;
                columnIndexOrThrow16 = i18;
                columnIndexOrThrow17 = i19;
                columnIndexOrThrow18 = i20;
                arrayList = arrayList2;
                columnIndexOrThrow = i11;
            }
            ArrayList arrayList3 = arrayList;
            query.close();
            roomSQLiteQuery.release();
            return arrayList3;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override
    public List<DownloadInfo> getPendingDownloadsSorted(final Status status) {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _status = ? ORDER BY _priority DESC, _created ASC", 1);
        acquire.bindLong(1, this.__converter.toStatusValue(status));
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
                int i10 = columnIndexOrThrow13;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    DownloadInfo downloadInfo = new DownloadInfo();
                    ArrayList arrayList2 = arrayList;
                    downloadInfo.setId(query.getInt(columnIndexOrThrow));
                    downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                    downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                    downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                    downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                    int i11 = columnIndexOrThrow;
                    downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                    downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                    int i12 = columnIndexOrThrow2;
                    int i13 = columnIndexOrThrow3;
                    downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                    downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                    downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                    downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                    downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                    int i14 = columnIndexOrThrow11;
                    int i15 = i10;
                    downloadInfo.setCreated(query.getLong(i15));
                    int i16 = columnIndexOrThrow14;
                    downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                    int i17 = columnIndexOrThrow15;
                    downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                    int i18 = columnIndexOrThrow16;
                    downloadInfo.setIdentifier(query.getLong(i18));
                    int i19 = columnIndexOrThrow17;
                    downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                    int i20 = columnIndexOrThrow18;
                    downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                    int i21 = columnIndexOrThrow19;
                    downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                    columnIndexOrThrow19 = i21;
                    int i22 = columnIndexOrThrow20;
                    downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                    arrayList2.add(downloadInfo);
                    columnIndexOrThrow20 = i22;
                    columnIndexOrThrow11 = i14;
                    columnIndexOrThrow3 = i13;
                    i10 = i15;
                    columnIndexOrThrow2 = i12;
                    columnIndexOrThrow14 = i16;
                    columnIndexOrThrow15 = i17;
                    columnIndexOrThrow16 = i18;
                    columnIndexOrThrow17 = i19;
                    columnIndexOrThrow18 = i20;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i11;
                }
                ArrayList arrayList3 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override
    public List<DownloadInfo> getPendingDownloadsSortedDesc(final Status status) {
        RoomSQLiteQuery roomSQLiteQuery;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _status = ? ORDER BY _priority DESC, _created DESC", 1);
        acquire.bindLong(1, this.__converter.toStatusValue(status));
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
                int i10 = columnIndexOrThrow13;
                ArrayList arrayList = new ArrayList(query.getCount());
                while (query.moveToNext()) {
                    DownloadInfo downloadInfo = new DownloadInfo();
                    ArrayList arrayList2 = arrayList;
                    downloadInfo.setId(query.getInt(columnIndexOrThrow));
                    downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                    downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                    downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                    downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                    int i11 = columnIndexOrThrow;
                    downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                    downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                    int i12 = columnIndexOrThrow2;
                    int i13 = columnIndexOrThrow3;
                    downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                    downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                    downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                    downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                    downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                    int i14 = columnIndexOrThrow11;
                    int i15 = i10;
                    downloadInfo.setCreated(query.getLong(i15));
                    int i16 = columnIndexOrThrow14;
                    downloadInfo.setTag(query.isNull(i16) ? null : query.getString(i16));
                    int i17 = columnIndexOrThrow15;
                    downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i17)));
                    int i18 = columnIndexOrThrow16;
                    downloadInfo.setIdentifier(query.getLong(i18));
                    int i19 = columnIndexOrThrow17;
                    downloadInfo.setDownloadOnEnqueue(query.getInt(i19) != 0);
                    int i20 = columnIndexOrThrow18;
                    downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i20)));
                    int i21 = columnIndexOrThrow19;
                    downloadInfo.setAutoRetryMaxAttempts(query.getInt(i21));
                    columnIndexOrThrow19 = i21;
                    int i22 = columnIndexOrThrow20;
                    downloadInfo.setAutoRetryAttempts(query.getInt(i22));
                    arrayList2.add(downloadInfo);
                    columnIndexOrThrow20 = i22;
                    columnIndexOrThrow11 = i14;
                    columnIndexOrThrow3 = i13;
                    i10 = i15;
                    columnIndexOrThrow2 = i12;
                    columnIndexOrThrow14 = i16;
                    columnIndexOrThrow15 = i17;
                    columnIndexOrThrow16 = i18;
                    columnIndexOrThrow17 = i19;
                    columnIndexOrThrow18 = i20;
                    arrayList = arrayList2;
                    columnIndexOrThrow = i11;
                }
                ArrayList arrayList3 = arrayList;
                query.close();
                roomSQLiteQuery.release();
                return arrayList3;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override
    public long insert(final DownloadInfo downloadInfo) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            long insertAndReturnId = this.__insertionAdapterOfDownloadInfo.insertAndReturnId(downloadInfo);
            this.__db.setTransactionSuccessful();
            return insertAndReturnId;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void update(final DownloadInfo download) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfDownloadInfo.handle(download);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void delete(final List<? extends DownloadInfo> downloadInfoList) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__deletionAdapterOfDownloadInfo.handleMultiple(downloadInfoList);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public List<Long> insert(final List<? extends DownloadInfo> downloadInfoList) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            List<Long> insertAndReturnIdsList = this.__insertionAdapterOfDownloadInfo.insertAndReturnIdsList(downloadInfoList);
            this.__db.setTransactionSuccessful();
            return insertAndReturnIdsList;
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public void update(final List<? extends DownloadInfo> downloadInfoList) {
        this.__db.assertNotSuspendingTransaction();
        this.__db.beginTransaction();
        try {
            this.__updateAdapterOfDownloadInfo.handleMultiple(downloadInfoList);
            this.__db.setTransactionSuccessful();
        } finally {
            this.__db.endTransaction();
        }
    }

    @Override
    public DownloadInfo get(final int id2) {
        RoomSQLiteQuery roomSQLiteQuery;
        DownloadInfo downloadInfo;
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire("SELECT * FROM requests WHERE _id = ?", 1);
        acquire.bindLong(1, id2);
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            int columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            int columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            int columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            int columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            int columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            int columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            int columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            int columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            int columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            int columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            int columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            int columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            int columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
            try {
                int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
                int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
                int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
                int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
                int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
                int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
                int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
                if (query.moveToFirst()) {
                    DownloadInfo downloadInfo2 = new DownloadInfo();
                    downloadInfo2.setId(query.getInt(columnIndexOrThrow));
                    downloadInfo2.setNamespace(query.getString(columnIndexOrThrow2));
                    downloadInfo2.setUrl(query.getString(columnIndexOrThrow3));
                    downloadInfo2.setFile(query.getString(columnIndexOrThrow4));
                    downloadInfo2.setGroup(query.getInt(columnIndexOrThrow5));
                    downloadInfo2.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                    downloadInfo2.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                    downloadInfo2.setDownloaded(query.getLong(columnIndexOrThrow8));
                    downloadInfo2.setTotal(query.getLong(columnIndexOrThrow9));
                    downloadInfo2.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                    downloadInfo2.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                    downloadInfo2.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                    downloadInfo2.setCreated(query.getLong(columnIndexOrThrow13));
                    downloadInfo2.setTag(query.isNull(columnIndexOrThrow14) ? null : query.getString(columnIndexOrThrow14));
                    downloadInfo2.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(columnIndexOrThrow15)));
                    downloadInfo2.setIdentifier(query.getLong(columnIndexOrThrow16));
                    downloadInfo2.setDownloadOnEnqueue(query.getInt(columnIndexOrThrow17) != 0);
                    downloadInfo2.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(columnIndexOrThrow18)));
                    downloadInfo2.setAutoRetryMaxAttempts(query.getInt(columnIndexOrThrow19));
                    downloadInfo2.setAutoRetryAttempts(query.getInt(columnIndexOrThrow20));
                    downloadInfo = downloadInfo2;
                } else {
                    downloadInfo = null;
                }
                query.close();
                roomSQLiteQuery.release();
                return downloadInfo;
            } catch (Throwable th2) {
                th = th2;
                query.close();
                roomSQLiteQuery.release();
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            roomSQLiteQuery = acquire;
        }
    }

    @Override
    public List<DownloadInfo> getByStatus(final List<Status> statuses) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM requests WHERE _status IN (");
        int size = statuses.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        Iterator<Status> it = statuses.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            acquire.bindLong(i10, this.__converter.toStatusValue(it.next()));
            i10++;
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
            int i11 = columnIndexOrThrow13;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                DownloadInfo downloadInfo = new DownloadInfo();
                ArrayList arrayList2 = arrayList;
                downloadInfo.setId(query.getInt(columnIndexOrThrow));
                downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                int i12 = columnIndexOrThrow;
                downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                int i13 = columnIndexOrThrow2;
                int i14 = columnIndexOrThrow3;
                downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                int i15 = columnIndexOrThrow11;
                int i16 = i11;
                downloadInfo.setCreated(query.getLong(i16));
                int i17 = columnIndexOrThrow14;
                downloadInfo.setTag(query.isNull(i17) ? null : query.getString(i17));
                int i18 = columnIndexOrThrow15;
                downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i18)));
                int i19 = columnIndexOrThrow16;
                downloadInfo.setIdentifier(query.getLong(i19));
                int i20 = columnIndexOrThrow17;
                downloadInfo.setDownloadOnEnqueue(query.getInt(i20) != 0);
                int i21 = columnIndexOrThrow18;
                downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i21)));
                int i22 = columnIndexOrThrow19;
                downloadInfo.setAutoRetryMaxAttempts(query.getInt(i22));
                columnIndexOrThrow19 = i22;
                int i23 = columnIndexOrThrow20;
                downloadInfo.setAutoRetryAttempts(query.getInt(i23));
                arrayList2.add(downloadInfo);
                columnIndexOrThrow20 = i23;
                arrayList = arrayList2;
                columnIndexOrThrow = i12;
                columnIndexOrThrow18 = i21;
                columnIndexOrThrow11 = i15;
                columnIndexOrThrow3 = i14;
                i11 = i16;
                columnIndexOrThrow2 = i13;
                columnIndexOrThrow14 = i17;
                columnIndexOrThrow15 = i18;
                columnIndexOrThrow16 = i19;
                columnIndexOrThrow17 = i20;
            }
            ArrayList arrayList3 = arrayList;
            query.close();
            roomSQLiteQuery.release();
            return arrayList3;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }

    @Override
    public List<DownloadInfo> get(final List<Integer> ids) {
        RoomSQLiteQuery roomSQLiteQuery;
        int columnIndexOrThrow;
        int columnIndexOrThrow2;
        int columnIndexOrThrow3;
        int columnIndexOrThrow4;
        int columnIndexOrThrow5;
        int columnIndexOrThrow6;
        int columnIndexOrThrow7;
        int columnIndexOrThrow8;
        int columnIndexOrThrow9;
        int columnIndexOrThrow10;
        int columnIndexOrThrow11;
        int columnIndexOrThrow12;
        int columnIndexOrThrow13;
        StringBuilder newStringBuilder = StringUtil.newStringBuilder();
        newStringBuilder.append("SELECT * FROM requests WHERE _id IN (");
        int size = ids.size();
        StringUtil.appendPlaceholders(newStringBuilder, size);
        newStringBuilder.append(")");
        RoomSQLiteQuery acquire = RoomSQLiteQuery.acquire(newStringBuilder.toString(), size);
        Iterator<Integer> it = ids.iterator();
        int i10 = 1;
        while (it.hasNext()) {
            acquire.bindLong(i10, it.next().intValue());
            i10++;
        }
        this.__db.assertNotSuspendingTransaction();
        Cursor query = DBUtil.query(this.__db, acquire, false, null);
        try {
            columnIndexOrThrow = CursorUtil.getColumnIndexOrThrow(query, "_id");
            columnIndexOrThrow2 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NAMESPACE);
            columnIndexOrThrow3 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_URL);
            columnIndexOrThrow4 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_FILE);
            columnIndexOrThrow5 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_GROUP);
            columnIndexOrThrow6 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_PRIORITY);
            columnIndexOrThrow7 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_HEADERS);
            columnIndexOrThrow8 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOADED);
            columnIndexOrThrow9 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TOTAL);
            columnIndexOrThrow10 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_STATUS);
            columnIndexOrThrow11 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ERROR);
            columnIndexOrThrow12 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_NETWORK_TYPE);
            columnIndexOrThrow13 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_CREATED);
            roomSQLiteQuery = acquire;
        } catch (Throwable th2) {
            th = th2;
            roomSQLiteQuery = acquire;
        }
        try {
            int columnIndexOrThrow14 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_TAG);
            int columnIndexOrThrow15 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_ENQUEUE_ACTION);
            int columnIndexOrThrow16 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_IDENTIFIER);
            int columnIndexOrThrow17 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_DOWNLOAD_ON_ENQUEUE);
            int columnIndexOrThrow18 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_EXTRAS);
            int columnIndexOrThrow19 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_MAX_ATTEMPTS);
            int columnIndexOrThrow20 = CursorUtil.getColumnIndexOrThrow(query, DownloadDatabase.COLUMN_AUTO_RETRY_ATTEMPTS);
            int i11 = columnIndexOrThrow13;
            ArrayList arrayList = new ArrayList(query.getCount());
            while (query.moveToNext()) {
                DownloadInfo downloadInfo = new DownloadInfo();
                ArrayList arrayList2 = arrayList;
                downloadInfo.setId(query.getInt(columnIndexOrThrow));
                downloadInfo.setNamespace(query.getString(columnIndexOrThrow2));
                downloadInfo.setUrl(query.getString(columnIndexOrThrow3));
                downloadInfo.setFile(query.getString(columnIndexOrThrow4));
                downloadInfo.setGroup(query.getInt(columnIndexOrThrow5));
                int i12 = columnIndexOrThrow;
                downloadInfo.setPriority(this.__converter.fromPriorityValue(query.getInt(columnIndexOrThrow6)));
                downloadInfo.setHeaders(this.__converter.fromJsonString(query.getString(columnIndexOrThrow7)));
                int i13 = columnIndexOrThrow2;
                int i14 = columnIndexOrThrow3;
                downloadInfo.setDownloaded(query.getLong(columnIndexOrThrow8));
                downloadInfo.setTotal(query.getLong(columnIndexOrThrow9));
                downloadInfo.setStatus(this.__converter.fromStatusValue(query.getInt(columnIndexOrThrow10)));
                downloadInfo.setError(this.__converter.fromErrorValue(query.getInt(columnIndexOrThrow11)));
                downloadInfo.setNetworkType(this.__converter.fromNetworkTypeValue(query.getInt(columnIndexOrThrow12)));
                int i15 = columnIndexOrThrow11;
                int i16 = i11;
                downloadInfo.setCreated(query.getLong(i16));
                int i17 = columnIndexOrThrow14;
                downloadInfo.setTag(query.isNull(i17) ? null : query.getString(i17));
                int i18 = columnIndexOrThrow15;
                downloadInfo.setEnqueueAction(this.__converter.fromEnqueueActionValue(query.getInt(i18)));
                int i19 = columnIndexOrThrow16;
                downloadInfo.setIdentifier(query.getLong(i19));
                int i20 = columnIndexOrThrow17;
                downloadInfo.setDownloadOnEnqueue(query.getInt(i20) != 0);
                int i21 = columnIndexOrThrow18;
                downloadInfo.setExtras(this.__converter.fromExtrasJsonToExtras(query.getString(i21)));
                int i22 = columnIndexOrThrow19;
                downloadInfo.setAutoRetryMaxAttempts(query.getInt(i22));
                columnIndexOrThrow19 = i22;
                int i23 = columnIndexOrThrow20;
                downloadInfo.setAutoRetryAttempts(query.getInt(i23));
                arrayList2.add(downloadInfo);
                columnIndexOrThrow20 = i23;
                arrayList = arrayList2;
                columnIndexOrThrow = i12;
                columnIndexOrThrow18 = i21;
                columnIndexOrThrow11 = i15;
                columnIndexOrThrow3 = i14;
                i11 = i16;
                columnIndexOrThrow2 = i13;
                columnIndexOrThrow14 = i17;
                columnIndexOrThrow15 = i18;
                columnIndexOrThrow16 = i19;
                columnIndexOrThrow17 = i20;
            }
            ArrayList arrayList3 = arrayList;
            query.close();
            roomSQLiteQuery.release();
            return arrayList3;
        } catch (Throwable th3) {
            th = th3;
            query.close();
            roomSQLiteQuery.release();
            throw th;
        }
    }
}
