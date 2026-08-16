package com.tonyodev.fetch2.downloader;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.downloader.FileDownloader;
import java.io.Closeable;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface DownloadManager extends Closeable {
    boolean canAccommodateNewDownload();

    boolean cancel(int i10);

    void cancelAll();

    boolean contains(int i10);

    int getActiveDownloadCount();

    @NotNull
    List<Download> getActiveDownloads();

    @NotNull
    List<Integer> getActiveDownloadsIds();

    int getConcurrentLimit();

    @NotNull
    String getDownloadFileTempDir(@NotNull Download download);

    @NotNull
    FileDownloader.Delegate getFileDownloaderDelegate();

    @Nullable
    FileDownloader getNewFileDownloaderForDownload(@NotNull Download download);

    boolean isClosed();

    void setConcurrentLimit(int i10);

    boolean start(@NotNull Download download);
}
