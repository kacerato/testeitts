package com.tonyodev.fetch2.fetch;

import com.tonyodev.fetch2.CompletedDownload;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2.FetchListener;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.FileResource;
import java.io.Closeable;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FetchHandler extends Closeable {

    public static final class DefaultImpls {
        /* JADX WARN: Multi-variable type inference failed */
        public static Downloader.Response getServerResponse$default(FetchHandler fetchHandler, String str, Map map, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getServerResponse");
            }
            if ((i10 & 2) != 0) {
                map = null;
            }
            return fetchHandler.getServerResponse(str, map);
        }
    }

    void addFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObserverArr);

    void addListener(@NotNull FetchListener fetchListener, boolean z10, boolean z11);

    @NotNull
    List<Download> cancel(@NotNull List<Integer> list);

    @NotNull
    List<Download> cancelAll();

    @NotNull
    List<Download> cancelGroup(int i10);

    @NotNull
    List<Download> delete(@NotNull List<Integer> list);

    @NotNull
    List<Download> deleteAll();

    @NotNull
    List<Download> deleteAllInGroupWithStatus(int i10, @NotNull List<? extends Status> list);

    @NotNull
    List<Download> deleteAllWithStatus(@NotNull Status status);

    @NotNull
    List<Download> deleteGroup(int i10);

    void enableLogging(boolean z10);

    @NotNull
    List<nf.Z<Download, Error>> enqueue(@NotNull List<? extends Request> list);

    @NotNull
    nf.Z<Download, Error> enqueue(@NotNull Request request);

    @NotNull
    List<nf.Z<DownloadInfo, Boolean>> enqueueBatch(@NotNull List<? extends Request> list);

    @NotNull
    Download enqueueCompletedDownload(@NotNull CompletedDownload completedDownload);

    @NotNull
    List<Download> enqueueCompletedDownloads(@NotNull List<? extends CompletedDownload> list);

    void freeze();

    @NotNull
    List<Integer> getAllGroupIds();

    long getContentLengthForRequest(@NotNull Request request, boolean z10);

    @Nullable
    Download getDownload(int i10);

    @NotNull
    List<DownloadBlock> getDownloadBlocks(int i10);

    @NotNull
    List<Download> getDownloads();

    @NotNull
    List<Download> getDownloads(@NotNull List<Integer> list);

    @NotNull
    List<Download> getDownloadsByRequestIdentifier(long j10);

    @NotNull
    List<Download> getDownloadsByTag(@NotNull String str);

    @NotNull
    List<Download> getDownloadsInGroup(int i10);

    @NotNull
    List<Download> getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> list);

    @NotNull
    List<Download> getDownloadsWithStatus(@NotNull Status status);

    @NotNull
    List<Download> getDownloadsWithStatus(@NotNull List<? extends Status> list);

    @NotNull
    List<FileResource> getFetchFileServerCatalog(@NotNull Request request);

    @NotNull
    FetchGroup getFetchGroup(int i10);

    @NotNull
    Set<FetchListener> getListenerSet();

    long getPendingCount();

    @NotNull
    Downloader.Response getServerResponse(@NotNull String str, @Nullable Map<String, String> map);

    boolean hasActiveDownloads(boolean z10);

    void init();

    @NotNull
    List<Download> pause(@NotNull List<Integer> list);

    @NotNull
    List<Download> pauseAll();

    @NotNull
    List<Download> pausedGroup(int i10);

    @NotNull
    List<Download> remove(@NotNull List<Integer> list);

    @NotNull
    List<Download> removeAll();

    @NotNull
    List<Download> removeAllInGroupWithStatus(int i10, @NotNull List<? extends Status> list);

    @NotNull
    List<Download> removeAllWithStatus(@NotNull Status status);

    void removeFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObserverArr);

    @NotNull
    List<Download> removeGroup(int i10);

    void removeListener(@NotNull FetchListener fetchListener);

    @NotNull
    Download renameCompletedDownloadFile(int i10, @NotNull String str);

    @NotNull
    Download replaceExtras(int i10, @NotNull Extras extras);

    @Nullable
    Download resetAutoRetryAttempts(int i10, boolean z10);

    @NotNull
    List<Download> resume(@NotNull List<Integer> list);

    @NotNull
    List<Download> resumeAll();

    @NotNull
    List<Download> resumeGroup(int i10);

    @NotNull
    List<Download> retry(@NotNull List<Integer> list);

    void setDownloadConcurrentLimit(int i10);

    void setGlobalNetworkType(@NotNull NetworkType networkType);

    void unfreeze();

    @NotNull
    nf.Z<Download, Boolean> updateRequest(int i10, @NotNull Request request);
}
