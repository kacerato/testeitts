package com.tonyodev.fetch2.database;

import Vf.l;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import androidx.sqlite.db.SupportSQLiteDatabase;
import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.FetchDatabaseManager;
import com.tonyodev.fetch2.database.migration.Migration;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.fetch.LiveSettings;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2core.DefaultStorageResolver;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.AbstractC14974g0;
import pf.G;
import pf.H;
import pf.I;

@t0({"SMAP\nFetchDatabaseManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchDatabaseManagerImpl.kt\ncom/tonyodev/fetch2/database/FetchDatabaseManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n1549#2:360\n1620#2,3:361\n766#2:364\n857#2,2:365\n766#2:367\n857#2,2:368\n766#2:370\n857#2:371\n1747#2,3:372\n858#2:375\n766#2:376\n857#2,2:377\n*S KotlinDebug\n*F\n+ 1 FetchDatabaseManagerImpl.kt\ncom/tonyodev/fetch2/database/FetchDatabaseManagerImpl\n*L\n54#1:360\n54#1:361,3\n160#1:364\n160#1:365,2\n169#1:367\n169#1:368,2\n185#1:370\n185#1:371\n186#1:372,3\n185#1:375\n207#1:376\n207#1:377,2\n*E\n"})
public final class FetchDatabaseManagerImpl implements FetchDatabaseManager<DownloadInfo> {
    private volatile boolean closed;

    @NotNull
    private final SupportSQLiteDatabase database;

    @NotNull
    private final DefaultStorageResolver defaultStorageResolver;

    @Nullable
    private FetchDatabaseManager.Delegate<DownloadInfo> delegate;
    private final boolean fileExistChecksEnabled;

    @NotNull
    private final LiveSettings liveSettings;

    @NotNull
    private final Logger logger;

    @NotNull
    private final String namespace;

    @NotNull
    private final String pendingCountIncludeAddedQuery;

    @NotNull
    private final String pendingCountQuery;

    @NotNull
    private final DownloadDatabase requestDatabase;

