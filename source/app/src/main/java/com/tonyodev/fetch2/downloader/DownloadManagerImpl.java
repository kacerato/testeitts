package com.tonyodev.fetch2.downloader;

import android.content.Context;
import android.content.Intent;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchIntent;
import com.tonyodev.fetch2.downloader.FileDownloader;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.fetch.ListenerCoordinator;
import com.tonyodev.fetch2.helper.DownloadInfoUpdater;
import com.tonyodev.fetch2.helper.FileDownloaderDelegate;
import com.tonyodev.fetch2.provider.GroupInfoProvider;
import com.tonyodev.fetch2.provider.NetworkInfoProvider;
import com.tonyodev.fetch2.util.FetchUtils;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FileServerDownloader;
import com.tonyodev.fetch2core.Logger;
import com.tonyodev.fetch2core.StorageResolver;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pf.I;
import pf.S;

@t0({"SMAP\nDownloadManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadManagerImpl.kt\ncom/tonyodev/fetch2/downloader/DownloadManagerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,313:1\n1855#2,2:314\n1549#2:320\n1620#2,3:321\n32#3,2:316\n32#3,2:318\n526#4:324\n511#4,6:325\n125#5:331\n152#5,3:332\n*S KotlinDebug\n*F\n+ 1 DownloadManagerImpl.kt\ncom/tonyodev/fetch2/downloader/DownloadManagerImpl\n*L\n42#1:314,2\n233#1:320\n233#1:321,3\n167#1:316,2\n182#1:318,2\n240#1:324\n240#1:325,6\n240#1:331\n240#1:332,3\n*E\n"})
public final class DownloadManagerImpl implements DownloadManager {
    private volatile boolean closed;
    private volatile int concurrentLimit;

    @NotNull
    private final Context context;

    @NotNull
    private final HashMap<Integer, FileDownloader> currentDownloadsMap;
    private volatile int downloadCounter;

    @NotNull
    private final DownloadInfoUpdater downloadInfoUpdater;

    @NotNull
    private final DownloadManagerCoordinator downloadManagerCoordinator;

    @Nullable
    private ExecutorService executor;

    @NotNull
    private final FileServerDownloader fileServerDownloader;
    private final int globalAutoRetryMaxAttempts;

    @NotNull
    private final GroupInfoProvider groupInfoProvider;
    private final boolean hashCheckingEnabled;

    @NotNull
    private final Downloader<?, ?> httpDownloader;

    @NotNull
    private final ListenerCoordinator listenerCoordinator;

    @NotNull
    private final Object lock;

    @NotNull
    private final Logger logger;

    @NotNull
    private final String namespace;

    @NotNull
    private final NetworkInfoProvider networkInfoProvider;
    private final boolean preAllocateFileOnCreation;
    private final long progressReportingIntervalMillis;
    private final boolean retryOnNetworkGain;

    @NotNull
    private final StorageResolver storageResolver;

    public DownloadManagerImpl(@NotNull Downloader<?, ?> httpDownloader, int i10, long j10, @NotNull Logger logger, @NotNull NetworkInfoProvider networkInfoProvider, boolean z10, @NotNull DownloadInfoUpdater downloadInfoUpdater, @NotNull DownloadManagerCoordinator downloadManagerCoordinator, @NotNull ListenerCoordinator listenerCoordinator, @NotNull FileServerDownloader fileServerDownloader, boolean z11, @NotNull StorageResolver storageResolver, @NotNull Context context, @NotNull String namespace, @NotNull GroupInfoProvider groupInfoProvider, int i11, boolean z12) {
        M.p(httpDownloader, "httpDownloader");
        M.p(logger, "logger");
        M.p(networkInfoProvider, "networkInfoProvider");
        M.p(downloadInfoUpdater, "downloadInfoUpdater");
        M.p(downloadManagerCoordinator, "downloadManagerCoordinator");
        M.p(listenerCoordinator, "listenerCoordinator");
        M.p(fileServerDownloader, "fileServerDownloader");
        M.p(storageResolver, "storageResolver");
        M.p(context, "context");
        M.p(namespace, "namespace");
        M.p(groupInfoProvider, "groupInfoProvider");
        this.httpDownloader = httpDownloader;
        this.progressReportingIntervalMillis = j10;
        this.logger = logger;
        this.networkInfoProvider = networkInfoProvider;
        this.retryOnNetworkGain = z10;
        this.downloadInfoUpdater = downloadInfoUpdater;
        this.downloadManagerCoordinator = downloadManagerCoordinator;
        this.listenerCoordinator = listenerCoordinator;
        this.fileServerDownloader = fileServerDownloader;
        this.hashCheckingEnabled = z11;
        this.storageResolver = storageResolver;
        this.context = context;
        this.namespace = namespace;
        this.groupInfoProvider = groupInfoProvider;
        this.globalAutoRetryMaxAttempts = i11;
        this.preAllocateFileOnCreation = z12;
        this.lock = new Object();
        this.executor = getNewDownloadExecutorService(i10);
        this.concurrentLimit = i10;
        this.currentDownloadsMap = new HashMap<>();
    }

