package com.tonyodev.fetch2;

import android.annotation.SuppressLint;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.fetch.FetchImpl;
import com.tonyodev.fetch2.fetch.FetchModulesBuilder;
import com.tonyodev.fetch2core.DownloadBlock;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.Extras;
import com.tonyodev.fetch2core.FetchErrorStrings;
import com.tonyodev.fetch2core.FetchObserver;
import com.tonyodev.fetch2core.FileResource;
import com.tonyodev.fetch2core.Func;
import com.tonyodev.fetch2core.Func2;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.M;
import nf.P0;
import nf.Z;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public interface Fetch {

    @NotNull
    public static final Impl Impl = Impl.$$INSTANCE;

    public static final class DefaultImpls {
        public static Fetch addActiveDownloadsObserver$default(Fetch fetch, boolean z10, FetchObserver fetchObserver, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addActiveDownloadsObserver");
            }
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return fetch.addActiveDownloadsObserver(z10, fetchObserver);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch addCompletedDownload$default(Fetch fetch, CompletedDownload completedDownload, boolean z10, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addCompletedDownload");
            }
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                func = null;
            }
            if ((i10 & 8) != 0) {
                func2 = null;
            }
            return fetch.addCompletedDownload(completedDownload, z10, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch addCompletedDownloads$default(Fetch fetch, List list, boolean z10, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addCompletedDownloads");
            }
            if ((i10 & 2) != 0) {
                z10 = true;
            }
            if ((i10 & 4) != 0) {
                func = null;
            }
            if ((i10 & 8) != 0) {
                func2 = null;
            }
            return fetch.addCompletedDownloads(list, z10, func, func2);
        }

        public static Fetch addListener$default(Fetch fetch, FetchListener fetchListener, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addListener");
            }
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return fetch.addListener(fetchListener, z10);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch cancel$default(Fetch fetch, List list, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.cancel((List<Integer>) list, (Func<List<Download>>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch cancelAll$default(Fetch fetch, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancelAll");
            }
            if ((i10 & 1) != 0) {
                func = null;
            }
            if ((i10 & 2) != 0) {
                func2 = null;
            }
            return fetch.cancelAll(func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch cancelGroup$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancelGroup");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.cancelGroup(i10, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch delete$default(Fetch fetch, List list, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.delete((List<Integer>) list, (Func<List<Download>>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch deleteAll$default(Fetch fetch, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteAll");
            }
            if ((i10 & 1) != 0) {
                func = null;
            }
            if ((i10 & 2) != 0) {
                func2 = null;
            }
            return fetch.deleteAll(func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch deleteAllInGroupWithStatus$default(Fetch fetch, int i10, List list, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteAllInGroupWithStatus");
            }
            if ((i11 & 8) != 0) {
                func2 = null;
            }
            return fetch.deleteAllInGroupWithStatus(i10, list, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch deleteAllWithStatus$default(Fetch fetch, Status status, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteAllWithStatus");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.deleteAllWithStatus(status, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch deleteGroup$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteGroup");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.deleteGroup(i10, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch enqueue$default(Fetch fetch, Request request, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: enqueue");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.enqueue(request, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch freeze$default(Fetch fetch, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: freeze");
            }
            if ((i10 & 1) != 0) {
                func = null;
            }
            if ((i10 & 2) != 0) {
                func2 = null;
            }
            return fetch.freeze(func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch getFetchFileServerCatalog$default(Fetch fetch, Request request, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getFetchFileServerCatalog");
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.getFetchFileServerCatalog(request, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch getServerResponse$default(Fetch fetch, String str, Map map, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getServerResponse");
            }
            if ((i10 & 8) != 0) {
                func2 = null;
            }
            return fetch.getServerResponse(str, map, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch pause$default(Fetch fetch, List list, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pause");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.pause((List<Integer>) list, (Func<List<Download>>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch pauseGroup$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pauseGroup");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.pauseGroup(i10, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch remove$default(Fetch fetch, List list, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: remove");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.remove((List<Integer>) list, (Func<List<Download>>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch removeAll$default(Fetch fetch, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeAll");
            }
            if ((i10 & 1) != 0) {
                func = null;
            }
            if ((i10 & 2) != 0) {
                func2 = null;
            }
            return fetch.removeAll(func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch removeAllInGroupWithStatus$default(Fetch fetch, int i10, List list, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeAllInGroupWithStatus");
            }
            if ((i11 & 8) != 0) {
                func2 = null;
            }
            return fetch.removeAllInGroupWithStatus(i10, list, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch removeAllWithStatus$default(Fetch fetch, Status status, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeAllWithStatus");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.removeAllWithStatus(status, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch removeGroup$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: removeGroup");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.removeGroup(i10, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch renameCompletedDownloadFile$default(Fetch fetch, int i10, String str, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: renameCompletedDownloadFile");
            }
            if ((i11 & 4) != 0) {
                func = null;
            }
            if ((i11 & 8) != 0) {
                func2 = null;
            }
            return fetch.renameCompletedDownloadFile(i10, str, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch replaceExtras$default(Fetch fetch, int i10, Extras extras, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: replaceExtras");
            }
            if ((i11 & 4) != 0) {
                func = null;
            }
            if ((i11 & 8) != 0) {
                func2 = null;
            }
            return fetch.replaceExtras(i10, extras, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch resetAutoRetryAttempts$default(Fetch fetch, int i10, boolean z10, Func2 func2, Func func, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetAutoRetryAttempts");
            }
            if ((i11 & 2) != 0) {
                z10 = true;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            if ((i11 & 8) != 0) {
                func = null;
            }
            return fetch.resetAutoRetryAttempts(i10, z10, func2, func);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch resume$default(Fetch fetch, List list, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resume");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.resume((List<Integer>) list, (Func<List<Download>>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch resumeGroup$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeGroup");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.resumeGroup(i10, func, func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch retry$default(Fetch fetch, List list, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: retry");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            if ((i10 & 4) != 0) {
                func2 = null;
            }
            return fetch.retry((List<Integer>) list, (Func<List<Download>>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch unfreeze$default(Fetch fetch, Func func, Func func2, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unfreeze");
            }
            if ((i10 & 1) != 0) {
                func = null;
            }
            if ((i10 & 2) != 0) {
                func2 = null;
            }
            return fetch.unfreeze(func, func2);
        }

        public static Fetch updateRequest$default(Fetch fetch, int i10, Request request, boolean z10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updateRequest");
            }
            if ((i11 & 4) != 0) {
                z10 = true;
            }
            return fetch.updateRequest(i10, request, z10, (i11 & 8) != 0 ? null : func, (i11 & 16) != 0 ? null : func2);
        }

        public static Fetch addListener$default(Fetch fetch, FetchListener fetchListener, boolean z10, boolean z11, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addListener");
            }
            if ((i10 & 2) != 0) {
                z10 = false;
            }
            return fetch.addListener(fetchListener, z10, z11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch cancel$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.cancel(i10, (Func<Download>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch delete$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.delete(i10, (Func<Download>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch enqueue$default(Fetch fetch, List list, Func func, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: enqueue");
            }
            if ((i10 & 2) != 0) {
                func = null;
            }
            return fetch.enqueue(list, func);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch pause$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: pause");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.pause(i10, (Func<Download>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch remove$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: remove");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.remove(i10, (Func<Download>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch resume$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resume");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.resume(i10, (Func<Download>) func, (Func<Error>) func2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static Fetch retry$default(Fetch fetch, int i10, Func func, Func func2, int i11, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: retry");
            }
            if ((i11 & 2) != 0) {
                func = null;
            }
            if ((i11 & 4) != 0) {
                func2 = null;
            }
            return fetch.retry(i10, (Func<Download>) func, (Func<Error>) func2);
        }
    }

    public static final class Impl {

        @SuppressLint({"StaticFieldLeak"})
        @Nullable
        private static volatile FetchConfiguration defaultFetchConfiguration;

        @Nullable
        private static volatile Fetch defaultFetchInstance;
        static final Impl $$INSTANCE = new Impl();

        @NotNull
        private static final Object lock = new Object();

        private Impl() {
        }

        @Nullable
        public final FetchConfiguration getDefaultFetchConfiguration() {
            FetchConfiguration fetchConfiguration;
            synchronized (lock) {
                fetchConfiguration = defaultFetchConfiguration;
            }
            return fetchConfiguration;
        }

        @NotNull
        public final Fetch getDefaultInstance() {
            Fetch fetch;
            synchronized (lock) {
                try {
                    FetchConfiguration fetchConfiguration = defaultFetchConfiguration;
                    if (fetchConfiguration == null) {
                        throw new FetchException(FetchErrorStrings.GLOBAL_FETCH_CONFIGURATION_NOT_SET);
                    }
                    fetch = defaultFetchInstance;
                    if (fetch != null) {
                        if (fetch.isClosed()) {
                        }
                    }
                    fetch = FetchImpl.Companion.newInstance(FetchModulesBuilder.INSTANCE.buildModulesFromPrefs(fetchConfiguration));
                    defaultFetchInstance = fetch;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return fetch;
        }

        @NotNull
        public final Fetch getInstance(@NotNull FetchConfiguration fetchConfiguration) {
            M.p(fetchConfiguration, "fetchConfiguration");
            return FetchImpl.Companion.newInstance(FetchModulesBuilder.INSTANCE.buildModulesFromPrefs(fetchConfiguration));
        }

        public final void setDefaultInstanceConfiguration(@NotNull FetchConfiguration fetchConfiguration) {
            M.p(fetchConfiguration, "fetchConfiguration");
            synchronized (lock) {
                defaultFetchConfiguration = fetchConfiguration;
                P0 p02 = P0.f98194a;
            }
        }
    }

    @NotNull
    Fetch addActiveDownloadsObserver(boolean z10, @NotNull FetchObserver<Boolean> fetchObserver);

    @NotNull
    Fetch addCompletedDownload(@NotNull CompletedDownload completedDownload, boolean z10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch addCompletedDownloads(@NotNull List<? extends CompletedDownload> list, boolean z10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch addListener(@NotNull FetchListener fetchListener);

    @NotNull
    Fetch addListener(@NotNull FetchListener fetchListener, boolean z10);

    @NotNull
    Fetch addListener(@NotNull FetchListener fetchListener, boolean z10, boolean z11);

    @NotNull
    Fetch attachFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObserverArr);

    void awaitFinish();

    void awaitFinishOrTimeout(long j10);

    @NotNull
    Fetch cancel(int i10);

    @NotNull
    Fetch cancel(int i10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch cancel(@NotNull List<Integer> list);

    @NotNull
    Fetch cancel(@NotNull List<Integer> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch cancelAll();

    @NotNull
    Fetch cancelAll(@Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch cancelGroup(int i10);

    @NotNull
    Fetch cancelGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    void close();

    @NotNull
    Fetch delete(int i10);

    @NotNull
    Fetch delete(int i10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch delete(@NotNull List<Integer> list);

    @NotNull
    Fetch delete(@NotNull List<Integer> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch deleteAll();

    @NotNull
    Fetch deleteAll(@Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch deleteAllInGroupWithStatus(int i10, @NotNull List<? extends Status> list);

    @NotNull
    Fetch deleteAllInGroupWithStatus(int i10, @NotNull List<? extends Status> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch deleteAllWithStatus(@NotNull Status status);

    @NotNull
    Fetch deleteAllWithStatus(@NotNull Status status, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch deleteGroup(int i10);

    @NotNull
    Fetch deleteGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch enableLogging(boolean z10);

    @NotNull
    Fetch enqueue(@NotNull Request request, @Nullable Func<Request> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch enqueue(@NotNull List<? extends Request> list, @Nullable Func<List<Z<Request, Error>>> func);

    void enqueueBatch(@NotNull List<? extends Request> list, @Nullable Func<List<Z<DownloadInfo, Boolean>>> func);

    @NotNull
    Fetch freeze();

    @NotNull
    Fetch freeze(@Nullable Func<Boolean> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch getAllGroupIds(@NotNull Func<List<Integer>> func);

    @NotNull
    Fetch getContentLengthForRequest(@NotNull Request request, boolean z10, @NotNull Func<Long> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch getContentLengthForRequests(@NotNull List<? extends Request> list, boolean z10, @NotNull Func<List<Z<Request, Long>>> func, @NotNull Func<List<Z<Request, Error>>> func2);

    @NotNull
    Fetch getDownload(int i10, @NotNull Func2<Download> func2);

    @NotNull
    Fetch getDownloadBlocks(int i10, @NotNull Func<List<DownloadBlock>> func);

    @NotNull
    Fetch getDownloads(@NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloads(@NotNull List<Integer> list, @NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloadsByRequestIdentifier(long j10, @NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloadsByTag(@NotNull String str, @NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloadsInGroup(int i10, @NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloadsInGroupWithStatus(int i10, @NotNull List<? extends Status> list, @NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloadsWithStatus(@NotNull Status status, @NotNull Func<List<Download>> func);

    @NotNull
    Fetch getDownloadsWithStatus(@NotNull List<? extends Status> list, @NotNull Func<List<Download>> func);

    @NotNull
    FetchConfiguration getFetchConfiguration();

    @NotNull
    Fetch getFetchFileServerCatalog(@NotNull Request request, @NotNull Func<List<FileResource>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch getFetchGroup(int i10, @NotNull Func<FetchGroup> func);

    @NotNull
    Set<FetchListener> getListenerSet();

    @NotNull
    String getNamespace();

    @NotNull
    Fetch getServerResponse(@NotNull String str, @Nullable Map<String, String> map, @NotNull Func<Downloader.Response> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch hasActiveDownloads(boolean z10, @NotNull Func<Boolean> func);

    boolean isClosed();

    @NotNull
    Fetch pause(int i10);

    @NotNull
    Fetch pause(int i10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch pause(@NotNull List<Integer> list);

    @NotNull
    Fetch pause(@NotNull List<Integer> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch pauseAll();

    @NotNull
    Fetch pauseGroup(int i10);

    @NotNull
    Fetch pauseGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch remove(int i10);

    @NotNull
    Fetch remove(int i10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch remove(@NotNull List<Integer> list);

    @NotNull
    Fetch remove(@NotNull List<Integer> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch removeActiveDownloadsObserver(@NotNull FetchObserver<Boolean> fetchObserver);

    @NotNull
    Fetch removeAll();

    @NotNull
    Fetch removeAll(@Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch removeAllInGroupWithStatus(int i10, @NotNull List<? extends Status> list);

    @NotNull
    Fetch removeAllInGroupWithStatus(int i10, @NotNull List<? extends Status> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch removeAllWithStatus(@NotNull Status status);

    @NotNull
    Fetch removeAllWithStatus(@NotNull Status status, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch removeFetchObserversForDownload(int i10, @NotNull FetchObserver<Download>... fetchObserverArr);

    @NotNull
    Fetch removeGroup(int i10);

    @NotNull
    Fetch removeGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch removeListener(@NotNull FetchListener fetchListener);

    @NotNull
    Fetch renameCompletedDownloadFile(int i10, @NotNull String str, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch replaceExtras(int i10, @NotNull Extras extras, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch resetAutoRetryAttempts(int i10, boolean z10, @Nullable Func2<Download> func2, @Nullable Func<Error> func);

    @NotNull
    Fetch resume(int i10);

    @NotNull
    Fetch resume(int i10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch resume(@NotNull List<Integer> list);

    @NotNull
    Fetch resume(@NotNull List<Integer> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch resumeAll();

    @NotNull
    Fetch resumeGroup(int i10);

    @NotNull
    Fetch resumeGroup(int i10, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch retry(int i10);

    @NotNull
    Fetch retry(int i10, @Nullable Func<Download> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch retry(@NotNull List<Integer> list);

    @NotNull
    Fetch retry(@NotNull List<Integer> list, @Nullable Func<List<Download>> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch setDownloadConcurrentLimit(int i10);

    @NotNull
    Fetch setGlobalNetworkType(@NotNull NetworkType networkType);

    @NotNull
    Fetch unfreeze();

    @NotNull
    Fetch unfreeze(@Nullable Func<Boolean> func, @Nullable Func<Error> func2);

    @NotNull
    Fetch updateRequest(int i10, @NotNull Request request, boolean z10, @Nullable Func<Download> func, @Nullable Func<Error> func2);
}
