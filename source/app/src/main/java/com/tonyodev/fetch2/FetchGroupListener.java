package com.tonyodev.fetch2;

import com.tonyodev.fetch2core.DownloadBlock;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FetchGroupListener extends FetchListener {
    void onAdded(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onCancelled(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onCompleted(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onDeleted(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onDownloadBlockUpdated(int i10, @NotNull Download download, @NotNull DownloadBlock downloadBlock, int i11, @NotNull FetchGroup fetchGroup);

    void onError(int i10, @NotNull Download download, @NotNull Error error, @Nullable Throwable th2, @NotNull FetchGroup fetchGroup);

    void onPaused(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onProgress(int i10, @NotNull Download download, long j10, long j11, @NotNull FetchGroup fetchGroup);

    void onQueued(int i10, @NotNull Download download, boolean z10, @NotNull FetchGroup fetchGroup);

    void onRemoved(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onResumed(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);

    void onStarted(int i10, @NotNull Download download, @NotNull List<? extends DownloadBlock> list, int i11, @NotNull FetchGroup fetchGroup);

    void onWaitingNetwork(int i10, @NotNull Download download, @NotNull FetchGroup fetchGroup);
}
