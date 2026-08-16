package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import com.tonyodev.fetch2.CompletedDownload;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.Fetch;
import com.tonyodev.fetch2.FetchConfiguration;
import com.tonyodev.fetch2.FetchGroup;
import com.tonyodev.fetch2.FetchListener;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Request;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.fetch.FetchModulesBuilder;
import com.tonyodev.fetch2.util.ActiveDownloadInfo;
import com.tonyodev.fetch2.util.FetchUtils;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.FileResource;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Func2;
import com.tonyodev.fetch2core.HandlerWrapper;
import com.tonyodev.fetch2core.Logger;
import com.tonyodev.fetch2core.Reason;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public class FetchImpl implements Fetch {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final Runnable activeDownloadsRunnable;

    @NotNull
    private final Set<ActiveDownloadInfo> activeDownloadsSet;
    private volatile boolean closed;

    @NotNull
    private final FetchConfiguration fetchConfiguration;

    @NotNull
    private final FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;

    @NotNull
    private final FetchHandler fetchHandler;

    @NotNull
    private final HandlerWrapper handlerWrapper;

    @NotNull
    private final ListenerCoordinator listenerCoordinator;

    @NotNull
    private final Object lock;

    @NotNull
    private final Logger logger;

    @NotNull
    private final String namespace;

    @NotNull
    private final Handler uiHandler;

    public static final class AnonymousClass1 extends kotlin.jvm.internal.O implements Mf.a<nf.P0> {
        public AnonymousClass1() {
            super(0);
        }

        @Override
        public nf.P0 invoke() {
            invoke2();
            return nf.P0.f98194a;
        }

        public final void invoke2() {
            FetchImpl.this.fetchHandler.init();
        }
    }

    public static final class Companion {
        public Companion(C14026x c14026x) {
            this();
        }

        @Lf.o
        @NotNull
        public final FetchImpl newInstance(@NotNull FetchModulesBuilder.Modules modules) {
            kotlin.jvm.internal.M.p(modules, "modules");
            return new FetchImpl(modules.getFetchConfiguration().getNamespace(), modules.getFetchConfiguration(), modules.getHandlerWrapper(), modules.getUiHandler(), modules.getFetchHandler(), modules.getFetchConfiguration().getLogger(), modules.getListenerCoordinator(), modules.getFetchDatabaseManagerWrapper());
        }

        private Companion() {
        }
    }

    public FetchImpl(@NotNull String namespace, @NotNull FetchConfiguration fetchConfiguration, @NotNull HandlerWrapper handlerWrapper, @NotNull Handler uiHandler, @NotNull FetchHandler fetchHandler, @NotNull Logger logger, @NotNull ListenerCoordinator listenerCoordinator, @NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper) {
        kotlin.jvm.internal.M.p(namespace, "namespace");
        kotlin.jvm.internal.M.p(fetchConfiguration, "fetchConfiguration");
        kotlin.jvm.internal.M.p(handlerWrapper, "handlerWrapper");
        kotlin.jvm.internal.M.p(uiHandler, "uiHandler");
        kotlin.jvm.internal.M.p(fetchHandler, "fetchHandler");
        kotlin.jvm.internal.M.p(logger, "logger");
        kotlin.jvm.internal.M.p(listenerCoordinator, "listenerCoordinator");
        kotlin.jvm.internal.M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
        this.namespace = namespace;
        this.fetchConfiguration = fetchConfiguration;
        this.handlerWrapper = handlerWrapper;
        this.uiHandler = uiHandler;
        this.fetchHandler = fetchHandler;
        this.logger = logger;
        this.listenerCoordinator = listenerCoordinator;
        this.fetchDatabaseManagerWrapper = fetchDatabaseManagerWrapper;
        this.lock = new Object();
        this.activeDownloadsSet = new LinkedHashSet();
        this.activeDownloadsRunnable = new Runnable() {
            @Override
            public final void run() {
                FetchImpl.activeDownloadsRunnable$lambda$2(FetchImpl.this);
            }
        };
        handlerWrapper.post(new AnonymousClass1());
        registerActiveDownloadsRunnable();
    }

    public static final void activeDownloadsRunnable$lambda$2(final FetchImpl this$0) {
        kotlin.jvm.internal.M.p(this$0, "this$0");
        if (this$0.isClosed()) {
            return;
        }
        final boolean hasActiveDownloads = this$0.fetchHandler.hasActiveDownloads(true);
        final boolean hasActiveDownloads2 = this$0.fetchHandler.hasActiveDownloads(false);
        this$0.uiHandler.post(new Runnable() {
            @Override
            public final void run() {
                FetchImpl.activeDownloadsRunnable$lambda$2$lambda$1(FetchImpl.this, hasActiveDownloads, hasActiveDownloads2);
            }
        });
    }

    public static final void activeDownloadsRunnable$lambda$2$lambda$1(FetchImpl this$0, boolean z10, boolean z11) {
        kotlin.jvm.internal.M.p(this$0, "this$0");
        if (!this$0.isClosed()) {
            for (ActiveDownloadInfo activeDownloadInfo : this$0.activeDownloadsSet) {
                activeDownloadInfo.getFetchObserver().onChanged(Boolean.valueOf(activeDownloadInfo.getIncludeAddedDownloads() ? z10 : z11), Reason.REPORTING);
            }
        }
        if (this$0.isClosed()) {
            return;
        }
        this$0.registerActiveDownloadsRunnable();
    }

    public static final void addCompletedDownload$lambda$39(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.COMPLETED_NOT_ADDED_SUCCESSFULLY);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    public static final void cancel$lambda$21(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.REQUEST_DOES_NOT_EXIST);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    public static final void delete$lambda$19(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.REQUEST_DOES_NOT_EXIST);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    public static final void enqueue$lambda$6(FetchImpl this$0, final Func func, final Func func2, List result) {
        kotlin.jvm.internal.M.p(this$0, "this$0");
        kotlin.jvm.internal.M.p(result, "result");
        if (result.isEmpty()) {
            this$0.uiHandler.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl.enqueue$lambda$6$lambda$5(Func.this);
                }
            });
            return;
        }
        final nf.Z z10 = (nf.Z) pf.S.G2(result);
        if (z10.f() != Error.NONE) {
            this$0.uiHandler.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl.enqueue$lambda$6$lambda$3(Func.this, z10);
                }
            });
        } else {
            this$0.uiHandler.post(new Runnable() {
                @Override
                public final void run() {
                    FetchImpl.enqueue$lambda$6$lambda$4(Func.this, z10);
                }
            });
        }
    }

    public static final void enqueue$lambda$6$lambda$3(Func func, nf.Z enqueuedPair) {
        kotlin.jvm.internal.M.p(enqueuedPair, "$enqueuedPair");
        if (func != null) {
            func.call(enqueuedPair.f());
        }
    }

    public static final void enqueue$lambda$6$lambda$4(Func func, nf.Z enqueuedPair) {
        kotlin.jvm.internal.M.p(enqueuedPair, "$enqueuedPair");
        if (func != null) {
            func.call(enqueuedPair.e());
        }
    }

    public static final void enqueue$lambda$6$lambda$5(Func func) {
        if (func != null) {
            func.call(Error.ENQUEUE_NOT_SUCCESSFUL);
        }
    }

    private final void enqueueRequest(List<? extends Request> list, Func<List<nf.Z<Request, Error>>> func, Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$enqueueRequest$1$1(list, this, func2, func));
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    private final Fetch executeCancelAction(Mf.a<? extends List<? extends Download>> aVar, Func<List<Download>> func, Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$executeCancelAction$1$1(aVar, this, func2, func));
        }
        return this;
    }

    private final Fetch executeDeleteAction(Mf.a<? extends List<? extends Download>> aVar, Func<List<Download>> func, Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$executeDeleteAction$1$1(aVar, this, func2, func));
        }
        return this;
    }

    private final Fetch executeRemoveAction(Mf.a<? extends List<? extends Download>> aVar, Func<List<Download>> func, Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$executeRemoveAction$1$1(aVar, this, func2, func));
        }
        return this;
    }

    @Lf.o
    @NotNull
    public static final FetchImpl newInstance(@NotNull FetchModulesBuilder.Modules modules) {
        return Companion.newInstance(modules);
    }

    public static final void pause$lambda$9(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.REQUEST_DOES_NOT_EXIST);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    private final void pauseDownloads(List<Integer> list, Integer num, Func<List<Download>> func, Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$pauseDownloads$1$1(list, this, num, func2, func));
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    private final void registerActiveDownloadsRunnable() {
        this.handlerWrapper.postDelayed(this.activeDownloadsRunnable, this.fetchConfiguration.getActiveDownloadsCheckInterval());
    }

    public static final void remove$lambda$17(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.REQUEST_DOES_NOT_EXIST);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    public static final void resume$lambda$14(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.REQUEST_DOES_NOT_EXIST);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    private final void resumeDownloads(List<Integer> list, Integer num, Func<List<Download>> func, Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$resumeDownloads$1$1(list, this, num, func2, func));
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    public static final void retry$lambda$25(Func func, Func func2, List downloads) {
        kotlin.jvm.internal.M.p(downloads, "downloads");
        if (downloads.isEmpty()) {
            if (func2 != null) {
                func2.call(Error.REQUEST_DOES_NOT_EXIST);
            }
        } else if (func != null) {
            func.call(pf.S.G2(downloads));
        }
    }

    private final void throwExceptionIfClosed() {
        if (this.closed) {
            throw new FetchException("This fetch instance has been closed. Create a new instance using the builder.");
        }
    }

    @Override
    @NotNull
    public Fetch addActiveDownloadsObserver(boolean z10, @NotNull FetchObserver<Boolean> fetchObserver) {
        kotlin.jvm.internal.M.p(fetchObserver, "fetchObserver");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$addActiveDownloadsObserver$1$1(this, fetchObserver, z10));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch addCompletedDownload(@NotNull CompletedDownload completedDownload, boolean z10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        kotlin.jvm.internal.M.p(completedDownload, "completedDownload");
        return addCompletedDownloads(pf.G.l(completedDownload), z10, new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.addCompletedDownload$lambda$39(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch addCompletedDownloads(@NotNull List<? extends CompletedDownload> completedDownloads, boolean z10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(completedDownloads, "completedDownloads");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$addCompletedDownloads$1$1(this, completedDownloads, z10, func2, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch addListener(@NotNull FetchListener listener) {
        kotlin.jvm.internal.M.p(listener, "listener");
        return addListener(listener, false);
    }

    @Override
    @NotNull
    public Fetch attachFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObservers) {
        kotlin.jvm.internal.M.p(fetchObservers, "fetchObservers");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$attachFetchObserversForDownload$1$1(this, i10, fetchObservers));
        }
        return this;
    }

    @Override
    public void awaitFinish() {
        awaitFinishOrTimeout(-1L);
    }

    @Override
    public void awaitFinishOrTimeout(long j10) {
        FetchUtils.awaitFinishOrTimeout(j10, this.fetchHandler);
    }

    @Override
    @NotNull
    public Fetch cancel(@NotNull List<Integer> ids, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return executeCancelAction(new FetchImpl$cancel$1(this, ids), func, func2);
    }

    @Override
    @NotNull
    public Fetch cancelAll(@Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        return executeCancelAction(new FetchImpl$cancelAll$1(this), func, func2);
    }

    @Override
    @NotNull
    public Fetch cancelGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        return executeCancelAction(new FetchImpl$cancelGroup$1(this, i10), func, func2);
    }

    @Override
    public void close() {
        synchronized (this.lock) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            this.logger.d(getNamespace() + " closing/shutting down");
            this.handlerWrapper.removeCallbacks(this.activeDownloadsRunnable);
            this.handlerWrapper.post(new FetchImpl$close$1$1(this));
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    @Override
    @NotNull
    public Fetch delete(@NotNull List<Integer> ids, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return executeDeleteAction(new FetchImpl$delete$1(this, ids), func, func2);
    }

    @Override
    @NotNull
    public Fetch deleteAll(@Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        return executeDeleteAction(new FetchImpl$deleteAll$1(this), func, func2);
    }

    @Override
    @NotNull
    public Fetch deleteAllInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return executeDeleteAction(new FetchImpl$deleteAllInGroupWithStatus$1(this, i10, statuses), func, func2);
    }

    @Override
    @NotNull
    public Fetch deleteAllWithStatus(@NotNull Status status, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(status, "status");
        return executeDeleteAction(new FetchImpl$deleteAllWithStatus$1(this, status), func, func2);
    }

    @Override
    @NotNull
    public Fetch deleteGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        return executeDeleteAction(new FetchImpl$deleteGroup$1(this, i10), func, func2);
    }

    @Override
    @NotNull
    public Fetch enableLogging(boolean z10) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$enableLogging$1$1(this, z10));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch enqueue(@NotNull Request request, @Nullable final Func<Request> func, @Nullable final Func<Error> func2) {
        kotlin.jvm.internal.M.p(request, "request");
        enqueueRequest(pf.G.l(request), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.enqueue$lambda$6(FetchImpl.this, func2, func, (List) obj);
            }
        }, func2);
        return this;
    }

    @Override
    public void enqueueBatch(@NotNull List<? extends Request> requests, @Nullable Func<List<nf.Z<DownloadInfo, Boolean>>> func) {
        kotlin.jvm.internal.M.p(requests, "requests");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$enqueueBatch$1$1(this, requests, func));
            nf.P0 p02 = nf.P0.f98194a;
        }
    }

    @Override
    @NotNull
    public Fetch freeze(@Nullable Func<Boolean> func, @Nullable Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$freeze$1$1(this, func, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getAllGroupIds(@NotNull Func<List<Integer>> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getAllGroupIds$1$1(this, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getContentLengthForRequest(@NotNull Request request, boolean z10, @NotNull Func<Long> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(request, "request");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.executeWorkerTask(new FetchImpl$getContentLengthForRequest$1$1(this, request, z10, func2, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getContentLengthForRequests(@NotNull List<? extends Request> requests, boolean z10, @NotNull Func<List<nf.Z<Request, Long>>> func, @NotNull Func<List<nf.Z<Request, Error>>> func2) {
        kotlin.jvm.internal.M.p(requests, "requests");
        kotlin.jvm.internal.M.p(func, "func");
        kotlin.jvm.internal.M.p(func2, "func2");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.executeWorkerTask(new FetchImpl$getContentLengthForRequests$1$1(requests, this, z10, func, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownload(int i10, @NotNull Func2<Download> func2) {
        kotlin.jvm.internal.M.p(func2, "func2");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownload$1$1(this, i10, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadBlocks(int i10, @NotNull Func<List<DownloadBlock>> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadBlocks$1$1(this, i10, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloads(@NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloads$1$1(this, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadsByRequestIdentifier(long j10, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadsByRequestIdentifier$1$1(this, j10, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadsByTag(@NotNull String tag, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(tag, "tag");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadsByTag$1$1(this, tag, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadsInGroup(int i10, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadsInGroup$1$1(this, i10, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadsInGroupWithStatus$1$1(this, i10, statuses, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadsWithStatus(@NotNull Status status, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(status, "status");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadsWithStatus$1$1(this, status, func));
        }
        return this;
    }

    @Override
    @NotNull
    public final FetchConfiguration getFetchConfiguration() {
        return this.fetchConfiguration;
    }

    @Override
    @NotNull
    public Fetch getFetchFileServerCatalog(@NotNull Request request, @NotNull Func<List<FileResource>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(request, "request");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.executeWorkerTask(new FetchImpl$getFetchFileServerCatalog$1$1(this, request, func2, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getFetchGroup(int i10, @NotNull Func<FetchGroup> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getFetchGroup$1$1(this, i10, func));
            nf.P0 p02 = nf.P0.f98194a;
        }
        return this;
    }

    @Override
    @NotNull
    public Set<FetchListener> getListenerSet() {
        Set<FetchListener> listenerSet;
        synchronized (this.lock) {
            throwExceptionIfClosed();
            listenerSet = this.fetchHandler.getListenerSet();
        }
        return listenerSet;
    }

    @Override
    @NotNull
    public String getNamespace() {
        return this.namespace;
    }

    @Override
    @NotNull
    public Fetch getServerResponse(@NotNull String url, @Nullable Map<String, String> map, @NotNull Func<Downloader.Response> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(url, "url");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.executeWorkerTask(new FetchImpl$getServerResponse$1$1(this, url, map, func2, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch hasActiveDownloads(boolean z10, @NotNull Func<Boolean> func) {
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$hasActiveDownloads$1$1(this, z10, func));
            nf.P0 p02 = nf.P0.f98194a;
        }
        return this;
    }

    @Override
    public boolean isClosed() {
        boolean z10;
        synchronized (this.lock) {
            z10 = this.closed;
        }
        return z10;
    }

    @Override
    @NotNull
    public Fetch pause(@NotNull List<Integer> ids, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(ids, "ids");
        pauseDownloads(ids, null, func, func2);
        return this;
    }

    @Override
    @NotNull
    public Fetch pauseAll() {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$pauseAll$1$1(this));
            nf.P0 p02 = nf.P0.f98194a;
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch pauseGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        pauseDownloads(null, Integer.valueOf(i10), func, func2);
        return this;
    }

    @Override
    @NotNull
    public Fetch remove(@NotNull List<Integer> ids, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return executeRemoveAction(new FetchImpl$remove$1(this, ids), func, func2);
    }

    @Override
    @NotNull
    public Fetch removeActiveDownloadsObserver(@NotNull FetchObserver<Boolean> fetchObserver) {
        kotlin.jvm.internal.M.p(fetchObserver, "fetchObserver");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$removeActiveDownloadsObserver$1$1(this, fetchObserver));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch removeAll(@Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        return executeRemoveAction(new FetchImpl$removeAll$1(this), func, func2);
    }

    @Override
    @NotNull
    public Fetch removeAllInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return executeRemoveAction(new FetchImpl$removeAllInGroupWithStatus$1(this, i10, statuses), func, func2);
    }

    @Override
    @NotNull
    public Fetch removeAllWithStatus(@NotNull Status status, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(status, "status");
        return executeRemoveAction(new FetchImpl$removeAllWithStatus$1(this, status), func, func2);
    }

    @Override
    @NotNull
    public Fetch removeFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObservers) {
        kotlin.jvm.internal.M.p(fetchObservers, "fetchObservers");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$removeFetchObserversForDownload$1$1(this, i10, fetchObservers));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch removeGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        return executeRemoveAction(new FetchImpl$removeGroup$1(this, i10), func, func2);
    }

    @Override
    @NotNull
    public Fetch removeListener(@NotNull FetchListener listener) {
        kotlin.jvm.internal.M.p(listener, "listener");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$removeListener$1$1(this, listener));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch renameCompletedDownloadFile(int i10, @NotNull String newFileName, @Nullable Func<Download> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(newFileName, "newFileName");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$renameCompletedDownloadFile$1$1(this, i10, newFileName, func, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch replaceExtras(int i10, @NotNull Extras extras, @Nullable Func<Download> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(extras, "extras");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$replaceExtras$1$1(this, i10, extras, func, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch resetAutoRetryAttempts(int i10, boolean z10, @Nullable Func2<Download> func2, @Nullable Func<Error> func) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$resetAutoRetryAttempts$1$1(this, i10, z10, func, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch resume(@NotNull List<Integer> ids, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(ids, "ids");
        resumeDownloads(ids, null, func, func2);
        return this;
    }

    @Override
    @NotNull
    public Fetch resumeAll() {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$resumeAll$1$1(this));
            nf.P0 p02 = nf.P0.f98194a;
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch resumeGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        resumeDownloads(null, Integer.valueOf(i10), func, func2);
        return this;
    }

    @Override
    @NotNull
    public Fetch retry(@NotNull List<Integer> ids, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(ids, "ids");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$retry$1$1(this, ids, func2, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch setDownloadConcurrentLimit(int i10) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            if (i10 < 0) {
                throw new FetchException("Concurrent limit cannot be less than 0");
            }
            this.handlerWrapper.post(new FetchImpl$setDownloadConcurrentLimit$1$1(this, i10));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch setGlobalNetworkType(@NotNull NetworkType networkType) {
        kotlin.jvm.internal.M.p(networkType, "networkType");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$setGlobalNetworkType$1$1(this, networkType));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch unfreeze(@Nullable Func<Boolean> func, @Nullable Func<Error> func2) {
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$unfreeze$1$1(this, func, func2));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch updateRequest(int i10, @NotNull Request updatedRequest, boolean z10, @Nullable Func<Download> func, @Nullable Func<Error> func2) {
        kotlin.jvm.internal.M.p(updatedRequest, "updatedRequest");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$updateRequest$1$1(this, i10, updatedRequest, z10, func2, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch addListener(@NotNull FetchListener listener, boolean z10) {
        kotlin.jvm.internal.M.p(listener, "listener");
        return addListener(listener, z10, false);
    }

    @Override
    @NotNull
    public Fetch cancel(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return cancel(ids, (Func<List<Download>>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch cancelAll() {
        return cancelAll(null, null);
    }

    @Override
    @NotNull
    public Fetch cancelGroup(int i10) {
        return cancelGroup(i10, null, null);
    }

    @Override
    @NotNull
    public Fetch delete(int i10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        return delete(pf.G.l(Integer.valueOf(i10)), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.delete$lambda$19(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch deleteAll() {
        return deleteAll(null, null);
    }

    @Override
    @NotNull
    public Fetch deleteAllInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return deleteAllInGroupWithStatus(i10, statuses, null, null);
    }

    @Override
    @NotNull
    public Fetch deleteAllWithStatus(@NotNull Status status) {
        kotlin.jvm.internal.M.p(status, "status");
        return deleteAllWithStatus(status, null, null);
    }

    @Override
    @NotNull
    public Fetch deleteGroup(int i10) {
        return deleteGroup(i10, null, null);
    }

    @Override
    @NotNull
    public Fetch enqueue(@NotNull List<? extends Request> requests, @Nullable Func<List<nf.Z<Request, Error>>> func) {
        kotlin.jvm.internal.M.p(requests, "requests");
        enqueueRequest(requests, func, null);
        return this;
    }

    @Override
    @NotNull
    public Fetch pause(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return pause(ids, (Func<List<Download>>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch pauseGroup(int i10) {
        return pauseGroup(i10, null, null);
    }

    @Override
    @NotNull
    public Fetch remove(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return remove(ids, (Func<List<Download>>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch removeAll() {
        return removeAll(null, null);
    }

    @Override
    @NotNull
    public Fetch removeAllInGroupWithStatus(int i10, @NotNull List<? extends Status> statuses) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        return removeAllInGroupWithStatus(i10, statuses, null, null);
    }

    @Override
    @NotNull
    public Fetch removeAllWithStatus(@NotNull Status status) {
        kotlin.jvm.internal.M.p(status, "status");
        return removeAllWithStatus(status, null, null);
    }

    @Override
    @NotNull
    public Fetch removeGroup(int i10) {
        return removeGroup(i10, null, null);
    }

    @Override
    @NotNull
    public Fetch resume(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return resume(ids, (Func<List<Download>>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch resumeGroup(int i10) {
        return resumeGroup(i10, null, null);
    }

    @Override
    @NotNull
    public Fetch addListener(@NotNull FetchListener listener, boolean z10, boolean z11) {
        kotlin.jvm.internal.M.p(listener, "listener");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$addListener$1$1(this, listener, z10, z11));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch cancel(int i10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        return cancel(pf.G.l(Integer.valueOf(i10)), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.cancel$lambda$21(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch delete(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return delete(ids, (Func<List<Download>>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch pause(int i10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        return pause(pf.G.l(Integer.valueOf(i10)), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.pause$lambda$9(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch remove(int i10) {
        return remove(i10, (Func<Download>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch resume(int i10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        return resume(pf.G.l(Integer.valueOf(i10)), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.resume$lambda$14(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch cancel(int i10) {
        return cancel(i10, (Func<Download>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch delete(int i10) {
        return delete(i10, (Func<Download>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch pause(int i10) {
        return pause(i10, (Func<Download>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch remove(int i10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        return remove(pf.G.l(Integer.valueOf(i10)), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.remove$lambda$17(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch resume(int i10) {
        return resume(i10, (Func<Download>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch freeze() {
        return freeze(null, null);
    }

    @Override
    @NotNull
    public Fetch getDownloads(@NotNull List<Integer> idList, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(idList, "idList");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloads$2$1(this, idList, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch getDownloadsWithStatus(@NotNull List<? extends Status> statuses, @NotNull Func<List<Download>> func) {
        kotlin.jvm.internal.M.p(statuses, "statuses");
        kotlin.jvm.internal.M.p(func, "func");
        synchronized (this.lock) {
            throwExceptionIfClosed();
            this.handlerWrapper.post(new FetchImpl$getDownloadsWithStatus$2$1(this, statuses, func));
        }
        return this;
    }

    @Override
    @NotNull
    public Fetch retry(@NotNull List<Integer> ids) {
        kotlin.jvm.internal.M.p(ids, "ids");
        return retry(ids, (Func<List<Download>>) null, (Func<Error>) null);
    }

    @Override
    @NotNull
    public Fetch unfreeze() {
        return unfreeze(null, null);
    }

    @Override
    @NotNull
    public Fetch retry(int i10, @Nullable final Func<Download> func, @Nullable final Func<Error> func2) {
        return retry(pf.G.l(Integer.valueOf(i10)), new Func() {
            @Override
            public final void call(Object obj) {
                FetchImpl.retry$lambda$25(Func.this, func2, (List) obj);
            }
        }, func2);
    }

    @Override
    @NotNull
    public Fetch retry(int i10) {
        return retry(i10, (Func<Download>) null, (Func<Error>) null);
    }
}
