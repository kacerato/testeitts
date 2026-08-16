package com.tonyodev.fetch2.fetch;

import android.os.Handler;
import android.os.Looper;
import com.tonyodev.fetch2.Download;
import com.tonyodev.fetch2.FetchConfiguration;
import com.tonyodev.fetch2.database.DownloadDatabase;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManager;
import com.tonyodev.fetch2.database.FetchDatabaseManagerImpl;
import com.tonyodev.fetch2.database.FetchDatabaseManagerWrapper;
import com.tonyodev.fetch2.downloader.DownloadManager;
import com.tonyodev.fetch2.downloader.DownloadManagerCoordinator;
import com.tonyodev.fetch2.downloader.DownloadManagerImpl;
import com.tonyodev.fetch2.helper.DownloadInfoUpdater;
import com.tonyodev.fetch2.helper.PriorityListProcessor;
import com.tonyodev.fetch2.helper.PriorityListProcessorImpl;
import com.tonyodev.fetch2.provider.DownloadProvider;
import com.tonyodev.fetch2.provider.GroupInfoProvider;
import com.tonyodev.fetch2.provider.NetworkInfoProvider;
import com.tonyodev.fetch2.util.FetchUtils;
import com.tonyodev.fetch2core.DefaultStorageResolver;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.HandlerWrapper;
import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FetchModulesBuilder {

    @NotNull
    public static final FetchModulesBuilder INSTANCE = new FetchModulesBuilder();

    @NotNull
    private static final Object lock = new Object();

    @NotNull
    private static final Map<String, Holder> holderMap = new LinkedHashMap();

    @NotNull
    private static final Handler mainUIHandler = new Handler(Looper.getMainLooper());

    public static final class Holder {

        @NotNull
        private final DownloadManagerCoordinator downloadManagerCoordinator;

        @NotNull
        private final DownloadProvider downloadProvider;

        @NotNull
        private final FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;

        @NotNull
        private final GroupInfoProvider groupInfoProvider;

        @NotNull
        private final HandlerWrapper handlerWrapper;

        @NotNull
        private final ListenerCoordinator listenerCoordinator;

        @NotNull
        private final NetworkInfoProvider networkInfoProvider;

        @NotNull
        private final Handler uiHandler;

        public Holder(@NotNull HandlerWrapper handlerWrapper, @NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper, @NotNull DownloadProvider downloadProvider, @NotNull GroupInfoProvider groupInfoProvider, @NotNull Handler uiHandler, @NotNull DownloadManagerCoordinator downloadManagerCoordinator, @NotNull ListenerCoordinator listenerCoordinator, @NotNull NetworkInfoProvider networkInfoProvider) {
            kotlin.jvm.internal.M.p(handlerWrapper, "handlerWrapper");
            kotlin.jvm.internal.M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
            kotlin.jvm.internal.M.p(downloadProvider, "downloadProvider");
            kotlin.jvm.internal.M.p(groupInfoProvider, "groupInfoProvider");
            kotlin.jvm.internal.M.p(uiHandler, "uiHandler");
            kotlin.jvm.internal.M.p(downloadManagerCoordinator, "downloadManagerCoordinator");
            kotlin.jvm.internal.M.p(listenerCoordinator, "listenerCoordinator");
            kotlin.jvm.internal.M.p(networkInfoProvider, "networkInfoProvider");
            this.handlerWrapper = handlerWrapper;
            this.fetchDatabaseManagerWrapper = fetchDatabaseManagerWrapper;
            this.downloadProvider = downloadProvider;
            this.groupInfoProvider = groupInfoProvider;
            this.uiHandler = uiHandler;
            this.downloadManagerCoordinator = downloadManagerCoordinator;
            this.listenerCoordinator = listenerCoordinator;
            this.networkInfoProvider = networkInfoProvider;
        }

        @NotNull
        public final HandlerWrapper component1() {
            return this.handlerWrapper;
        }

        @NotNull
        public final FetchDatabaseManagerWrapper component2() {
            return this.fetchDatabaseManagerWrapper;
        }

        @NotNull
        public final DownloadProvider component3() {
            return this.downloadProvider;
        }

        @NotNull
        public final GroupInfoProvider component4() {
            return this.groupInfoProvider;
        }

        @NotNull
        public final Handler component5() {
            return this.uiHandler;
        }

        @NotNull
        public final DownloadManagerCoordinator component6() {
            return this.downloadManagerCoordinator;
        }

        @NotNull
        public final ListenerCoordinator component7() {
            return this.listenerCoordinator;
        }

        @NotNull
        public final NetworkInfoProvider component8() {
            return this.networkInfoProvider;
        }

        @NotNull
        public final Holder copy(@NotNull HandlerWrapper handlerWrapper, @NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper, @NotNull DownloadProvider downloadProvider, @NotNull GroupInfoProvider groupInfoProvider, @NotNull Handler uiHandler, @NotNull DownloadManagerCoordinator downloadManagerCoordinator, @NotNull ListenerCoordinator listenerCoordinator, @NotNull NetworkInfoProvider networkInfoProvider) {
            kotlin.jvm.internal.M.p(handlerWrapper, "handlerWrapper");
            kotlin.jvm.internal.M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
            kotlin.jvm.internal.M.p(downloadProvider, "downloadProvider");
            kotlin.jvm.internal.M.p(groupInfoProvider, "groupInfoProvider");
            kotlin.jvm.internal.M.p(uiHandler, "uiHandler");
            kotlin.jvm.internal.M.p(downloadManagerCoordinator, "downloadManagerCoordinator");
            kotlin.jvm.internal.M.p(listenerCoordinator, "listenerCoordinator");
            kotlin.jvm.internal.M.p(networkInfoProvider, "networkInfoProvider");
            return new Holder(handlerWrapper, fetchDatabaseManagerWrapper, downloadProvider, groupInfoProvider, uiHandler, downloadManagerCoordinator, listenerCoordinator, networkInfoProvider);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Holder)) {
                return false;
            }
            Holder holder = (Holder) obj;
            return kotlin.jvm.internal.M.g(this.handlerWrapper, holder.handlerWrapper) && kotlin.jvm.internal.M.g(this.fetchDatabaseManagerWrapper, holder.fetchDatabaseManagerWrapper) && kotlin.jvm.internal.M.g(this.downloadProvider, holder.downloadProvider) && kotlin.jvm.internal.M.g(this.groupInfoProvider, holder.groupInfoProvider) && kotlin.jvm.internal.M.g(this.uiHandler, holder.uiHandler) && kotlin.jvm.internal.M.g(this.downloadManagerCoordinator, holder.downloadManagerCoordinator) && kotlin.jvm.internal.M.g(this.listenerCoordinator, holder.listenerCoordinator) && kotlin.jvm.internal.M.g(this.networkInfoProvider, holder.networkInfoProvider);
        }

        @NotNull
        public final DownloadManagerCoordinator getDownloadManagerCoordinator() {
            return this.downloadManagerCoordinator;
        }

        @NotNull
        public final DownloadProvider getDownloadProvider() {
            return this.downloadProvider;
        }

        @NotNull
        public final FetchDatabaseManagerWrapper getFetchDatabaseManagerWrapper() {
            return this.fetchDatabaseManagerWrapper;
        }

        @NotNull
        public final GroupInfoProvider getGroupInfoProvider() {
            return this.groupInfoProvider;
        }

        @NotNull
        public final HandlerWrapper getHandlerWrapper() {
            return this.handlerWrapper;
        }

        @NotNull
        public final ListenerCoordinator getListenerCoordinator() {
            return this.listenerCoordinator;
        }

        @NotNull
        public final NetworkInfoProvider getNetworkInfoProvider() {
            return this.networkInfoProvider;
        }

        @NotNull
        public final Handler getUiHandler() {
            return this.uiHandler;
        }

        public int hashCode() {
            return (((((((((((((this.handlerWrapper.hashCode() * 31) + this.fetchDatabaseManagerWrapper.hashCode()) * 31) + this.downloadProvider.hashCode()) * 31) + this.groupInfoProvider.hashCode()) * 31) + this.uiHandler.hashCode()) * 31) + this.downloadManagerCoordinator.hashCode()) * 31) + this.listenerCoordinator.hashCode()) * 31) + this.networkInfoProvider.hashCode();
        }

        @NotNull
        public String toString() {
            return "Holder(handlerWrapper=" + ((Object) this.handlerWrapper) + ", fetchDatabaseManagerWrapper=" + ((Object) this.fetchDatabaseManagerWrapper) + ", downloadProvider=" + ((Object) this.downloadProvider) + ", groupInfoProvider=" + ((Object) this.groupInfoProvider) + ", uiHandler=" + ((Object) this.uiHandler) + ", downloadManagerCoordinator=" + ((Object) this.downloadManagerCoordinator) + ", listenerCoordinator=" + ((Object) this.listenerCoordinator) + ", networkInfoProvider=" + ((Object) this.networkInfoProvider) + ")";
        }
    }

    public static final class Modules {

        @NotNull
        private final DownloadInfoUpdater downloadInfoUpdater;

        @NotNull
        private final DownloadManager downloadManager;

        @NotNull
        private final DownloadProvider downloadProvider;

        @NotNull
        private final FetchConfiguration fetchConfiguration;

        @NotNull
        private final FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper;

        @NotNull
        private final FetchHandler fetchHandler;

        @NotNull
        private final GroupInfoProvider groupInfoProvider;

        @NotNull
        private final HandlerWrapper handlerWrapper;

        @NotNull
        private final ListenerCoordinator listenerCoordinator;

        @NotNull
        private final NetworkInfoProvider networkInfoProvider;

        @NotNull
        private final PriorityListProcessor<Download> priorityListProcessor;

        @NotNull
        private final Handler uiHandler;

        public Modules(@NotNull FetchConfiguration fetchConfiguration, @NotNull HandlerWrapper handlerWrapper, @NotNull FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper, @NotNull DownloadProvider downloadProvider, @NotNull GroupInfoProvider groupInfoProvider, @NotNull Handler uiHandler, @NotNull DownloadManagerCoordinator downloadManagerCoordinator, @NotNull ListenerCoordinator listenerCoordinator) {
            kotlin.jvm.internal.M.p(fetchConfiguration, "fetchConfiguration");
            kotlin.jvm.internal.M.p(handlerWrapper, "handlerWrapper");
            kotlin.jvm.internal.M.p(fetchDatabaseManagerWrapper, "fetchDatabaseManagerWrapper");
            kotlin.jvm.internal.M.p(downloadProvider, "downloadProvider");
            kotlin.jvm.internal.M.p(groupInfoProvider, "groupInfoProvider");
            kotlin.jvm.internal.M.p(uiHandler, "uiHandler");
            kotlin.jvm.internal.M.p(downloadManagerCoordinator, "downloadManagerCoordinator");
            kotlin.jvm.internal.M.p(listenerCoordinator, "listenerCoordinator");
            this.fetchConfiguration = fetchConfiguration;
            this.handlerWrapper = handlerWrapper;
            this.fetchDatabaseManagerWrapper = fetchDatabaseManagerWrapper;
            this.downloadProvider = downloadProvider;
            this.groupInfoProvider = groupInfoProvider;
            this.uiHandler = uiHandler;
            this.listenerCoordinator = listenerCoordinator;
            DownloadInfoUpdater downloadInfoUpdater = new DownloadInfoUpdater(fetchDatabaseManagerWrapper);
            this.downloadInfoUpdater = downloadInfoUpdater;
            NetworkInfoProvider networkInfoProvider = new NetworkInfoProvider(fetchConfiguration.getAppContext(), fetchConfiguration.getInternetCheckUrl());
            this.networkInfoProvider = networkInfoProvider;
            DownloadManagerImpl downloadManagerImpl = new DownloadManagerImpl(fetchConfiguration.getHttpDownloader(), fetchConfiguration.getConcurrentLimit(), fetchConfiguration.getProgressReportingIntervalMillis(), fetchConfiguration.getLogger(), networkInfoProvider, fetchConfiguration.getRetryOnNetworkGain(), downloadInfoUpdater, downloadManagerCoordinator, listenerCoordinator, fetchConfiguration.getFileServerDownloader(), fetchConfiguration.getHashCheckingEnabled(), fetchConfiguration.getStorageResolver(), fetchConfiguration.getAppContext(), fetchConfiguration.getNamespace(), groupInfoProvider, fetchConfiguration.getMaxAutoRetryAttempts(), fetchConfiguration.getPreAllocateFileOnCreation());
            this.downloadManager = downloadManagerImpl;
            PriorityListProcessorImpl priorityListProcessorImpl = new PriorityListProcessorImpl(handlerWrapper, downloadProvider, downloadManagerImpl, networkInfoProvider, fetchConfiguration.getLogger(), listenerCoordinator, fetchConfiguration.getConcurrentLimit(), fetchConfiguration.getAppContext(), fetchConfiguration.getNamespace(), fetchConfiguration.getPrioritySort());
            this.priorityListProcessor = priorityListProcessorImpl;
            priorityListProcessorImpl.setGlobalNetworkType(fetchConfiguration.getGlobalNetworkType());
            FetchHandler fetchHandler = fetchConfiguration.getFetchHandler();
            this.fetchHandler = fetchHandler == null ? new FetchHandlerImpl(fetchConfiguration.getNamespace(), fetchDatabaseManagerWrapper, downloadManagerImpl, priorityListProcessorImpl, fetchConfiguration.getLogger(), fetchConfiguration.getAutoStart(), fetchConfiguration.getHttpDownloader(), fetchConfiguration.getFileServerDownloader(), listenerCoordinator, uiHandler, fetchConfiguration.getStorageResolver(), fetchConfiguration.getFetchNotificationManager(), groupInfoProvider, fetchConfiguration.getPrioritySort(), fetchConfiguration.getCreateFileOnEnqueue()) : fetchHandler;
            fetchDatabaseManagerWrapper.setDelegate(new FetchDatabaseManager.Delegate<DownloadInfo>() {
                @Override
                public void deleteTempFilesForDownload(@NotNull DownloadInfo downloadInfo) {
                    kotlin.jvm.internal.M.p(downloadInfo, "downloadInfo");
                    FetchUtils.deleteAllInFolderForId(downloadInfo.getId(), Modules.this.getFetchConfiguration().getStorageResolver().getDirectoryForFileDownloaderTypeParallel(FetchUtils.getRequestForDownload$default(downloadInfo, null, 2, null)));
                }
            });
        }

        @NotNull
        public final DownloadInfoUpdater getDownloadInfoUpdater() {
            return this.downloadInfoUpdater;
        }

        @NotNull
        public final DownloadManager getDownloadManager() {
            return this.downloadManager;
        }

        @NotNull
        public final DownloadProvider getDownloadProvider() {
            return this.downloadProvider;
        }

        @NotNull
        public final FetchConfiguration getFetchConfiguration() {
            return this.fetchConfiguration;
        }

        @NotNull
        public final FetchDatabaseManagerWrapper getFetchDatabaseManagerWrapper() {
            return this.fetchDatabaseManagerWrapper;
        }

        @NotNull
        public final FetchHandler getFetchHandler() {
            return this.fetchHandler;
        }

        @NotNull
        public final GroupInfoProvider getGroupInfoProvider() {
            return this.groupInfoProvider;
        }

        @NotNull
        public final HandlerWrapper getHandlerWrapper() {
            return this.handlerWrapper;
        }

        @NotNull
        public final ListenerCoordinator getListenerCoordinator() {
            return this.listenerCoordinator;
        }

        @NotNull
        public final NetworkInfoProvider getNetworkInfoProvider() {
            return this.networkInfoProvider;
        }

        @NotNull
        public final PriorityListProcessor<Download> getPriorityListProcessor() {
            return this.priorityListProcessor;
        }

        @NotNull
        public final Handler getUiHandler() {
            return this.uiHandler;
        }
    }

    private FetchModulesBuilder() {
    }

    @NotNull
    public final Modules buildModulesFromPrefs(@NotNull FetchConfiguration fetchConfiguration) {
        Modules modules;
        kotlin.jvm.internal.M.p(fetchConfiguration, "fetchConfiguration");
        synchronized (lock) {
            try {
                Map<String, Holder> map = holderMap;
                Holder holder = map.get(fetchConfiguration.getNamespace());
                if (holder != null) {
                    modules = new Modules(fetchConfiguration, holder.getHandlerWrapper(), holder.getFetchDatabaseManagerWrapper(), holder.getDownloadProvider(), holder.getGroupInfoProvider(), holder.getUiHandler(), holder.getDownloadManagerCoordinator(), holder.getListenerCoordinator());
                } else {
                    HandlerWrapper handlerWrapper = new HandlerWrapper(fetchConfiguration.getNamespace(), fetchConfiguration.getBackgroundHandler());
                    LiveSettings liveSettings = new LiveSettings(fetchConfiguration.getNamespace());
                    FetchDatabaseManager<DownloadInfo> fetchDatabaseManager = fetchConfiguration.getFetchDatabaseManager();
                    if (fetchDatabaseManager == null) {
                        fetchDatabaseManager = new FetchDatabaseManagerImpl(fetchConfiguration.getAppContext(), fetchConfiguration.getNamespace(), fetchConfiguration.getLogger(), DownloadDatabase.Companion.getMigrations(), liveSettings, fetchConfiguration.getFileExistChecksEnabled(), new DefaultStorageResolver(fetchConfiguration.getAppContext(), FetchCoreUtils.getFileTempDir(fetchConfiguration.getAppContext())));
                    }
                    FetchDatabaseManagerWrapper fetchDatabaseManagerWrapper = new FetchDatabaseManagerWrapper(fetchDatabaseManager);
                    DownloadProvider downloadProvider = new DownloadProvider(fetchDatabaseManagerWrapper);
                    DownloadManagerCoordinator downloadManagerCoordinator = new DownloadManagerCoordinator(fetchConfiguration.getNamespace());
                    GroupInfoProvider groupInfoProvider = new GroupInfoProvider(fetchConfiguration.getNamespace(), downloadProvider);
                    String namespace = fetchConfiguration.getNamespace();
                    Handler handler = mainUIHandler;
                    ListenerCoordinator listenerCoordinator = new ListenerCoordinator(namespace, groupInfoProvider, downloadProvider, handler);
                    Modules modules2 = new Modules(fetchConfiguration, handlerWrapper, fetchDatabaseManagerWrapper, downloadProvider, groupInfoProvider, handler, downloadManagerCoordinator, listenerCoordinator);
                    map.put(fetchConfiguration.getNamespace(), new Holder(handlerWrapper, fetchDatabaseManagerWrapper, downloadProvider, groupInfoProvider, handler, downloadManagerCoordinator, listenerCoordinator, modules2.getNetworkInfoProvider()));
                    modules = modules2;
                }
                modules.getHandlerWrapper().incrementUsageCounter();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return modules;
    }

    @NotNull
    public final Handler getMainUIHandler() {
        return mainUIHandler;
    }

    public final void removeNamespaceInstanceReference(@NotNull String namespace) {
        kotlin.jvm.internal.M.p(namespace, "namespace");
        synchronized (lock) {
            try {
                Map<String, Holder> map = holderMap;
                Holder holder = map.get(namespace);
                if (holder != null) {
                    holder.getHandlerWrapper().decrementUsageCounter();
                    if (holder.getHandlerWrapper().usageCount() == 0) {
                        holder.getHandlerWrapper().close();
                        holder.getListenerCoordinator().clearAll();
                        holder.getGroupInfoProvider().clear();
                        holder.getFetchDatabaseManagerWrapper().close();
                        holder.getDownloadManagerCoordinator().clearAll();
                        holder.getNetworkInfoProvider().unregisterAllNetworkChangeListeners();
                        map.remove(namespace);
                    }
                }
                nf.P0 p02 = nf.P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
