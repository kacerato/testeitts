package com.tonyodev.fetch2.helper;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchListener;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.downloader.FileDownloader;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2core.DownloadBlock;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FileDownloaderDelegate implements FileDownloader.Delegate {

    @NotNull
    private final DownloadInfoUpdater downloadInfoUpdater;

    @NotNull
    private final FetchListener fetchListener;
    private final int globalAutoRetryMaxAttempts;
    private volatile boolean interrupted;
    private final boolean retryOnNetworkGain;

    public FileDownloaderDelegate(@NotNull DownloadInfoUpdater downloadInfoUpdater, @NotNull FetchListener fetchListener, boolean z10, int i10) {
        M.p(downloadInfoUpdater, "downloadInfoUpdater");
        M.p(fetchListener, "fetchListener");
        this.downloadInfoUpdater = downloadInfoUpdater;
        this.fetchListener = fetchListener;
        this.retryOnNetworkGain = z10;
        this.globalAutoRetryMaxAttempts = i10;
    }

    @Override
    public boolean getInterrupted() {
        return this.interrupted;
    }

    @Override
    @NotNull
    public DownloadInfo getNewDownloadInfoInstance() {
        return this.downloadInfoUpdater.getNewDownloadInfoInstance();
    }

    @Override
    public void onComplete(@NotNull Download download) {
        M.p(download, "download");
        if (getInterrupted()) {
            return;
        }
        DownloadInfo downloadInfo = (DownloadInfo) download;
        downloadInfo.setStatus(Status.COMPLETED);
        this.downloadInfoUpdater.update(downloadInfo);
        this.fetchListener.onCompleted(download);
    }

    @Override
    public void onDownloadBlockUpdated(@NotNull Download download, @NotNull DownloadBlock downloadBlock, int i10) {
        M.p(download, "download");
        M.p(downloadBlock, "downloadBlock");
        if (getInterrupted()) {
            return;
        }
        this.fetchListener.onDownloadBlockUpdated(download, downloadBlock, i10);
    }

    @Override
    public void onError(@NotNull Download download, @NotNull Error error, @Nullable Throwable th2) {
        M.p(download, "download");
        M.p(error, "error");
        if (getInterrupted()) {
            return;
        }
        int i10 = this.globalAutoRetryMaxAttempts;
        if (i10 == -1) {
            i10 = download.getAutoRetryMaxAttempts();
        }
        DownloadInfo downloadInfo = (DownloadInfo) download;
        if (this.retryOnNetworkGain && downloadInfo.getError() == Error.NO_NETWORK_CONNECTION) {
            downloadInfo.setStatus(Status.QUEUED);
            downloadInfo.setError(FetchDefaults.getDefaultNoError());
            this.downloadInfoUpdater.update(downloadInfo);
            this.fetchListener.onQueued(download, true);
            return;
        }
        if (downloadInfo.getAutoRetryAttempts() >= i10) {
            downloadInfo.setStatus(Status.FAILED);
            this.downloadInfoUpdater.update(downloadInfo);
            this.fetchListener.onError(download, error, th2);
        } else {
            downloadInfo.setAutoRetryAttempts(downloadInfo.getAutoRetryAttempts() + 1);
            downloadInfo.setStatus(Status.QUEUED);
            downloadInfo.setError(FetchDefaults.getDefaultNoError());
            this.downloadInfoUpdater.update(downloadInfo);
            this.fetchListener.onQueued(download, true);
        }
    }

    @Override
    public void onProgress(@NotNull Download download, long j10, long j11) {
        M.p(download, "download");
        if (getInterrupted()) {
            return;
        }
        this.fetchListener.onProgress(download, j10, j11);
    }

    @Override
    public void onStarted(@NotNull Download download, @NotNull List<? extends DownloadBlock> downloadBlocks, int i10) {
        M.p(download, "download");
        M.p(downloadBlocks, "downloadBlocks");
        if (getInterrupted()) {
            return;
        }
        DownloadInfo downloadInfo = (DownloadInfo) download;
        downloadInfo.setStatus(Status.DOWNLOADING);
        this.downloadInfoUpdater.update(downloadInfo);
        this.fetchListener.onStarted(download, downloadBlocks, i10);
    }

    @Override
    public void saveDownloadProgress(@NotNull Download download) {
        M.p(download, "download");
        if (getInterrupted()) {
            return;
        }
        DownloadInfo downloadInfo = (DownloadInfo) download;
        downloadInfo.setStatus(Status.DOWNLOADING);
        this.downloadInfoUpdater.updateFileBytesInfoAndStatusOnly(downloadInfo);
    }

    public void setInterrupted(boolean z10) {
        this.interrupted = z10;
    }
}
