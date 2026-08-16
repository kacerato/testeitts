package com.tonyodev.fetch2.database;

import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.Logger;
import java.io.Closeable;
import java.util.List;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FetchDatabaseManager<T extends DownloadInfo> extends Closeable {

    public interface Delegate<T extends DownloadInfo> {
        void deleteTempFilesForDownload(@NotNull T t10);
    }

    void delete(@NotNull T t10);

    void delete(@NotNull List<? extends T> list);

    void deleteAll();

    @Nullable
    T get(int i10);

    @NotNull
    List<T> get();

    @NotNull
    List<T> get(@NotNull List<Integer> list);

    @NotNull
    List<Integer> getAllGroupIds();

    @Nullable
    T getByFile(@NotNull String str);

    @NotNull
    List<T> getByGroup(int i10);

    @NotNull
    List<T> getByStatus(@NotNull Status status);

    @NotNull
    List<T> getByStatus(@NotNull List<? extends Status> list);

    @Nullable
    Delegate<T> getDelegate();

    @NotNull
    List<T> getDownloadsByRequestIdentifier(long j10);

    @NotNull
    List<T> getDownloadsByTag(@NotNull String str);

    @NotNull
    List<T> getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> list);

    @NotNull
    Logger getLogger();

    @NotNull
    T getNewDownloadInfoInstance();

    long getPendingCount(boolean z10);

    @NotNull
    List<T> getPendingDownloadsSorted(@NotNull PrioritySort prioritySort);

    @NotNull
    List<Z<T, Boolean>> insert(@NotNull List<? extends T> list);

    @NotNull
    Z<T, Boolean> insert(@NotNull T t10);

    boolean isClosed();

    void sanitizeOnFirstEntry();

    void setDelegate(@Nullable Delegate<T> delegate);

    void update(@NotNull T t10);

    void update(@NotNull List<? extends T> list);

    @Nullable
    T updateExtras(int i10, @NotNull Extras extras);

    void updateFileBytesInfoAndStatusOnly(@NotNull T t10);
}
