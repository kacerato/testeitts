package com.tonyodev.fetch2.downloader;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.M;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.S;

public final class DownloadManagerCoordinator {

    @NotNull
    private final Map<Integer, FileDownloader> fileDownloaderMap;

    @NotNull
    private final Object lock;

    @NotNull
    private final String namespace;

    public DownloadManagerCoordinator(@NotNull String namespace) {
        M.p(namespace, "namespace");
        this.namespace = namespace;
        this.lock = new Object();
        this.fileDownloaderMap = new LinkedHashMap();
    }

    public final void addFileDownloader(int i10, @Nullable FileDownloader fileDownloader) {
        synchronized (this.lock) {
            this.fileDownloaderMap.put(Integer.valueOf(i10), fileDownloader);
            P0 p02 = P0.f98194a;
        }
    }

    public final void clearAll() {
        synchronized (this.lock) {
            this.fileDownloaderMap.clear();
            P0 p02 = P0.f98194a;
        }
    }

    public final boolean containsFileDownloader(int i10) {
        boolean containsKey;
        synchronized (this.lock) {
            containsKey = this.fileDownloaderMap.containsKey(Integer.valueOf(i10));
        }
        return containsKey;
    }

    @NotNull
    public final List<FileDownloader> getFileDownloaderList() {
        List<FileDownloader> a62;
        synchronized (this.lock) {
            a62 = S.a6(this.fileDownloaderMap.values());
        }
        return a62;
    }

    @NotNull
    public final String getNamespace() {
        return this.namespace;
    }

    public final void interruptDownload(int i10) {
        synchronized (this.lock) {
            try {
                FileDownloader fileDownloader = this.fileDownloaderMap.get(Integer.valueOf(i10));
                if (fileDownloader != null) {
                    fileDownloader.setInterrupted(true);
                    this.fileDownloaderMap.remove(Integer.valueOf(i10));
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void removeFileDownloader(int i10) {
        synchronized (this.lock) {
            this.fileDownloaderMap.remove(Integer.valueOf(i10));
        }
    }
}
