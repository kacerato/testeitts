package com.tonyodev.fetch2.downloader;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2core.DownloadBlock;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface FileDownloader extends Runnable {

    public interface Delegate {
        boolean getInterrupted();

        @NotNull
        DownloadInfo getNewDownloadInfoInstance();

        void onComplete(@NotNull Download download);

        void onDownloadBlockUpdated(@NotNull Download download, @NotNull DownloadBlock downloadBlock, int i10);

        void onError(@NotNull Download download, @NotNull Error error, @Nullable Throwable th2);

        void onProgress(@NotNull Download download, long j10, long j11);

        void onStarted(@NotNull Download download, @NotNull List<? extends DownloadBlock> list, int i10);

        void saveDownloadProgress(@NotNull Download download);
    }

    boolean getCompletedDownload();

    @Nullable
    Delegate getDelegate();

    @NotNull
    Download getDownload();

    boolean getInterrupted();

    boolean getTerminated();

    void setDelegate(@Nullable Delegate delegate);

    void setInterrupted(boolean z10);

    void setTerminated(boolean z10);
}
