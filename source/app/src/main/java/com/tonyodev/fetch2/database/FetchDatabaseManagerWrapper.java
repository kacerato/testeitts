package com.tonyodev.fetch2.database;

import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.FetchDatabaseManager;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.Logger;
import java.util.List;
import kotlin.jvm.internal.M;
import nf.P0;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FetchDatabaseManagerWrapper implements FetchDatabaseManager<DownloadInfo> {

    @NotNull
    private final FetchDatabaseManager<DownloadInfo> fetchDatabaseManager;

    @NotNull
    private final Object lock;

    @NotNull
    private final Logger logger;

    public FetchDatabaseManagerWrapper(@NotNull FetchDatabaseManager<DownloadInfo> fetchDatabaseManager) {
        M.p(fetchDatabaseManager, "fetchDatabaseManager");
        this.fetchDatabaseManager = fetchDatabaseManager;
        this.logger = fetchDatabaseManager.getLogger();
        this.lock = new Object();
    }

    @Override
    public void close() {
        synchronized (this.lock) {
            this.fetchDatabaseManager.close();
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void delete(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        synchronized (this.lock) {
            this.fetchDatabaseManager.delete((FetchDatabaseManager<DownloadInfo>) downloadInfo);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void deleteAll() {
        synchronized (this.lock) {
            this.fetchDatabaseManager.deleteAll();
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    @NotNull
    public List<DownloadInfo> get() {
        List<DownloadInfo> list;
        synchronized (this.lock) {
            list = this.fetchDatabaseManager.get();
        }
        return list;
    }

    @Override
    @NotNull
    public List<Integer> getAllGroupIds() {
        List<Integer> allGroupIds;
        synchronized (this.lock) {
            allGroupIds = this.fetchDatabaseManager.getAllGroupIds();
        }
        return allGroupIds;
    }

    @Override
    @Nullable
    public DownloadInfo getByFile(@NotNull String file) {
        DownloadInfo byFile;
        M.p(file, "file");
        synchronized (this.lock) {
            byFile = this.fetchDatabaseManager.getByFile(file);
        }
        return byFile;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getByGroup(int i10) {
        List<DownloadInfo> byGroup;
        synchronized (this.lock) {
            byGroup = this.fetchDatabaseManager.getByGroup(i10);
        }
        return byGroup;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getByStatus(@NotNull Status status) {
        List<DownloadInfo> byStatus;
        M.p(status, "status");
        synchronized (this.lock) {
            byStatus = this.fetchDatabaseManager.getByStatus(status);
        }
        return byStatus;
    }

    @Override
    @Nullable
    public FetchDatabaseManager.Delegate<DownloadInfo> getDelegate() {
        FetchDatabaseManager.Delegate<DownloadInfo> delegate;
        synchronized (this.lock) {
            delegate = this.fetchDatabaseManager.getDelegate();
        }
        return delegate;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getDownloadsByRequestIdentifier(long j10) {
        List<DownloadInfo> downloadsByRequestIdentifier;
        synchronized (this.lock) {
            downloadsByRequestIdentifier = this.fetchDatabaseManager.getDownloadsByRequestIdentifier(j10);
        }
        return downloadsByRequestIdentifier;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getDownloadsByTag(@NotNull String tag) {
        List<DownloadInfo> downloadsByTag;
        M.p(tag, "tag");
        synchronized (this.lock) {
            downloadsByTag = this.fetchDatabaseManager.getDownloadsByTag(tag);
        }
        return downloadsByTag;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        List<DownloadInfo> downloadsInGroupWithStatus;
        M.p(statuses, "statuses");
        synchronized (this.lock) {
            downloadsInGroupWithStatus = this.fetchDatabaseManager.getDownloadsInGroupWithStatus(i10, statuses);
        }
        return downloadsInGroupWithStatus;
    }

    @Override
    @NotNull
    public Logger getLogger() {
        return this.logger;
    }

    @Override
    @NotNull
    public DownloadInfo getNewDownloadInfoInstance() {
        return this.fetchDatabaseManager.getNewDownloadInfoInstance();
    }

    @Override
    public long getPendingCount(boolean z10) {
        long pendingCount;
        synchronized (this.lock) {
            pendingCount = this.fetchDatabaseManager.getPendingCount(z10);
        }
        return pendingCount;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getPendingDownloadsSorted(@NotNull PrioritySort prioritySort) {
        List<DownloadInfo> pendingDownloadsSorted;
        M.p(prioritySort, "prioritySort");
        synchronized (this.lock) {
            pendingDownloadsSorted = this.fetchDatabaseManager.getPendingDownloadsSorted(prioritySort);
        }
        return pendingDownloadsSorted;
    }

    @Override
    @NotNull
    public Z<DownloadInfo, Boolean> insert(@NotNull DownloadInfo downloadInfo) {
        Z<DownloadInfo, Boolean> insert;
        M.p(downloadInfo, "downloadInfo");
        synchronized (this.lock) {
            insert = this.fetchDatabaseManager.insert((FetchDatabaseManager<DownloadInfo>) downloadInfo);
        }
        return insert;
    }

    @Override
    public boolean isClosed() {
        boolean isClosed;
        synchronized (this.lock) {
            isClosed = this.fetchDatabaseManager.isClosed();
        }
        return isClosed;
    }

    @Override
    public void sanitizeOnFirstEntry() {
        synchronized (this.lock) {
            this.fetchDatabaseManager.sanitizeOnFirstEntry();
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void setDelegate(@Nullable FetchDatabaseManager.Delegate<DownloadInfo> delegate) {
        synchronized (this.lock) {
            this.fetchDatabaseManager.setDelegate(delegate);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void update(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        synchronized (this.lock) {
            this.fetchDatabaseManager.update((FetchDatabaseManager<DownloadInfo>) downloadInfo);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    @Nullable
    public DownloadInfo updateExtras(int i10, @NotNull Extras extras) {
        DownloadInfo updateExtras;
        M.p(extras, "extras");
        synchronized (this.lock) {
            updateExtras = this.fetchDatabaseManager.updateExtras(i10, extras);
        }
        return updateExtras;
    }

    @Override
    public void updateFileBytesInfoAndStatusOnly(@NotNull DownloadInfo downloadInfo) {
        M.p(downloadInfo, "downloadInfo");
        synchronized (this.lock) {
            this.fetchDatabaseManager.updateFileBytesInfoAndStatusOnly(downloadInfo);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    @Nullable
    public DownloadInfo get(int i10) {
        DownloadInfo downloadInfo;
        synchronized (this.lock) {
            downloadInfo = this.fetchDatabaseManager.get(i10);
        }
        return downloadInfo;
    }

    @Override
    @NotNull
    public List<DownloadInfo> getByStatus(@NotNull List<? extends Status> statuses) {
        List<DownloadInfo> byStatus;
        M.p(statuses, "statuses");
        synchronized (this.lock) {
            byStatus = this.fetchDatabaseManager.getByStatus(statuses);
        }
        return byStatus;
    }

    @Override
    @NotNull
    public List<Z<DownloadInfo, Boolean>> insert(@NotNull List<? extends DownloadInfo> downloadInfoList) {
        List<Z<DownloadInfo, Boolean>> insert;
        M.p(downloadInfoList, "downloadInfoList");
        synchronized (this.lock) {
            insert = this.fetchDatabaseManager.insert(downloadInfoList);
        }
        return insert;
    }

    @Override
    public void delete(@NotNull List<? extends DownloadInfo> downloadInfoList) {
        M.p(downloadInfoList, "downloadInfoList");
        synchronized (this.lock) {
            this.fetchDatabaseManager.delete(downloadInfoList);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void update(@NotNull List<? extends DownloadInfo> downloadInfoList) {
        M.p(downloadInfoList, "downloadInfoList");
        synchronized (this.lock) {
            this.fetchDatabaseManager.update(downloadInfoList);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    @NotNull
    public List<DownloadInfo> get(@NotNull List<Integer> ids) {
        List<DownloadInfo> list;
        M.p(ids, "ids");
        synchronized (this.lock) {
            list = this.fetchDatabaseManager.get(ids);
        }
        return list;
    }
}
