package com.tonyodev.fetch2.downloader;

import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.downloader.FileDownloader;
import com.tonyodev.fetch2.util.FetchTypeConverterExtensions;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;
import org.jetbrains.annotations.NotNull;

public final class ParallelFileDownloaderImpl$downloadInfo$2 extends O implements Mf.a<DownloadInfo> {
    final ParallelFileDownloaderImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ParallelFileDownloaderImpl$downloadInfo$2(ParallelFileDownloaderImpl parallelFileDownloaderImpl) {
        super(0);
        this.this$0 = parallelFileDownloaderImpl;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    @NotNull
    public final DownloadInfo invoke() {
        Download download;
        download = this.this$0.initialDownload;
        FileDownloader.Delegate delegate = this.this$0.getDelegate();
        M.m(delegate);
        return FetchTypeConverterExtensions.toDownloadInfo(download, delegate.getNewDownloadInfoInstance());
    }
}
