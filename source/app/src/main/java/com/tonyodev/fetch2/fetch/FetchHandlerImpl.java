package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import android.os.Looper;
import com.tonyodev.fetch2.CompletedDownload;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchErrorUtils;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2.FetchListener;
import com.tonyodev.fetch2.FetchNotificationManager;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManager;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import com.tonyodev.fetch2.downloader.DownloadManager;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.helper.PriorityListProcessor;
import com.tonyodev.fetch2.provider.GroupInfoProvider;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2.util.FetchTypeConverterExtensions;
import com.tonyodev.fetch2.util.FetchUtils;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.DownloadBlockInfo;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.FileResource;
import com.tonyodev.fetch2core.FileServerDownloader;
import com.tonyodev.fetch2core.FileSliceInfo;
import com.tonyodev.fetch2core.InterruptMonitor;
import com.tonyodev.fetch2core.Logger;
import com.tonyodev.fetch2core.Reason;
import com.tonyodev.fetch2core.StorageResolver;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.NoWhenBranchMatchedException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@kotlin.jvm.internal.t0({"SMAP\nFetchHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FetchHandlerImpl.kt\ncom/tonyodev/fetch2/fetch/FetchHandlerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,790:1\n1855#2,2:791\n1855#2,2:793\n1549#2:795\n1620#2,3:796\n1855#2,2:799\n1549#2:801\n1620#2,3:802\n1855#2,2:805\n1549#2:807\n1620#2,3:808\n1855#2,2:811\n1855#2,2:813\n1855#2,2:815\n1855#2,2:817\n1855#2,2:823\n1855#2,2:825\n1855#2,2:827\n215#3,2:819\n32#4,2:821\n*S KotlinDebug\n*F\n+ 1 FetchHandlerImpl.kt\ncom/tonyodev/fetch2/fetch/FetchHandlerImpl\n*L\n62#1:791,2\n84#1:793,2\n212#1:795\n212#1:796,3\n241#1:799,2\n269#1:801\n269#1:802,3\n275#1:805,2\n287#1:807\n287#1:808,3\n313#1:811,2\n343#1:813,2\n366#1:815,2\n380#1:817,2\n643#1:823,2\n665#1:825,2\n689#1:827,2\n583#1:819,2\n619#1:821,2\n*E\n"})
public final class FetchHandlerImpl implements FetchHandler {
    private final boolean autoStart;
    private final boolean createFileOnEnqueue;

    @NotNull
    private final DownloadManager downloadManager;

    @NotNull
    private final FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;

    @Nullable
    private final FetchNotificationManager fetchNotificationManager;

    @NotNull
    private final FileServerDownloader fileServerDownloader;

    @NotNull
    private final GroupInfoProvider groupInfoProvider;

    @NotNull
    private final Downloader<?, ?> httpDownloader;
    private volatile boolean isTerminating;

    @NotNull
    private final ListenerCoordinator listenerCoordinator;
    private final int listenerId;

    @NotNull
    private final Set<FetchListener> listenerSet;

    @NotNull
    private final Logger logger;

    @NotNull
    private final String namespace;

    @NotNull
    private final PriorityListProcessor<Download> priorityListProcessor;

    @NotNull
    private final PrioritySort prioritySort;

    @NotNull
    private final StorageResolver storageResolver;

