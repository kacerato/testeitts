package com.tonyodev.fetch2;

import com.tonyodev.fetch2core.DownloadBlock;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FetchListener {
    void onAdded(@NotNull Download download);

    void onCancelled(@NotNull Download download);

    void onCompleted(@NotNull Download download);

    void onDeleted(@NotNull Download download);

    void onDownloadBlockUpdated(@NotNull Download download, @NotNull DownloadBlock downloadBlock, int i10);

    void onError(@NotNull Download download, @NotNull Error error, @Nullable Throwable th2);

    void onPaused(@NotNull Download download);

    void onProgress(@NotNull Download download, long j10, long j11);

    void onQueued(@NotNull Download download, boolean z10);

    void onRemoved(@NotNull Download download);

    void onResumed(@NotNull Download download);

    void onStarted(@NotNull Download download, @NotNull List<? extends DownloadBlock> list, int i10);

    void onWaitingNetwork(@NotNull Download download);
}