    @NotNull
    private final List<DownloadInfo> updatedDownloadsList;

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Status.values().length];
            try {
                iArr[Status.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Status.DOWNLOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Status.QUEUED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Status.PAUSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Status.CANCELLED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[Status.FAILED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[Status.ADDED.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[Status.NONE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[Status.DELETED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[Status.REMOVED.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public FetchDatabaseManagerImpl(@NotNull Context context, @NotNull String namespace, @NotNull Logger logger, @NotNull Migration[] migrations, @NotNull LiveSettings liveSettings, boolean z10, @NotNull DefaultStorageResolver defaultStorageResolver) {
        M.p(context, "context");
        M.p(namespace, "namespace");
        M.p(logger, "logger");
        M.p(migrations, "migrations");
        M.p(liveSettings, "liveSettings");
        M.p(defaultStorageResolver, "defaultStorageResolver");
        this.namespace = namespace;
        this.logger = logger;
        this.liveSettings = liveSettings;
        this.fileExistChecksEnabled = z10;
        this.defaultStorageResolver = defaultStorageResolver;
        RoomDatabase.Builder databaseBuilder = Room.databaseBuilder(context, DownloadDatabase.class, namespace + ".db");
        databaseBuilder.addMigrations((androidx.room.migration.Migration[]) Arrays.copyOf(migrations, migrations.length));
        DownloadDatabase downloadDatabase = (DownloadDatabase) databaseBuilder.build();
        this.requestDatabase = downloadDatabase;
        this.database = downloadDatabase.getOpenHelper().getWritableDatabase();
        Status status = Status.QUEUED;
        int value = status.getValue();
        Status status2 = Status.DOWNLOADING;
        this.pendingCountQuery = "SELECT _id FROM requests WHERE _status = '" + value + "' OR _status = '" + status2.getValue() + "'";
        this.pendingCountIncludeAddedQuery = "SELECT _id FROM requests WHERE _status = '" + status.getValue() + "' OR _status = '" + status2.getValue() + "' OR _status = '" + Status.ADDED.getValue() + "'";
        this.updatedDownloadsList = new ArrayList();
    }

    private final void onCompleted(DownloadInfo downloadInfo) {
        if (downloadInfo.getTotal() >= 1 || downloadInfo.getDownloaded() <= 0) {
            return;
        }
        downloadInfo.setTotal(downloadInfo.getDownloaded());
        downloadInfo.setError(FetchDefaults.getDefaultNoError());
        this.updatedDownloadsList.add(downloadInfo);
    }

    private final void onDownloading(DownloadInfo downloadInfo, boolean z10) {
        if (z10) {
            downloadInfo.setStatus((downloadInfo.getDownloaded() <= 0 || downloadInfo.getTotal() <= 0 || downloadInfo.getDownloaded() < downloadInfo.getTotal()) ? Status.QUEUED : Status.COMPLETED);
            downloadInfo.setError(FetchDefaults.getDefaultNoError());
            this.updatedDownloadsList.add(downloadInfo);
        }
    }

    private final void onPaused(DownloadInfo downloadInfo) {
        if (downloadInfo.getDownloaded() <= 0 || !this.fileExistChecksEnabled || this.defaultStorageResolver.fileExists(downloadInfo.getFile())) {
            return;
        }
        downloadInfo.setDownloaded(0L);
        downloadInfo.setTotal(-1L);
        downloadInfo.setError(FetchDefaults.getDefaultNoError());
        this.updatedDownloadsList.add(downloadInfo);
        FetchDatabaseManager.Delegate<DownloadInfo> delegate = getDelegate();
        if (delegate != null) {
            delegate.deleteTempFilesForDownload(downloadInfo);
        }
    }

    public final boolean sanitize(List<? extends DownloadInfo> list, boolean z10) {
        this.updatedDownloadsList.clear();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            DownloadInfo downloadInfo = list.get(i10);
            int i11 = WhenMappings.$EnumSwitchMapping$0[downloadInfo.getStatus().ordinal()];
            if (i11 == 1) {
                onCompleted(downloadInfo);
            } else if (i11 == 2) {
                onDownloading(downloadInfo, z10);
            } else if (i11 == 3 || i11 == 4) {
                onPaused(downloadInfo);
            }
        }
        int size2 = this.updatedDownloadsList.size();
        if (size2 > 0) {
            try {
                update(this.updatedDownloadsList);
            } catch (Exception e10) {
                getLogger().e("Failed to update", e10);
            }
        }
        this.updatedDownloadsList.clear();
        return size2 > 0;
    }

    public static boolean sanitize$default(FetchDatabaseManagerImpl fetchDatabaseManagerImpl, List list, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return fetchDatabaseManagerImpl.sanitize((List<? extends DownloadInfo>) list, z10);
    }

    private final void throwExceptionIfClosed() {
        if (this.closed) {
            throw new FetchException(this.namespace + " database is closed");
        }
    }

    @Override
    public void close() {
        if (this.closed) {
            return;
        }
        this.closed = true;
        try {
            this.database.close();
        } catch (Exception unused) {
        }
        try {
            this.requestDatabase.close();
        } catch (Exception unused2) {
        }
        getLogger().d("Database closed");
    }

    @Override
    public void delete(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        throwExceptionIfClosed();
        this.requestDatabase.requestDao().delete(downloadInfo);
    }

    @Override
    public void deleteAll() {
        throwExceptionIfClosed();
        this.requestDatabase.requestDao().deleteAll();
        getLogger().d("Cleared Database " + this.namespace);
    }

    @Override
    @NotNull
    public List<DownloadInfo> get() {
        throwExceptionIfClosed();
        List<DownloadInfo> list = this.requestDatabase.requestDao().get();
        sanitize$default(this, (List) list, false, 2, (Object) null);
        return list;
    }

    @Override
    @NotNull
    public List<Integer> getAllGroupIds() {
        throwExceptionIfClosed();
        return this.requestDatabase.requestDao().getAllGroupIds();
    }

    @Override
    @Nullable
    public DownloadInfo getByFile(@NotNull String file) {
        M.p(file, "file");
        throwExceptionIfClosed();
        DownloadInfo byFile = this.requestDatabase.requestDao().getByFile(file);
        sanitize$default(this, byFile, false, 2, (Object) null);
        return byFile;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getByGroup(int i10) {
        throwExceptionIfClosed();
        List<DownloadInfo> byGroup = this.requestDatabase.requestDao().getByGroup(i10);
        sanitize$default(this, (List) byGroup, false, 2, (Object) null);
        return byGroup;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getByStatus(@NotNull Status status) {
        M.p(status, "status");
        throwExceptionIfClosed();
        List<DownloadInfo> byStatus = this.requestDatabase.requestDao().getByStatus(status);
        if (!sanitize$default(this, (List) byStatus, false, 2, (Object) null)) {
            return byStatus;
        }
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : byStatus) {
            if (downloadInfo.getStatus() == status) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override
    @Nullable
    public FetchDatabaseManager.Delegate<DownloadInfo> getDelegate() {
        return this.delegate;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getDownloadsByRequestIdentifier(long j10) {
        throwExceptionIfClosed();
        List<DownloadInfo> downloadsByRequestIdentifier = this.requestDatabase.requestDao().getDownloadsByRequestIdentifier(j10);
        sanitize$default(this, (List) downloadsByRequestIdentifier, false, 2, (Object) null);
        return downloadsByRequestIdentifier;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getDownloadsByTag(@NotNull String tag) {
        M.p(tag, "tag");
        throwExceptionIfClosed();
        List<DownloadInfo> downloadsByTag = this.requestDatabase.requestDao().getDownloadsByTag(tag);
        sanitize$default(this, (List) downloadsByTag, false, 2, (Object) null);
        return downloadsByTag;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        M.p(statuses, "statuses");
        throwExceptionIfClosed();
        List<DownloadInfo> byGroupWithStatus = this.requestDatabase.requestDao().getByGroupWithStatus(i10, statuses);
        if (!sanitize$default(this, (List) byGroupWithStatus, false, 2, (Object) null)) {
            return byGroupWithStatus;
        }
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : byGroupWithStatus) {
            DownloadInfo downloadInfo2 = downloadInfo;
            List<? extends Status> list = statuses;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<? extends Status> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (it.next() == downloadInfo2.getStatus()) {
                        arrayList.add(downloadInfo);
                        break;
                    }
                }
            }
        }
        return arrayList;
    }

    @Override
    @NotNull
    public Logger getLogger() {
        return this.logger;
    }

    @Override
    @NotNull
    public DownloadInfo getNewDownloadInfoInstance() {
        return new DownloadInfo();
    }

    @Override
    public long getPendingCount(boolean z10) {
        try {
            Cursor query = this.database.query(z10 ? this.pendingCountIncludeAddedQuery : this.pendingCountQuery);
            long count = query != null ? query.getCount() : -1L;
            if (query != null) {
                query.close();
            }
            return count;
        } catch (Exception unused) {
            return -1L;
        }
    }

    @Override
    @NotNull
    public List<DownloadInfo> getPendingDownloadsSorted(@NotNull PrioritySort prioritySort) {
        M.p(prioritySort, "prioritySort");
        throwExceptionIfClosed();
        List<DownloadInfo> pendingDownloadsSorted = prioritySort == PrioritySort.ASC ? this.requestDatabase.requestDao().getPendingDownloadsSorted(Status.QUEUED) : this.requestDatabase.requestDao().getPendingDownloadsSortedDesc(Status.QUEUED);
        if (!sanitize$default(this, (List) pendingDownloadsSorted, false, 2, (Object) null)) {
            return pendingDownloadsSorted;
        }
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : pendingDownloadsSorted) {
            if (downloadInfo.getStatus() == Status.QUEUED) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    @Override
    @NotNull
    public Z<DownloadInfo, Boolean> insert(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        throwExceptionIfClosed();
        return new Z<>(downloadInfo, Boolean.valueOf(this.requestDatabase.wasRowInserted(this.requestDatabase.requestDao().insert(downloadInfo))));
    }

    @Override
    public boolean isClosed() {
        return this.closed;
    }

    @Override
    public void sanitizeOnFirstEntry() {
        throwExceptionIfClosed();
        this.liveSettings.execute(new FetchDatabaseManagerImpl$sanitizeOnFirstEntry$1(this));
    }

    @Override
    public void setDelegate(@Nullable FetchDatabaseManager.Delegate<DownloadInfo> delegate) {
        this.delegate = delegate;
    }

    @Override
    public void update(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        throwExceptionIfClosed();
        this.requestDatabase.requestDao().update(downloadInfo);
    }

    @Override
    @Nullable
    public DownloadInfo updateExtras(int i10, @NotNull Extras extras) {
        M.p(extras, "extras");
        throwExceptionIfClosed();
        this.database.beginTransaction();
        this.database.execSQL("UPDATE requests SET _extras = '?' WHERE _id = ?", new Object[]{extras.toJSONString(), Integer.valueOf(i10)});
        this.database.setTransactionSuccessful();
        this.database.endTransaction();
        DownloadInfo downloadInfo = this.requestDatabase.requestDao().get(i10);
        sanitize$default(this, downloadInfo, false, 2, (Object) null);
        return downloadInfo;
    }

    @Override
    public void updateFileBytesInfoAndStatusOnly(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        throwExceptionIfClosed();
        try {
            this.database.beginTransaction();
            this.database.execSQL("UPDATE requests SET _written_bytes = ?, _total_bytes = ?, _status = ? WHERE _id = ?", new Object[]{Long.valueOf(downloadInfo.getDownloaded()), Long.valueOf(downloadInfo.getTotal()), Integer.valueOf(downloadInfo.getStatus().getValue()), Integer.valueOf(downloadInfo.getId())});
            this.database.setTransactionSuccessful();
        } catch (SQLiteException e10) {
            getLogger().e("DatabaseManager exception", e10);
        }
        try {
            this.database.endTransaction();
        } catch (SQLiteException e11) {
            getLogger().e("DatabaseManager exception", e11);
        }
    }

    public static boolean sanitize$default(FetchDatabaseManagerImpl fetchDatabaseManagerImpl, DownloadInfo downloadInfo, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return fetchDatabaseManagerImpl.sanitize(downloadInfo, z10);
    }

    @Override
    public void delete(@NotNull List<? extends DownloadInfo> downloadInfoList) {
        M.p(downloadInfoList, "downloadInfoList");
        throwExceptionIfClosed();
        this.requestDatabase.requestDao().delete(downloadInfoList);
    }

    @Override
    public void update(@NotNull List<? extends DownloadInfo> downloadInfoList) {
        M.p(downloadInfoList, "downloadInfoList");
        throwExceptionIfClosed();
        this.requestDatabase.requestDao().update(downloadInfoList);
    }

    @Override
    @Nullable
    public DownloadInfo get(int i10) {
        throwExceptionIfClosed();
        DownloadInfo downloadInfo = this.requestDatabase.requestDao().get(i10);
        sanitize$default(this, downloadInfo, false, 2, (Object) null);
        return downloadInfo;
    }

    @Override
    @NotNull
    public List<Z<DownloadInfo, Boolean>> insert(@NotNull List<? extends DownloadInfo> downloadInfoList) {
        M.p(downloadInfoList, "downloadInfoList");
        throwExceptionIfClosed();
        List<Long> insert = this.requestDatabase.requestDao().insert(downloadInfoList);
        l K10 = H.K(insert);
        ArrayList arrayList = new ArrayList(I.d0(K10, 10));
        Iterator<Integer> it = K10.iterator();
        while (it.hasNext()) {
            int nextInt = ((AbstractC14974g0) it).nextInt();
            arrayList.add(new Z(downloadInfoList.get(nextInt), Boolean.valueOf(this.requestDatabase.wasRowInserted(insert.get(nextInt).longValue()))));
        }
        return arrayList;
    }

    @Override
    @NotNull
    public List<DownloadInfo> get(@NotNull List<Integer> ids) {
        M.p(ids, "ids");
        throwExceptionIfClosed();
        List<DownloadInfo> list = this.requestDatabase.requestDao().get(ids);
        sanitize$default(this, (List) list, false, 2, (Object) null);
        return list;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getByStatus(@NotNull List<? extends Status> statuses) {
        M.p(statuses, "statuses");
        throwExceptionIfClosed();
        List<DownloadInfo> byStatus = this.requestDatabase.requestDao().getByStatus((List<Status>) statuses);
        if (!sanitize$default(this, (List) byStatus, false, 2, (Object) null)) {
            return byStatus;
        }
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : byStatus) {
            if (statuses.contains(downloadInfo.getStatus())) {
                arrayList.add(downloadInfo);
            }
        }
        return arrayList;
    }

    private final boolean sanitize(DownloadInfo downloadInfo, boolean z10) {
        if (downloadInfo == null) {
            return false;
        }
        return sanitize(G.l(downloadInfo), z10);
    }
}