    private final void cancelAllDownloads() {
        if (getConcurrentLimit() > 0) {
            for (FileDownloader fileDownloader : this.downloadManagerCoordinator.getFileDownloaderList()) {
                if (fileDownloader != null) {
                    fileDownloader.setInterrupted(true);
                    this.downloadManagerCoordinator.removeFileDownloader(fileDownloader.getDownload().getId());
                    this.logger.d("DownloadManager cancelled download " + ((Object) fileDownloader.getDownload()));
                }
            }
        }
        this.currentDownloadsMap.clear();
        this.downloadCounter = 0;
    }

    private final boolean cancelDownloadNoLock(int i10) {
        throwExceptionIfClosed();
        FileDownloader fileDownloader = this.currentDownloadsMap.get(Integer.valueOf(i10));
        if (fileDownloader == null) {
            this.downloadManagerCoordinator.interruptDownload(i10);
            return false;
        }
        fileDownloader.setInterrupted(true);
        this.currentDownloadsMap.remove(Integer.valueOf(i10));
        this.downloadCounter--;
        this.downloadManagerCoordinator.removeFileDownloader(i10);
        this.logger.d("DownloadManager cancelled download " + ((Object) fileDownloader.getDownload()));
        return fileDownloader.getInterrupted();
    }

    private final FileDownloader getFileDownloader(Download download, Downloader<?, ?> downloader) {
        Downloader.ServerRequest requestForDownload$default = FetchUtils.getRequestForDownload$default(download, null, 2, null);
        if (downloader.getHeadRequestMethodSupported(requestForDownload$default)) {
            requestForDownload$default = FetchUtils.getRequestForDownload(download, FetchCoreUtils.HEAD_REQUEST_METHOD);
        }
        return downloader.getRequestFileDownloaderType(requestForDownload$default, downloader.getRequestSupportedFileDownloaderTypes(requestForDownload$default)) == Downloader.FileDownloaderType.SEQUENTIAL ? new SequentialFileDownloaderImpl(download, downloader, this.progressReportingIntervalMillis, this.logger, this.networkInfoProvider, this.retryOnNetworkGain, this.hashCheckingEnabled, this.storageResolver, this.preAllocateFileOnCreation) : new ParallelFileDownloaderImpl(download, downloader, this.progressReportingIntervalMillis, this.logger, this.networkInfoProvider, this.retryOnNetworkGain, this.storageResolver.getDirectoryForFileDownloaderTypeParallel(requestForDownload$default), this.hashCheckingEnabled, this.storageResolver, this.preAllocateFileOnCreation);
    }

    private final ExecutorService getNewDownloadExecutorService(int i10) {
        if (i10 > 0) {
            return Executors.newFixedThreadPool(i10);
        }
        return null;
    }

