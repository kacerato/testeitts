package com.tonyodev.fetch2;

import com.tonyodev.fetch2core.DownloadBlock;
import java.util.List;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public abstract class AbstractFetchGroupListener implements FetchGroupListener {
    @Override
    public void onAdded(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onCancelled(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onCompleted(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onDeleted(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onDownloadBlockUpdated(int i10, @NotNull Download download, @NotNull DownloadBlock downloadBlock, int i11, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(downloadBlock, "downloadBlock");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onError(int i10, @NotNull Download download, @NotNull Error error, @Nullable Throwable th2, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(error, "error");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onPaused(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onProgress(int i10, @NotNull Download download, long j10, long j11, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onQueued(int i10, @NotNull Download download, boolean z10, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onRemoved(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onResumed(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onStarted(int i10, @NotNull Download download, @NotNull List<? extends DownloadBlock> downloadBlocks, int i11, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(downloadBlocks, "downloadBlocks");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onWaitingNetwork(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup) {
        M.p(download, "download");
        M.p(fetchGroup, "fetchGroup");
    }

    @Override
    public void onAdded(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onCancelled(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onCompleted(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onDeleted(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onDownloadBlockUpdated(@NotNull Download download, @NotNull DownloadBlock downloadBlock, int i10) {
        M.p(download, "download");
        M.p(downloadBlock, "downloadBlock");
    }

    @Override
    public void onError(@NotNull Download download, @NotNull Error error, @Nullable Throwable th2) {
        M.p(download, "download");
        M.p(error, "error");
    }

    @Override
    public void onPaused(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onProgress(@NotNull Download download, long j10, long j11) {
        M.p(download, "download");
    }

    @Override
    public void onQueued(@NotNull Download download, boolean z10) {
        M.p(download, "download");
    }

    @Override
    public void onRemoved(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onResumed(@NotNull Download download) {
        M.p(download, "download");
    }

    @Override
    public void onStarted(@NotNull Download download, @NotNull List<? extends DownloadBlock> downloadBlocks, int i10) {
        M.p(download, "download");
        M.p(downloadBlocks, "downloadBlocks");
    }

    @Override
    public void onWaitingNetwork(@NotNull Download download) {
        M.p(download, "download");
    }
}
