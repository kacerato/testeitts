package com.tonyodev.fetch2;

import com.tonyodev.fetch2core.FetchObserver;
import java.util.List;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

public interface FetchGroup {
    void addFetchGroupObservers(@NotNull FetchGroupObserver... fetchGroupObserverArr);

    @NotNull
    List<Download> getAddedDownloads();

    @NotNull
    List<Download> getCancelledDownloads();

    @NotNull
    List<Download> getCompletedDownloads();

    @NotNull
    List<Download> getDeletedDownloads();

    @NotNull
    List<Download> getDownloadingDownloads();

    @NotNull
    List<Download> getDownloads();

    @NotNull
    List<Download> getFailedDownloads();

    int getGroupDownloadProgress();

    int getId();

    @NotNull
    String getNamespace();

    @NotNull
    Set<FetchObserver<List<Download>>> getObservers();

    @NotNull
    List<Download> getPausedDownloads();

    @NotNull
    List<Download> getQueuedDownloads();

    @NotNull
    List<Download> getRemovedDownloads();

    void removeFetchGroupObservers(@NotNull FetchGroupObserver... fetchGroupObserverArr);
}