    private final void removeDownloadMappings(Download download) {
        synchronized (this.lock) {
            try {
                if (this.currentDownloadsMap.containsKey(Integer.valueOf(download.getId()))) {
                    this.currentDownloadsMap.remove(Integer.valueOf(download.getId()));
                    this.downloadCounter--;
                }
                this.downloadManagerCoordinator.removeFileDownloader(download.getId());
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void start$lambda$4$lambda$3(Download download, DownloadManagerImpl this$0) {
        Intent intent;
        boolean z10;
        M.p(download, "$download");
        M.p(this$0, "this$0");
        try {
            Thread.currentThread().setName(download.getNamespace() + "-" + download.getId());
        } catch (Exception unused) {
        }
        try {
            try {
                FileDownloader newFileDownloaderForDownload = this$0.getNewFileDownloaderForDownload(download);
                synchronized (this$0.lock) {
                    if (this$0.currentDownloadsMap.containsKey(Integer.valueOf(download.getId()))) {
                        newFileDownloaderForDownload.setDelegate(this$0.getFileDownloaderDelegate());
                        this$0.currentDownloadsMap.put(Integer.valueOf(download.getId()), newFileDownloaderForDownload);
                        this$0.downloadManagerCoordinator.addFileDownloader(download.getId(), newFileDownloaderForDownload);
                        this$0.logger.d("DownloadManager starting download " + ((Object) download));
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    newFileDownloaderForDownload.run();
                }
                this$0.removeDownloadMappings(download);
                this$0.groupInfoProvider.clean();
                this$0.removeDownloadMappings(download);
                intent = new Intent(FetchIntent.ACTION_QUEUE_BACKOFF_RESET);
            } catch (Throwable th2) {
                this$0.removeDownloadMappings(download);
                Intent intent2 = new Intent(FetchIntent.ACTION_QUEUE_BACKOFF_RESET);
                intent2.setPackage(this$0.context.getPackageName());
                intent2.putExtra(FetchIntent.EXTRA_NAMESPACE, this$0.namespace);
                this$0.context.sendBroadcast(intent2);
                throw th2;
            }
        } catch (Exception e10) {
            this$0.logger.e("DownloadManager failed to start download " + ((Object) download), e10);
            this$0.removeDownloadMappings(download);
            intent = new Intent(FetchIntent.ACTION_QUEUE_BACKOFF_RESET);
        }
        intent.setPackage(this$0.context.getPackageName());
        intent.putExtra(FetchIntent.EXTRA_NAMESPACE, this$0.namespace);
        this$0.context.sendBroadcast(intent);
    }

    private final void terminateAllDownloads() {
        for (Map.Entry<Integer, FileDownloader> entry : this.currentDownloadsMap.entrySet()) {
            FileDownloader value = entry.getValue();
            if (value != null) {
                value.setTerminated(true);
                this.logger.d("DownloadManager terminated download " + ((Object) value.getDownload()));
                this.downloadManagerCoordinator.removeFileDownloader(entry.getKey().intValue());
            }
        }
        this.currentDownloadsMap.clear();
        this.downloadCounter = 0;
    }

    private final void throwExceptionIfClosed() {
        if (this.closed) {
            throw new FetchException("DownloadManager is already shutdown.");
        }
    }

    @Override
    public boolean canAccommodateNewDownload() {
        boolean z10;
        synchronized (this.lock) {
            if (!this.closed) {
                z10 = this.downloadCounter < getConcurrentLimit();
            }
        }
        return z10;
    }

    @Override
    public boolean cancel(int i10) {
        boolean cancelDownloadNoLock;
        synchronized (this.lock) {
            cancelDownloadNoLock = cancelDownloadNoLock(i10);
        }
        return cancelDownloadNoLock;
    }

    @Override
    public void cancelAll() {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            cancelAllDownloads();
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public void close() {
        synchronized (this.lock) {
            try {
                if (this.closed) {
                    return;
                }
                this.closed = true;
                if (getConcurrentLimit() > 0) {
                    terminateAllDownloads();
                }
                this.logger.d("DownloadManager closing download manager");
                try {
                    ExecutorService executorService = this.executor;
                    if (executorService != null) {
                        executorService.shutdown();
                        P0 p02 = P0.f98194a;
                    }
                } catch (Exception unused) {
                    P0 p03 = P0.f98194a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public boolean contains(int i10) {
        boolean z10;
        synchronized (this.lock) {
            if (!isClosed()) {
                z10 = this.downloadManagerCoordinator.containsFileDownloader(i10);
            }
        }
        return z10;
    }

    @Override
    public int getActiveDownloadCount() {
        int i10;
        synchronized (this.lock) {
            throwExceptionIfClosed();
            i10 = this.downloadCounter;
        }
        return i10;
    }

    @Override
    @NotNull
    public List<Download> getActiveDownloads() {
        ArrayList arrayList;
        synchronized (this.lock) {
            throwExceptionIfClosed();
            Collection<FileDownloader> values = this.currentDownloadsMap.values();
            M.o(values, "<get-values>(...)");
            List x22 = S.x2(values);
            arrayList = new ArrayList(I.d0(x22, 10));
            Iterator<E> it = x22.iterator();
            while (it.hasNext()) {
                arrayList.add(((FileDownloader) it.next()).getDownload());
            }
        }
        return arrayList;
    }

    @Override
    @NotNull
    public List<Integer> getActiveDownloadsIds() {
        ArrayList arrayList;
        synchronized (this.lock) {
            try {
                throwExceptionIfClosed();
                HashMap<Integer, FileDownloader> hashMap = this.currentDownloadsMap;
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry<Integer, FileDownloader> entry : hashMap.entrySet()) {
                    if (entry.getValue() != null) {
                        linkedHashMap.put(entry.getKey(), entry.getValue());
                    }
                }
                arrayList = new ArrayList(linkedHashMap.size());
                Iterator it = linkedHashMap.entrySet().iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(((Number) ((Map.Entry) it.next()).getKey()).intValue()));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return arrayList;
    }

    @Override
    public int getConcurrentLimit() {
        return this.concurrentLimit;
    }

    @Override
    @NotNull
    public String getDownloadFileTempDir(@NotNull Download download) {
        M.p(download, "download");
        return this.storageResolver.getDirectoryForFileDownloaderTypeParallel(FetchUtils.getRequestForDownload$default(download, null, 2, null));
    }

    @Override
    @NotNull
    public FileDownloader.Delegate getFileDownloaderDelegate() {
        return new FileDownloaderDelegate(this.downloadInfoUpdater, this.listenerCoordinator.getMainListener(), this.retryOnNetworkGain, this.globalAutoRetryMaxAttempts);
    }

    @Override
    @NotNull
    public FileDownloader getNewFileDownloaderForDownload(@NotNull Download download) {
        M.p(download, "download");
        return !FetchCoreUtils.isFetchFileServerUrl(download.getUrl()) ? getFileDownloader(download, this.httpDownloader) : getFileDownloader(download, this.fileServerDownloader);
    }

    @Override
    public boolean isClosed() {
        return this.closed;
    }

    @Override
    public void setConcurrentLimit(int i10) {
        synchronized (this.lock) {
            try {
                Iterator<Integer> it = getActiveDownloadsIds().iterator();
                while (it.hasNext()) {
                    cancelDownloadNoLock(it.next().intValue());
                }
            } catch (Exception unused) {
            }
            try {
                ExecutorService executorService = this.executor;
                if (executorService != null) {
                    executorService.shutdown();
                }
            } catch (Exception unused2) {
            }
            this.executor = getNewDownloadExecutorService(i10);
            this.concurrentLimit = i10;
            this.logger.d("DownloadManager concurrentLimit changed from " + this.concurrentLimit + " to " + i10);
            P0 p02 = P0.f98194a;
        }
    }

    @Override
    public boolean start(@NotNull final Download download) {
        M.p(download, "download");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            if (this.currentDownloadsMap.containsKey(Integer.valueOf(download.getId()))) {
                this.logger.d("DownloadManager already running download " + ((Object) download));
                return false;
            }
            if (this.downloadCounter >= getConcurrentLimit()) {
                this.logger.d("DownloadManager cannot init download " + ((Object) download) + " because the download queue is full");
                return false;
            }
            this.downloadCounter++;
            this.currentDownloadsMap.put(Integer.valueOf(download.getId()), null);
            this.downloadManagerCoordinator.addFileDownloader(download.getId(), null);
            ExecutorService executorService = this.executor;
            if (executorService == null || executorService.isShutdown()) {
                return false;
            }
            executorService.execute(new Runnable() {
                @Override
                public final void run() {
                    DownloadManagerImpl.start$lambda$4$lambda$3(Download.this, this);
                }
            });
            return true;
        }
    }
}