    @NotNull
    private final Handler uiHandler;

    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;
        public static final int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[EnqueueAction.values().length];
            try {
                iArr[EnqueueAction.UPDATE_ACCORDINGLY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnqueueAction.DO_NOT_ENQUEUE_IF_EXISTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnqueueAction.REPLACE_EXISTING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[EnqueueAction.INCREMENT_FILE_NAME.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[Status.values().length];
            try {
                iArr2[Status.COMPLETED.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[Status.FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[Status.CANCELLED.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[Status.DELETED.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[Status.PAUSED.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[Status.QUEUED.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[Status.REMOVED.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                iArr2[Status.DOWNLOADING.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                iArr2[Status.ADDED.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                iArr2[Status.NONE.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FetchHandlerImpl(@NotNull String namespace, @NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper, @NotNull DownloadManager downloadManager, @NotNull PriorityListProcessor<? extends Download> priorityListProcessor, @NotNull Logger logger, boolean z10, @NotNull Downloader<?, ?> httpDownloader, @NotNull FileServerDownloader fileServerDownloader, @NotNull ListenerCoordinator listenerCoordinator, @NotNull Handler uiHandler, @NotNull StorageResolver storageResolver, @Nullable FetchNotificationManager fetchNotificationManager, @NotNull GroupInfoProvider groupInfoProvider, @NotNull PrioritySort prioritySort, boolean z11) {
        kotlin.jvm.internal.M.p(namespace, "namespace");
        kotlin.jvm.internal.M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
        kotlin.jvm.internal.M.p(downloadManager, "downloadManager");
        kotlin.jvm.internal.M.p(priorityListProcessor, "priorityListProcessor");
        kotlin.jvm.internal.M.p(logger, "logger");
        kotlin.jvm.internal.M.p(httpDownloader, "httpDownloader");
        kotlin.jvm.internal.M.p(fileServerDownloader, "fileServerDownloader");
        kotlin.jvm.internal.M.p(listenerCoordinator, "listenerCoordinator");
        kotlin.jvm.internal.M.p(uiHandler, "uiHandler");
        kotlin.jvm.internal.M.p(storageResolver, "storageResolver");
        kotlin.jvm.internal.M.p(groupInfoProvider, "groupInfoProvider");
        kotlin.jvm.internal.M.p(prioritySort, "prioritySort");
        this.namespace = namespace;
        this.fetchDatabaseManagerWrapper = fetchDatabaseManagerWrapper;
        this.downloadManager = downloadManager;
        this.priorityListProcessor = priorityListProcessor;
        this.logger = logger;
        this.autoStart = z10;
        this.httpDownloader = httpDownloader;
        this.fileServerDownloader = fileServerDownloader;
        this.listenerCoordinator = listenerCoordinator;
        this.uiHandler = uiHandler;
        this.storageResolver = storageResolver;
        this.fetchNotificationManager = fetchNotificationManager;
        this.groupInfoProvider = groupInfoProvider;
        this.prioritySort = prioritySort;
        this.createFileOnEnqueue = z11;
        this.listenerId = UUID.randomUUID().hashCode();
        this.listenerSet = new LinkedHashSet();
    }

    public static final void addListener$lambda$18$lambda$17(DownloadInfo it, FetchListener listener) {
        kotlin.jvm.internal.M.p(it, "$it");
        kotlin.jvm.internal.M.p(listener, "$listener");
        switch (WhenMappings.$EnumSwitchMapping$1[it.getStatus().ordinal()]) {
            case 1:
                listener.onCompleted(it);
                return;
            case 2:
                listener.onError(it, it.getError(), null);
                return;
            case 3:
                listener.onCancelled(it);
                return;
            case 4:
                listener.onDeleted(it);
                return;
            case 5:
                listener.onPaused(it);
                return;
            case 6:
                listener.onQueued(it, false);
                return;
            case 7:
                listener.onRemoved(it);
                return;
            case 8:
            default:
                return;
            case 9:
                listener.onAdded(it);
                return;
        }
    }

    private final List<Download> cancelDownloads(List<? extends DownloadInfo> list) {
        cancelDownloadsIfDownloading(list);
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : list) {
            if (FetchUtils.canCancelDownload(downloadInfo)) {
                downloadInfo.setStatus(Status.CANCELLED);
                downloadInfo.setError(FetchDefaults.getDefaultNoError());
                arrayList.add(downloadInfo);
            }
        }
        this.fetchDatabaseManagerWrapper.update(arrayList);
        return arrayList;
    }

    private final void cancelDownloadsIfDownloading(List<? extends DownloadInfo> list) {
        Iterator<? extends DownloadInfo> it = list.iterator();
        while (it.hasNext()) {
            this.downloadManager.cancel(it.next().getId());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<Download> deleteDownloads(List<? extends DownloadInfo> list) {
        cancelDownloadsIfDownloading(list);
        this.fetchDatabaseManagerWrapper.delete(list);
        for (DownloadInfo downloadInfo : list) {
            downloadInfo.setStatus(Status.DELETED);
            this.storageResolver.deleteFile(downloadInfo.getFile());
            FetchDatabaseManager.Delegate<DownloadInfo> delegate = this.fetchDatabaseManagerWrapper.getDelegate();
            if (delegate != null) {
                delegate.deleteTempFilesForDownload(downloadInfo);
            }
        }
        return list;
    }

    private final List<nf.Z<Download, Error>> enqueueRequests(List<? extends Request> list) {
        ArrayList arrayList = new ArrayList();
        for (Request request : list) {
            DownloadInfo downloadInfo = FetchTypeConverterExtensions.toDownloadInfo(request, this.fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
            downloadInfo.setNamespace(this.namespace);
            try {
                boolean prepareDownloadInfoForEnqueue = prepareDownloadInfoForEnqueue(downloadInfo);
                if (downloadInfo.getStatus() != Status.COMPLETED) {
                    downloadInfo.setStatus(request.getDownloadOnEnqueue() ? Status.QUEUED : Status.ADDED);
                    if (prepareDownloadInfoForEnqueue) {
                        this.fetchDatabaseManagerWrapper.update(downloadInfo);
                        this.logger.d("Updated download " + ((Object) downloadInfo));
                        arrayList.add(new nf.Z(downloadInfo, Error.NONE));
                    } else {
                        nf.Z<DownloadInfo, Boolean> insert = this.fetchDatabaseManagerWrapper.insert(downloadInfo);
                        this.logger.d("Enqueued download " + ((Object) insert.e()));
                        arrayList.add(new nf.Z(insert.e(), Error.NONE));
                        startPriorityQueueIfNotStarted();
                    }
                } else {
                    arrayList.add(new nf.Z(downloadInfo, Error.NONE));
                }
                if (this.prioritySort == PrioritySort.DESC && !this.downloadManager.canAccommodateNewDownload()) {
                    this.priorityListProcessor.pause();
                }
            } catch (Exception e10) {
                Error errorFromThrowable = FetchErrorUtils.getErrorFromThrowable(e10);
                errorFromThrowable.setThrowable(e10);
                arrayList.add(new nf.Z(downloadInfo, errorFromThrowable));
            }
        }
        startPriorityQueueIfNotStarted();
        return arrayList;
    }

    private final List<Download> pauseDownloads(List<? extends DownloadInfo> list) {
        cancelDownloadsIfDownloading(list);
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : list) {
            if (FetchUtils.canPauseDownload(downloadInfo)) {
                downloadInfo.setStatus(Status.PAUSED);
                arrayList.add(downloadInfo);
            }
        }
        this.fetchDatabaseManagerWrapper.update(arrayList);
        return arrayList;
    }

    private final void prepareCompletedDownloadInfoForEnqueue(DownloadInfo downloadInfo) {
        if (this.fetchDatabaseManagerWrapper.getByFile(downloadInfo.getFile()) != null) {
            deleteDownloads(pf.G.l(downloadInfo));
        }
    }

    private final boolean prepareDownloadInfoForEnqueue(DownloadInfo downloadInfo) {
        cancelDownloadsIfDownloading(pf.G.l(downloadInfo));
        DownloadInfo byFile = this.fetchDatabaseManagerWrapper.getByFile(downloadInfo.getFile());
        if (byFile != null) {
            cancelDownloadsIfDownloading(pf.G.l(byFile));
            byFile = this.fetchDatabaseManagerWrapper.getByFile(downloadInfo.getFile());
            if (byFile == null || byFile.getStatus() != Status.DOWNLOADING) {
                if ((byFile != null ? byFile.getStatus() : null) == Status.COMPLETED && downloadInfo.getEnqueueAction() == EnqueueAction.UPDATE_ACCORDINGLY && !this.storageResolver.fileExists(byFile.getFile())) {
                    try {
                        this.fetchDatabaseManagerWrapper.delete(byFile);
                    } catch (Exception e10) {
                        Logger logger = this.logger;
                        String message = e10.getMessage();
                        logger.e(message != null ? message : "", e10);
                    }
                    if (downloadInfo.getEnqueueAction() != EnqueueAction.INCREMENT_FILE_NAME && this.createFileOnEnqueue) {
                        StorageResolver.DefaultImpls.createFile$default(this.storageResolver, downloadInfo.getFile(), false, 2, null);
                    }
                    byFile = null;
                }
            } else {
                byFile.setStatus(Status.QUEUED);
                try {
                    this.fetchDatabaseManagerWrapper.update(byFile);
                } catch (Exception e11) {
                    Logger logger2 = this.logger;
                    String message2 = e11.getMessage();
                    logger2.e(message2 != null ? message2 : "", e11);
                }
            }
        } else if (downloadInfo.getEnqueueAction() != EnqueueAction.INCREMENT_FILE_NAME && this.createFileOnEnqueue) {
            StorageResolver.DefaultImpls.createFile$default(this.storageResolver, downloadInfo.getFile(), false, 2, null);
        }
        int i10 = WhenMappings.$EnumSwitchMapping$0[downloadInfo.getEnqueueAction().ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                if (byFile == null) {
                    return false;
                }
                throw new FetchException(FetchErrorStrings.REQUEST_WITH_FILE_PATH_ALREADY_EXIST);
            }
            if (i10 == 3) {
                if (byFile != null) {
                    deleteDownloads(pf.G.l(byFile));
                }
                deleteDownloads(pf.G.l(downloadInfo));
                return false;
            }
            if (i10 != 4) {
                throw new NoWhenBranchMatchedException();
            }
            if (this.createFileOnEnqueue) {
                this.storageResolver.createFile(downloadInfo.getFile(), true);
            }
            downloadInfo.setFile(downloadInfo.getFile());
            downloadInfo.setId(FetchCoreUtils.getUniqueId(downloadInfo.getUrl(), downloadInfo.getFile()));
            return false;
        }
        if (byFile == null) {
            return false;
        }
        downloadInfo.setDownloaded(byFile.getDownloaded());
        downloadInfo.setTotal(byFile.getTotal());
        downloadInfo.setError(byFile.getError());
        downloadInfo.setStatus(byFile.getStatus());
        Status status = downloadInfo.getStatus();
        Status status2 = Status.COMPLETED;
        if (status != status2) {
            downloadInfo.setStatus(Status.QUEUED);
            downloadInfo.setError(FetchDefaults.getDefaultNoError());
        }
        if (downloadInfo.getStatus() == status2 && !this.storageResolver.fileExists(downloadInfo.getFile())) {
            if (this.createFileOnEnqueue) {
                StorageResolver.DefaultImpls.createFile$default(this.storageResolver, downloadInfo.getFile(), false, 2, null);
            }
            downloadInfo.setDownloaded(0L);
            downloadInfo.setTotal(-1L);
            downloadInfo.setStatus(Status.QUEUED);
            downloadInfo.setError(FetchDefaults.getDefaultNoError());
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final List<Download> removeDownloads(List<? extends DownloadInfo> list) {
        cancelDownloadsIfDownloading(list);
        this.fetchDatabaseManagerWrapper.delete(list);
        for (DownloadInfo downloadInfo : list) {
            downloadInfo.setStatus(Status.REMOVED);
            FetchDatabaseManager.Delegate<DownloadInfo> delegate = this.fetchDatabaseManagerWrapper.getDelegate();
            if (delegate != null) {
                delegate.deleteTempFilesForDownload(downloadInfo);
            }
        }
        return list;
    }

    private final List<Download> resumeDownloads(List<Integer> list) {
        List<DownloadInfo> x22 = pf.S.x2(this.fetchDatabaseManagerWrapper.get(list));
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : x22) {
            if (!this.downloadManager.contains(downloadInfo.getId()) && FetchUtils.canResumeDownload(downloadInfo)) {
                downloadInfo.setStatus(Status.QUEUED);
                arrayList.add(downloadInfo);
            }
        }
        this.fetchDatabaseManagerWrapper.update(arrayList);
        startPriorityQueueIfNotStarted();
        return arrayList;
    }

    private final void startPriorityQueueIfNotStarted() {
        this.priorityListProcessor.sendBackOffResetSignal();
        if (this.priorityListProcessor.isStopped() && !this.isTerminating) {
            this.priorityListProcessor.start();
        }
        if (!this.priorityListProcessor.isPaused() || this.isTerminating) {
            return;
        }
        this.priorityListProcessor.resume();
    }

    @Override
    public void addFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObservers) {
        kotlin.jvm.internal.M.p(fetchObservers, "fetchObservers");
        this.listenerCoordinator.addFetchObserversForDownload(i10, (FetchObserver[]) Arrays.copyOf(fetchObservers, fetchObservers.length));
    }

    @Override
    public void addListener(@NotNull final FetchListener listener, boolean z10, boolean z11) {
        kotlin.jvm.internal.M.p(listener, "listener");
        synchronized (this.listenerSet) {
            this.listenerSet.add(listener);
        }
        this.listenerCoordinator.addListener(this.listenerId, listener);
        if (z10) {
            for (final DownloadInfo downloadInfo : this.fetchDatabaseManagerWrapper.get()) {
                this.uiHandler.post(new Runnable() {
                    @Override
                    public final void run() {
                        FetchHandlerImpl.addListener$lambda$18$lambda$17(DownloadInfo.this, listener);
                    }
                });
            }
        }
        this.logger.d("Added listener " + ((Object) listener));
        if (z11) {
            startPriorityQueueIfNotStarted();
        }
    }

    @Override
    @NotNull
    public List<Download> cancel(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return cancelDownloads(pf.S.x2(this.fetchDatabaseManagerWrapper.get(ids)));
    }

    @Override
    @NotNull
    public List<Download> cancelAll() {
        return cancelDownloads(this.fetchDatabaseManagerWrapper.get());
    }

    @Override
    @NotNull
    public List<Download> cancelGroup(int i10) {
        return cancelDownloads(this.fetchDatabaseManagerWrapper.getByGroup(i10));
    }

    @Override
    public void close() {
        if (this.isTerminating) {
            return;
        }
        this.isTerminating = true;
        synchronized (this.listenerSet) {
            try {
                Iterator<FetchListener> it = this.listenerSet.iterator();
                while (it.hasNext()) {
                    this.listenerCoordinator.removeListener(this.listenerId, it.next());
                }
                this.listenerSet.clear();
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        FetchNotificationManager fetchNotificationManager = this.fetchNotificationManager;
        if (fetchNotificationManager != null) {
            this.listenerCoordinator.removeNotificationManager(fetchNotificationManager);
            this.listenerCoordinator.cancelOnGoingNotifications(this.fetchNotificationManager);
        }
        this.priorityListProcessor.stop();
        this.priorityListProcessor.close();
        this.downloadManager.close();
        FetchModulesBuilder.INSTANCE.removeNamespaceInstanceReference(this.namespace);
    }

    @Override
    @NotNull
    public List<Download> delete(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return deleteDownloads(pf.S.x2(this.fetchDatabaseManagerWrapper.get(ids)));
    }

    @Override
    @NotNull
    public List<Download> deleteAll() {
        return deleteDownloads(this.fetchDatabaseManagerWrapper.get());
    }

    @Override
    @NotNull
    public List<Download> deleteAllInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return deleteDownloads(this.fetchDatabaseManagerWrapper.getDownloadsInGroupWithStatus(i10, statuses));
    }

    @Override
    @NotNull
    public List<Download> deleteAllWithStatus(@NotNull Status status) {
        kotlin.jvm.internal.M.p(status, "status");
        return deleteDownloads(this.fetchDatabaseManagerWrapper.getByStatus(status));
    }

    @Override
    @NotNull
    public List<Download> deleteGroup(int i10) {
        return deleteDownloads(this.fetchDatabaseManagerWrapper.getByGroup(i10));
    }

    @Override
    public void enableLogging(boolean z10) {
        this.logger.d("Enable logging - " + z10);
        this.logger.setEnabled(z10);
    }

    @Override
    @NotNull
    public nf.Z<Download, Error> enqueue(@NotNull Request request) {
        kotlin.jvm.internal.M.p(request, "request");
        return (nf.Z) pf.S.G2(enqueueRequests(pf.G.l(request)));
    }

    @Override
    @NotNull
    public List<nf.Z<DownloadInfo, Boolean>> enqueueBatch(@NotNull List<? extends Request> requests) {
        kotlin.jvm.internal.M.p(requests, "requests");
        ArrayList arrayList = new ArrayList();
        for (Request request : requests) {
            DownloadInfo downloadInfo = FetchTypeConverterExtensions.toDownloadInfo(request, this.fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
            downloadInfo.setNamespace(this.namespace);
            boolean prepareDownloadInfoForEnqueue = prepareDownloadInfoForEnqueue(downloadInfo);
            downloadInfo.setStatus(request.getDownloadOnEnqueue() ? Status.QUEUED : Status.ADDED);
            if (downloadInfo.getStatus() != Status.COMPLETED && !prepareDownloadInfoForEnqueue) {
                arrayList.add(downloadInfo);
            }
        }
        List<nf.Z<DownloadInfo, Boolean>> insert = this.fetchDatabaseManagerWrapper.insert(arrayList);
        startPriorityQueueIfNotStarted();
        return insert;
    }

    @Override
    @NotNull
    public Download enqueueCompletedDownload(@NotNull CompletedDownload completedDownload) {
        kotlin.jvm.internal.M.p(completedDownload, "completedDownload");
        return (Download) pf.S.G2(enqueueCompletedDownloads(pf.G.l(completedDownload)));
    }

    @Override
    @NotNull
    public List<Download> enqueueCompletedDownloads(@NotNull List<? extends CompletedDownload> completedDownloads) {
        kotlin.jvm.internal.M.p(completedDownloads, "completedDownloads");
        List<? extends CompletedDownload> list = completedDownloads;
        ArrayList arrayList = new ArrayList(pf.I.d0(list, 10));
        Iterator<? extends CompletedDownload> it = list.iterator();
        while (it.hasNext()) {
            DownloadInfo downloadInfo = FetchTypeConverterExtensions.toDownloadInfo(it.next(), this.fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
            downloadInfo.setNamespace(this.namespace);
            downloadInfo.setStatus(Status.COMPLETED);
            prepareCompletedDownloadInfoForEnqueue(downloadInfo);
            nf.Z<DownloadInfo, Boolean> insert = this.fetchDatabaseManagerWrapper.insert(downloadInfo);
            this.logger.d("Enqueued CompletedDownload " + ((Object) insert.e()));
            arrayList.add(insert.e());
        }
        return arrayList;
    }

    @Override
    public void freeze() {
        this.priorityListProcessor.pause();
        this.downloadManager.cancelAll();
    }

    @Override
    @NotNull
    public List<Integer> getAllGroupIds() {
        return this.fetchDatabaseManagerWrapper.getAllGroupIds();
    }

    @Override
    public long getContentLengthForRequest(@NotNull Request request, boolean z10) {
        kotlin.jvm.internal.M.p(request, "request");
        DownloadInfo downloadInfo = this.fetchDatabaseManagerWrapper.get(request.getId());
        if (downloadInfo != null && downloadInfo.getTotal() > 0) {
            return downloadInfo.getTotal();
        }
        if (z10) {
            return FetchCoreUtils.isFetchFileServerUrl(request.getUrl()) ? this.fileServerDownloader.getRequestContentLength(FetchUtils.getServerRequestFromRequest(request)) : this.httpDownloader.getRequestContentLength(FetchUtils.getServerRequestFromRequest(request));
        }
        return -1L;
    }

    @Override
    @Nullable
    public Download getDownload(int i10) {
        return this.fetchDatabaseManagerWrapper.get(i10);
    }

    @Override
    @NotNull
    public List<DownloadBlock> getDownloadBlocks(int i10) {
        DownloadInfo downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        if (downloadInfo == null) {
            return pf.H.J();
        }
        String downloadFileTempDir = this.downloadManager.getDownloadFileTempDir(downloadInfo);
        FileSliceInfo fileSliceInfo = FetchUtils.getFileSliceInfo(FetchUtils.getPreviousSliceCount(downloadInfo.getId(), downloadFileTempDir), downloadInfo.getTotal());
        if (downloadInfo.getTotal() < 1) {
            return pf.H.J();
        }
        long j10 = 0;
        int i11 = 1;
        if (fileSliceInfo.getSlicingCount() < 2) {
            DownloadBlockInfo downloadBlockInfo = new DownloadBlockInfo();
            downloadBlockInfo.setDownloadId(downloadInfo.getId());
            downloadBlockInfo.setBlockPosition(1);
            downloadBlockInfo.setStartByte(0L);
            downloadBlockInfo.setEndByte(downloadInfo.getTotal());
            downloadBlockInfo.setDownloadedBytes(downloadInfo.getDownloaded());
            return pf.G.l(downloadBlockInfo);
        }
        ArrayList arrayList = new ArrayList();
        int slicingCount = fileSliceInfo.getSlicingCount();
        if (1 <= slicingCount) {
            while (true) {
                long total = fileSliceInfo.getSlicingCount() == i11 ? downloadInfo.getTotal() : fileSliceInfo.getBytesPerFileSlice() + j10;
                DownloadBlockInfo downloadBlockInfo2 = new DownloadBlockInfo();
                downloadBlockInfo2.setDownloadId(downloadInfo.getId());
                downloadBlockInfo2.setBlockPosition(i11);
                downloadBlockInfo2.setStartByte(j10);
                downloadBlockInfo2.setEndByte(total);
                downloadBlockInfo2.setDownloadedBytes(FetchUtils.getSavedDownloadedInfo(downloadInfo.getId(), i11, downloadFileTempDir));
                arrayList.add(downloadBlockInfo2);
                if (i11 == slicingCount) {
                    break;
                }
                i11++;
                j10 = total;
            }
        }
        return arrayList;
    }

    @Override
    @NotNull
    public List<Download> getDownloads() {
        return this.fetchDatabaseManagerWrapper.get();
    }

    @Override
    @NotNull
    public List<Download> getDownloadsByRequestIdentifier(long j10) {
        return this.fetchDatabaseManagerWrapper.getDownloadsByRequestIdentifier(j10);
    }

    @Override
    @NotNull
    public List<Download> getDownloadsByTag(@NotNull String tag) {
        kotlin.jvm.internal.M.p(tag, "tag");
        return this.fetchDatabaseManagerWrapper.getDownloadsByTag(tag);
    }

    @Override
    @NotNull
    public List<Download> getDownloadsInGroup(int i10) {
        return this.fetchDatabaseManagerWrapper.getByGroup(i10);
    }

    @Override
    @NotNull
    public List<Download> getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return this.fetchDatabaseManagerWrapper.getDownloadsInGroupWithStatus(i10, statuses);
    }

    @Override
    @NotNull
    public List<Download> getDownloadsWithStatus(@NotNull Status status) {
        kotlin.jvm.internal.M.p(status, "status");
        return this.fetchDatabaseManagerWrapper.getByStatus(status);
    }

    @Override
    @NotNull
    public List<FileResource> getFetchFileServerCatalog(@NotNull Request request) {
        kotlin.jvm.internal.M.p(request, "request");
        return this.fileServerDownloader.getFetchFileServerCatalog(FetchUtils.getCatalogServerRequestFromRequest(request));
    }

    @Override
    @NotNull
    public FetchGroup getFetchGroup(int i10) {
        return this.groupInfoProvider.getGroupInfo(i10, Reason.OBSERVER_ATTACHED);
    }

    @Override
    @NotNull
    public Set<FetchListener> getListenerSet() {
        Set<FetchListener> f62;
        synchronized (this.listenerSet) {
            f62 = pf.S.f6(this.listenerSet);
        }
        return f62;
    }

    @Override
    public long getPendingCount() {
        return this.fetchDatabaseManagerWrapper.getPendingCount(false);
    }

    @Override
    @NotNull
    public Downloader.Response getServerResponse(@NotNull String url, @Nullable Map<String, String> map) {
        kotlin.jvm.internal.M.p(url, "url");
        Request request = new Request(url, "");
        if (map != null) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                request.addHeader(entry.getKey(), entry.getValue());
            }
        }
        Downloader.ServerRequest serverRequestFromRequest = FetchUtils.getServerRequestFromRequest(request);
        InterruptMonitor interruptMonitor = new InterruptMonitor() {
            @Override
            public boolean isInterrupted() {
                return false;
            }
        };
        if (FetchCoreUtils.isFetchFileServerUrl(request.getUrl())) {
            Downloader.Response execute = this.fileServerDownloader.execute(serverRequestFromRequest, interruptMonitor);
            if (execute != null) {
                Downloader.Response copyDownloadResponseNoStream = FetchCoreUtils.copyDownloadResponseNoStream(execute);
                this.fileServerDownloader.disconnect(execute);
                return copyDownloadResponseNoStream;
            }
        } else {
            Downloader.Response execute2 = this.httpDownloader.execute(serverRequestFromRequest, interruptMonitor);
            if (execute2 != null) {
                Downloader.Response copyDownloadResponseNoStream2 = FetchCoreUtils.copyDownloadResponseNoStream(execute2);
                this.httpDownloader.disconnect(execute2);
                return copyDownloadResponseNoStream2;
            }
        }
        throw new IOException(FetchErrorStrings.RESPONSE_NOT_SUCCESSFUL);
    }

    @Override
    public boolean hasActiveDownloads(boolean z10) {
        if (kotlin.jvm.internal.M.g(Thread.currentThread(), Looper.getMainLooper().getThread())) {
            throw new FetchException(FetchErrorStrings.BLOCKING_CALL_ON_UI_THREAD);
        }
        return this.fetchDatabaseManagerWrapper.getPendingCount(z10) > 0;
    }

    @Override
    public void init() {
        FetchNotificationManager fetchNotificationManager = this.fetchNotificationManager;
        if (fetchNotificationManager != null) {
            this.listenerCoordinator.addNotificationManager(fetchNotificationManager);
        }
        this.fetchDatabaseManagerWrapper.sanitizeOnFirstEntry();
        if (this.autoStart) {
            this.priorityListProcessor.start();
        }
    }

    @Override
    @NotNull
    public List<Download> pause(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return pauseDownloads(pf.S.x2(this.fetchDatabaseManagerWrapper.get(ids)));
    }

    @Override
    @NotNull
    public List<Download> pauseAll() {
        return pauseDownloads(this.fetchDatabaseManagerWrapper.get());
    }

    @Override
    @NotNull
    public List<Download> pausedGroup(int i10) {
        return pauseDownloads(this.fetchDatabaseManagerWrapper.getByGroup(i10));
    }

    @Override
    @NotNull
    public List<Download> remove(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return removeDownloads(pf.S.x2(this.fetchDatabaseManagerWrapper.get(ids)));
    }

    @Override
    @NotNull
    public List<Download> removeAll() {
        return removeDownloads(this.fetchDatabaseManagerWrapper.get());
    }

    @Override
    @NotNull
    public List<Download> removeAllInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return removeDownloads(this.fetchDatabaseManagerWrapper.getDownloadsInGroupWithStatus(i10, statuses));
    }

    @Override
    @NotNull
    public List<Download> removeAllWithStatus(@NotNull Status status) {
        kotlin.jvm.internal.M.p(status, "status");
        return removeDownloads(this.fetchDatabaseManagerWrapper.getByStatus(status));
    }

    @Override
    public void removeFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObservers) {
        kotlin.jvm.internal.M.p(fetchObservers, "fetchObservers");
        this.listenerCoordinator.removeFetchObserversForDownload(i10, (FetchObserver[]) Arrays.copyOf(fetchObservers, fetchObservers.length));
    }

    @Override
    @NotNull
    public List<Download> removeGroup(int i10) {
        return removeDownloads(this.fetchDatabaseManagerWrapper.getByGroup(i10));
    }

    @Override
    public void removeListener(@NotNull FetchListener listener) {
        kotlin.jvm.internal.M.p(listener, "listener");
        synchronized (this.listenerSet) {
            try {
                Iterator<FetchListener> it = this.listenerSet.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (kotlin.jvm.internal.M.g(it.next(), listener)) {
                        it.remove();
                        this.logger.d("Removed listener " + ((Object) listener));
                        break;
                    }
                }
                this.listenerCoordinator.removeListener(this.listenerId, listener);
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @NotNull
    public Download renameCompletedDownloadFile(int i10, @NotNull String newFileName) {
        kotlin.jvm.internal.M.p(newFileName, "newFileName");
        DownloadInfo downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        if (downloadInfo == null) {
            throw new FetchException(FetchErrorStrings.REQUEST_DOES_NOT_EXIST);
        }
        if (downloadInfo.getStatus() != Status.COMPLETED) {
            throw new FetchException(FetchErrorStrings.FAILED_RENAME_FILE_ASSOCIATED_WITH_INCOMPLETE_DOWNLOAD);
        }
        if (this.fetchDatabaseManagerWrapper.getByFile(newFileName) != null) {
            throw new FetchException(FetchErrorStrings.REQUEST_WITH_FILE_PATH_ALREADY_EXIST);
        }
        DownloadInfo downloadInfo2 = FetchTypeConverterExtensions.toDownloadInfo(downloadInfo, this.fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
        downloadInfo2.setId(FetchCoreUtils.getUniqueId(downloadInfo.getUrl(), newFileName));
        downloadInfo2.setFile(newFileName);
        nf.Z<DownloadInfo, Boolean> insert = this.fetchDatabaseManagerWrapper.insert(downloadInfo2);
        if (!insert.f().booleanValue()) {
            throw new FetchException(FetchErrorStrings.FILE_CANNOT_BE_RENAMED);
        }
        if (this.storageResolver.renameFile(downloadInfo.getFile(), newFileName)) {
            this.fetchDatabaseManagerWrapper.delete(downloadInfo);
            return insert.e();
        }
        this.fetchDatabaseManagerWrapper.delete(downloadInfo2);
        throw new FetchException(FetchErrorStrings.FILE_CANNOT_BE_RENAMED);
    }

    @Override
    @NotNull
    public Download replaceExtras(int i10, @NotNull Extras extras) {
        kotlin.jvm.internal.M.p(extras, "extras");
        DownloadInfo downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        if (downloadInfo != null) {
            cancelDownloadsIfDownloading(pf.G.l(downloadInfo));
            downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        }
        if (downloadInfo == null) {
            throw new FetchException(FetchErrorStrings.REQUEST_DOES_NOT_EXIST);
        }
        DownloadInfo updateExtras = this.fetchDatabaseManagerWrapper.updateExtras(i10, extras);
        if (updateExtras != null) {
            return updateExtras;
        }
        throw new FetchException(FetchErrorStrings.REQUEST_DOES_NOT_EXIST);
    }

    @Override
    @Nullable
    public Download resetAutoRetryAttempts(int i10, boolean z10) {
        DownloadInfo downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        if (downloadInfo != null) {
            cancelDownloadsIfDownloading(pf.G.l(downloadInfo));
            if (z10 && FetchUtils.canRetryDownload(downloadInfo)) {
                downloadInfo.setStatus(Status.QUEUED);
                downloadInfo.setError(FetchDefaults.getDefaultNoError());
            }
            downloadInfo.setAutoRetryAttempts(0);
            this.fetchDatabaseManagerWrapper.update(downloadInfo);
            startPriorityQueueIfNotStarted();
        }
        return downloadInfo;
    }

    @Override
    @NotNull
    public List<Download> resume(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return resumeDownloads(ids);
    }

    @Override
    @NotNull
    public List<Download> resumeAll() {
        List<DownloadInfo> list = this.fetchDatabaseManagerWrapper.get();
        ArrayList arrayList = new ArrayList(pf.I.d0(list, 10));
        Iterator<DownloadInfo> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().getId()));
        }
        return resumeDownloads(arrayList);
    }

    @Override
    @NotNull
    public List<Download> resumeGroup(int i10) {
        List<DownloadInfo> byGroup = this.fetchDatabaseManagerWrapper.getByGroup(i10);
        ArrayList arrayList = new ArrayList(pf.I.d0(byGroup, 10));
        Iterator<DownloadInfo> it = byGroup.iterator();
        while (it.hasNext()) {
            arrayList.add(Integer.valueOf(it.next().getId()));
        }
        return resumeDownloads(arrayList);
    }

    @Override
    @NotNull
    public List<Download> retry(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        List<DownloadInfo> x22 = pf.S.x2(this.fetchDatabaseManagerWrapper.get(ids));
        ArrayList arrayList = new ArrayList();
        for (DownloadInfo downloadInfo : x22) {
            if (FetchUtils.canRetryDownload(downloadInfo)) {
                downloadInfo.setStatus(Status.QUEUED);
                downloadInfo.setError(FetchDefaults.getDefaultNoError());
                arrayList.add(downloadInfo);
            }
        }
        this.fetchDatabaseManagerWrapper.update(arrayList);
        startPriorityQueueIfNotStarted();
        return arrayList;
    }

    @Override
    public void setDownloadConcurrentLimit(int i10) {
        this.priorityListProcessor.stop();
        List<Integer> activeDownloadsIds = this.downloadManager.getActiveDownloadsIds();
        if (!activeDownloadsIds.isEmpty()) {
            List<? extends DownloadInfo> x22 = pf.S.x2(this.fetchDatabaseManagerWrapper.get(activeDownloadsIds));
            if (!x22.isEmpty()) {
                cancelDownloadsIfDownloading(x22);
                List<? extends DownloadInfo> x23 = pf.S.x2(this.fetchDatabaseManagerWrapper.get(activeDownloadsIds));
                this.downloadManager.setConcurrentLimit(i10);
                this.priorityListProcessor.setDownloadConcurrentLimit(i10);
                for (DownloadInfo downloadInfo : x23) {
                    if (downloadInfo.getStatus() == Status.DOWNLOADING) {
                        downloadInfo.setStatus(Status.QUEUED);
                        downloadInfo.setError(FetchDefaults.getDefaultNoError());
                    }
                }
                this.fetchDatabaseManagerWrapper.update(x23);
            }
        }
        this.priorityListProcessor.start();
    }

    @Override
    public void setGlobalNetworkType(@NotNull NetworkType networkType) {
        kotlin.jvm.internal.M.p(networkType, "networkType");
        this.priorityListProcessor.stop();
        this.priorityListProcessor.setGlobalNetworkType(networkType);
        List<Integer> activeDownloadsIds = this.downloadManager.getActiveDownloadsIds();
        if (!activeDownloadsIds.isEmpty()) {
            List<? extends DownloadInfo> x22 = pf.S.x2(this.fetchDatabaseManagerWrapper.get(activeDownloadsIds));
            if (!x22.isEmpty()) {
                cancelDownloadsIfDownloading(x22);
                List<? extends DownloadInfo> x23 = pf.S.x2(this.fetchDatabaseManagerWrapper.get(activeDownloadsIds));
                for (DownloadInfo downloadInfo : x23) {
                    if (downloadInfo.getStatus() == Status.DOWNLOADING) {
                        downloadInfo.setStatus(Status.QUEUED);
                        downloadInfo.setError(FetchDefaults.getDefaultNoError());
                    }
                }
                this.fetchDatabaseManagerWrapper.update(x23);
            }
        }
        this.priorityListProcessor.start();
    }

    @Override
    public void unfreeze() {
        this.priorityListProcessor.resume();
    }

    @Override
    @NotNull
    public nf.Z<Download, Boolean> updateRequest(int i10, @NotNull Request newRequest) {
        kotlin.jvm.internal.M.p(newRequest, "newRequest");
        DownloadInfo downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        if (downloadInfo != null) {
            cancelDownloadsIfDownloading(pf.G.l(downloadInfo));
            downloadInfo = this.fetchDatabaseManagerWrapper.get(i10);
        }
        if (downloadInfo == null) {
            throw new FetchException(FetchErrorStrings.REQUEST_DOES_NOT_EXIST);
        }
        if (!kotlin.jvm.internal.M.g(newRequest.getFile(), downloadInfo.getFile())) {
            delete(pf.G.l(Integer.valueOf(i10)));
            nf.Z<Download, Error> enqueue = enqueue(newRequest);
            return new nf.Z<>(enqueue.e(), Boolean.valueOf(enqueue.f() == Error.NONE));
        }
        DownloadInfo downloadInfo2 = FetchTypeConverterExtensions.toDownloadInfo(newRequest, this.fetchDatabaseManagerWrapper.getNewDownloadInfoInstance());
        downloadInfo2.setNamespace(this.namespace);
        downloadInfo2.setDownloaded(downloadInfo.getDownloaded());
        downloadInfo2.setTotal(downloadInfo.getTotal());
        if (downloadInfo.getStatus() == Status.DOWNLOADING) {
            downloadInfo2.setStatus(Status.QUEUED);
            downloadInfo2.setError(FetchDefaults.getDefaultNoError());
        } else {
            downloadInfo2.setStatus(downloadInfo.getStatus());
            downloadInfo2.setError(downloadInfo.getError());
        }
        this.fetchDatabaseManagerWrapper.delete(downloadInfo);
        this.listenerCoordinator.getMainListener().onDeleted(downloadInfo);
        this.fetchDatabaseManagerWrapper.insert(downloadInfo2);
        startPriorityQueueIfNotStarted();
        return new nf.Z<>(downloadInfo2, Boolean.TRUE);
    }

    @Override
    @NotNull
    public List<nf.Z<Download, Error>> enqueue(@NotNull List<? extends Request> requests) {
        kotlin.jvm.internal.M.p(requests, "requests");
        return enqueueRequests(requests);
    }

    @Override
    @NotNull
    public List<Download> getDownloads(@NotNull List<Integer> idList) {
        kotlin.jvm.internal.M.p(idList, "idList");
        return pf.S.x2(this.fetchDatabaseManagerWrapper.get(idList));
    }

    @Override
    @NotNull
    public List<Download> getDownloadsWithStatus(@NotNull List<? extends Status> statuses) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return this.fetchDatabaseManagerWrapper.getByStatus(statuses);
    }
}
