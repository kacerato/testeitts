package com.tonyodev.fetch2;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.tonyodev.fetch2.database.DownloadInfo;
import com.tonyodev.fetch2.database.FetchDatabaseManager;
import com.tonyodev.fetch2.exception.FetchException;
import com.tonyodev.fetch2.fetch.FetchHandler;
import com.tonyodev.fetch2.util.FetchDefaults;
import com.tonyodev.fetch2core.DefaultStorageResolver;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import com.tonyodev.fetch2core.FetchCoreUtils;
import com.tonyodev.fetch2core.FetchLogger;
import com.tonyodev.fetch2core.FileServerDownloader;
import com.tonyodev.fetch2core.Logger;
import com.tonyodev.fetch2core.StorageResolver;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

public final class FetchConfiguration {
    private final long activeDownloadsCheckInterval;

    @NotNull
    private final Context appContext;
    private final boolean autoStart;

    @Nullable
    private final Handler backgroundHandler;
    private final int concurrentLimit;
    private final boolean createFileOnEnqueue;

    @Nullable
    private final FetchDatabaseManager<DownloadInfo> fetchDatabaseManager;

    @Nullable
    private final FetchHandler fetchHandler;

    @Nullable
    private final FetchNotificationManager fetchNotificationManager;
    private final boolean fileExistChecksEnabled;

    @NotNull
    private final FileServerDownloader fileServerDownloader;

    @NotNull
    private final NetworkType globalNetworkType;
    private final boolean hashCheckingEnabled;

    @NotNull
    private final Downloader<?, ?> httpDownloader;

    @Nullable
    private final String internetCheckUrl;

    @NotNull
    private final Logger logger;
    private final boolean loggingEnabled;
    private final int maxAutoRetryAttempts;

    @NotNull
    private final String namespace;
    private final boolean preAllocateFileOnCreation;

    @NotNull
    private final PrioritySort prioritySort;
    private final long progressReportingIntervalMillis;
    private final boolean retryOnNetworkGain;

    @NotNull
    private final StorageResolver storageResolver;

    public static final class Builder {
        private long activeDownloadCheckInterval;
        private final Context appContext;
        private boolean autoStart;

        @Nullable
        private Handler backgroundHandler;
        private int concurrentLimit;
        private boolean createFileOnEnqueue;

        @Nullable
        private FetchDatabaseManager<DownloadInfo> fetchDatabaseManager;

        @Nullable
        private FetchHandler fetchHandler;

        @Nullable
        private FetchNotificationManager fetchNotificationManager;
        private boolean fileExistChecksEnabled;

        @NotNull
        private FileServerDownloader fileServerDownloader;

        @NotNull
        private NetworkType globalNetworkType;
        private boolean hashCheckEnabled;

        @NotNull
        private Downloader<?, ?> httpDownloader;

        @Nullable
        private String internetCheckUrl;

        @NotNull
        private Logger logger;
        private boolean loggingEnabled;
        private int maxAutoRetryAttempts;

        @NotNull
        private String namespace;
        private boolean preAllocateFileOnCreation;

        @NotNull
        private PrioritySort prioritySort;
        private long progressReportingIntervalMillis;
        private boolean retryOnNetworkGain;

        @NotNull
        private StorageResolver storageResolver;

        public Builder(@NotNull Context context) {
            M.p(context, "context");
            Context appContext = context.getApplicationContext();
            this.appContext = appContext;
            this.namespace = FetchDefaults.DEFAULT_INSTANCE_NAMESPACE;
            this.concurrentLimit = 1;
            this.progressReportingIntervalMillis = FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS;
            this.httpDownloader = FetchDefaults.getDefaultDownloader();
            this.globalNetworkType = FetchDefaults.getDefaultGlobalNetworkType();
            this.logger = FetchDefaults.getDefaultLogger();
            this.autoStart = true;
            this.retryOnNetworkGain = true;
            this.fileServerDownloader = FetchDefaults.getDefaultFileServerDownloader();
            this.fileExistChecksEnabled = true;
            M.o(appContext, "appContext");
            M.o(appContext, "appContext");
            this.storageResolver = new DefaultStorageResolver(appContext, FetchCoreUtils.getFileTempDir(appContext));
            this.prioritySort = FetchDefaults.getDefaultPrioritySort();
            this.activeDownloadCheckInterval = 300000L;
            this.createFileOnEnqueue = true;
            this.maxAutoRetryAttempts = -1;
            this.preAllocateFileOnCreation = true;
        }

        public static Builder setNamespace$default(Builder builder, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = null;
            }
            return builder.setNamespace(str);
        }

        @NotNull
        public final FetchConfiguration build() {
            Logger logger = this.logger;
            if (logger instanceof FetchLogger) {
                logger.setEnabled(this.loggingEnabled);
                FetchLogger fetchLogger = (FetchLogger) logger;
                if (M.g(fetchLogger.getTag(), FetchCoreDefaults.DEFAULT_TAG)) {
                    fetchLogger.setTag(this.namespace);
                }
            } else {
                logger.setEnabled(this.loggingEnabled);
            }
            Context appContext = this.appContext;
            M.o(appContext, "appContext");
            return new FetchConfiguration(appContext, this.namespace, this.concurrentLimit, this.progressReportingIntervalMillis, this.loggingEnabled, this.httpDownloader, this.globalNetworkType, logger, this.autoStart, this.retryOnNetworkGain, this.fileServerDownloader, this.hashCheckEnabled, this.fileExistChecksEnabled, this.storageResolver, this.fetchNotificationManager, this.fetchDatabaseManager, this.backgroundHandler, this.prioritySort, this.internetCheckUrl, this.activeDownloadCheckInterval, this.createFileOnEnqueue, this.maxAutoRetryAttempts, this.preAllocateFileOnCreation, this.fetchHandler, null);
        }

        @NotNull
        public final Builder createDownloadFileOnEnqueue(boolean z10) {
            this.createFileOnEnqueue = z10;
            return this;
        }

        @NotNull
        public final Builder enableAutoStart(boolean z10) {
            this.autoStart = z10;
            return this;
        }

        @NotNull
        public final Builder enableFileExistChecks(boolean z10) {
            this.fileExistChecksEnabled = z10;
            return this;
        }

        @NotNull
        public final Builder enableHashCheck(boolean z10) {
            this.hashCheckEnabled = z10;
            return this;
        }

        @NotNull
        public final Builder enableLogging(boolean z10) {
            this.loggingEnabled = z10;
            return this;
        }

        @NotNull
        public final Builder enableRetryOnNetworkGain(boolean z10) {
            this.retryOnNetworkGain = z10;
            return this;
        }

        @NotNull
        public final Builder preAllocateFileOnCreation(boolean z10) {
            this.preAllocateFileOnCreation = z10;
            return this;
        }

        @NotNull
        public final Builder setAutoRetryMaxAttempts(int i10) {
            if (i10 < 0) {
                throw new IllegalArgumentException("The AutoRetryMaxAttempts has to be greater than -1");
            }
            this.maxAutoRetryAttempts = i10;
            return this;
        }

        @NotNull
        public final Builder setBackgroundHandler(@NotNull Handler handler) {
            M.p(handler, "handler");
            if (M.g(handler.getLooper().getThread(), Looper.getMainLooper().getThread())) {
                throw new IllegalAccessException("The background handler cannot use the main/ui thread");
            }
            this.backgroundHandler = handler;
            return this;
        }

        @NotNull
        public final Builder setDatabaseManager(@Nullable FetchDatabaseManager<DownloadInfo> fetchDatabaseManager) {
            this.fetchDatabaseManager = fetchDatabaseManager;
            return this;
        }

        @NotNull
        public final Builder setDownloadConcurrentLimit(int i10) {
            if (i10 < 0) {
                throw new FetchException("Concurrent limit cannot be less than 0");
            }
            this.concurrentLimit = i10;
            return this;
        }

        @NotNull
        public final Builder setFetchHandler(@NotNull FetchHandler fetchHandler) {
            M.p(fetchHandler, "fetchHandler");
            this.fetchHandler = fetchHandler;
            return this;
        }

        @NotNull
        public final Builder setFileServerDownloader(@NotNull FileServerDownloader fileServerDownloader) {
            M.p(fileServerDownloader, "fileServerDownloader");
            this.fileServerDownloader = fileServerDownloader;
            return this;
        }

        @NotNull
        public final Builder setGlobalNetworkType(@NotNull NetworkType networkType) {
            M.p(networkType, "networkType");
            this.globalNetworkType = networkType;
            return this;
        }

        @NotNull
        public final Builder setHasActiveDownloadsCheckInterval(long j10) {
            if (j10 < 0) {
                throw new FetchException("intervalInMillis cannot be less than 0");
            }
            this.activeDownloadCheckInterval = j10;
            return this;
        }

        @NotNull
        public final Builder setHttpDownloader(@NotNull Downloader<?, ?> downloader) {
            M.p(downloader, "downloader");
            this.httpDownloader = downloader;
            return this;
        }

        @NotNull
        public final Builder setInternetAccessUrlCheck(@Nullable String str) {
            this.internetCheckUrl = str;
            return this;
        }

        @NotNull
        public final Builder setLogger(@NotNull Logger logger) {
            M.p(logger, "logger");
            this.logger = logger;
            return this;
        }

        @NotNull
        public final Builder setNamespace(@Nullable String str) {
            if (str == null || str.length() == 0) {
                str = FetchDefaults.DEFAULT_INSTANCE_NAMESPACE;
            }
            this.namespace = str;
            return this;
        }

        @NotNull
        public final Builder setNotificationManager(@Nullable FetchNotificationManager fetchNotificationManager) {
            this.fetchNotificationManager = fetchNotificationManager;
            return this;
        }

        @NotNull
        public final Builder setPrioritySort(@NotNull PrioritySort prioritySort) {
            M.p(prioritySort, "prioritySort");
            this.prioritySort = prioritySort;
            return this;
        }

        @NotNull
        public final Builder setProgressReportingInterval(long j10) {
            if (j10 < 0) {
                throw new FetchException("progressReportingIntervalMillis cannot be less than 0");
            }
            this.progressReportingIntervalMillis = j10;
            return this;
        }

        @NotNull
        public final Builder setStorageResolver(@NotNull StorageResolver storageResolver) {
            M.p(storageResolver, "storageResolver");
            this.storageResolver = storageResolver;
            return this;
        }
    }

    public FetchConfiguration(Context context, String str, int i10, long j10, boolean z10, Downloader downloader, NetworkType networkType, Logger logger, boolean z11, boolean z12, FileServerDownloader fileServerDownloader, boolean z13, boolean z14, StorageResolver storageResolver, FetchNotificationManager fetchNotificationManager, FetchDatabaseManager fetchDatabaseManager, Handler handler, PrioritySort prioritySort, String str2, long j11, boolean z15, int i11, boolean z16, FetchHandler fetchHandler, C14026x c14026x) {
        this(context, str, i10, j10, z10, downloader, networkType, logger, z11, z12, fileServerDownloader, z13, z14, storageResolver, fetchNotificationManager, fetchDatabaseManager, handler, prioritySort, str2, j11, z15, i11, z16, fetchHandler);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!M.g(FetchConfiguration.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        M.n(obj, "null cannot be cast to non-null type com.tonyodev.fetch2.FetchConfiguration");
        FetchConfiguration fetchConfiguration = (FetchConfiguration) obj;
        return M.g(this.appContext, fetchConfiguration.appContext) && M.g(this.namespace, fetchConfiguration.namespace) && this.concurrentLimit == fetchConfiguration.concurrentLimit && this.progressReportingIntervalMillis == fetchConfiguration.progressReportingIntervalMillis && this.loggingEnabled == fetchConfiguration.loggingEnabled && M.g(this.httpDownloader, fetchConfiguration.httpDownloader) && this.globalNetworkType == fetchConfiguration.globalNetworkType && M.g(this.logger, fetchConfiguration.logger) && this.autoStart == fetchConfiguration.autoStart && this.retryOnNetworkGain == fetchConfiguration.retryOnNetworkGain && M.g(this.fileServerDownloader, fetchConfiguration.fileServerDownloader) && this.hashCheckingEnabled == fetchConfiguration.hashCheckingEnabled && this.fileExistChecksEnabled == fetchConfiguration.fileExistChecksEnabled && M.g(this.storageResolver, fetchConfiguration.storageResolver) && M.g(this.fetchNotificationManager, fetchConfiguration.fetchNotificationManager) && M.g(this.fetchDatabaseManager, fetchConfiguration.fetchDatabaseManager) && M.g(this.backgroundHandler, fetchConfiguration.backgroundHandler) && this.prioritySort == fetchConfiguration.prioritySort && M.g(this.internetCheckUrl, fetchConfiguration.internetCheckUrl) && this.activeDownloadsCheckInterval == fetchConfiguration.activeDownloadsCheckInterval && this.createFileOnEnqueue == fetchConfiguration.createFileOnEnqueue && this.maxAutoRetryAttempts == fetchConfiguration.maxAutoRetryAttempts && this.preAllocateFileOnCreation == fetchConfiguration.preAllocateFileOnCreation && M.g(this.fetchHandler, fetchConfiguration.fetchHandler);
    }

    public final long getActiveDownloadsCheckInterval() {
        return this.activeDownloadsCheckInterval;
    }

    @NotNull
    public final Context getAppContext() {
        return this.appContext;
    }

    public final boolean getAutoStart() {
        return this.autoStart;
    }

    @Nullable
    public final Handler getBackgroundHandler() {
        return this.backgroundHandler;
    }

    public final int getConcurrentLimit() {
        return this.concurrentLimit;
    }

    public final boolean getCreateFileOnEnqueue() {
        return this.createFileOnEnqueue;
    }

    @Nullable
    public final FetchDatabaseManager<DownloadInfo> getFetchDatabaseManager() {
        return this.fetchDatabaseManager;
    }

    @Nullable
    public final FetchHandler getFetchHandler() {
        return this.fetchHandler;
    }

    @Nullable
    public final FetchNotificationManager getFetchNotificationManager() {
        return this.fetchNotificationManager;
    }

    public final boolean getFileExistChecksEnabled() {
        return this.fileExistChecksEnabled;
    }

    @NotNull
    public final FileServerDownloader getFileServerDownloader() {
        return this.fileServerDownloader;
    }

    @NotNull
    public final NetworkType getGlobalNetworkType() {
        return this.globalNetworkType;
    }

    public final boolean getHashCheckingEnabled() {
        return this.hashCheckingEnabled;
    }

    @NotNull
    public final Downloader<?, ?> getHttpDownloader() {
        return this.httpDownloader;
    }

    @Nullable
    public final String getInternetCheckUrl() {
        return this.internetCheckUrl;
    }

    @NotNull
    public final Logger getLogger() {
        return this.logger;
    }

    public final boolean getLoggingEnabled() {
        return this.loggingEnabled;
    }

    public final int getMaxAutoRetryAttempts() {
        return this.maxAutoRetryAttempts;
    }

    @NotNull
    public final String getNamespace() {
        return this.namespace;
    }

    @NotNull
    public final Fetch getNewFetchInstanceFromConfiguration() {
        return Fetch.Impl.getInstance(this);
    }

    public final boolean getPreAllocateFileOnCreation() {
        return this.preAllocateFileOnCreation;
    }

    @NotNull
    public final PrioritySort getPrioritySort() {
        return this.prioritySort;
    }

    public final long getProgressReportingIntervalMillis() {
        return this.progressReportingIntervalMillis;
    }

    public final boolean getRetryOnNetworkGain() {
        return this.retryOnNetworkGain;
    }

    @NotNull
    public final StorageResolver getStorageResolver() {
        return this.storageResolver;
    }

    public int hashCode() {
        int hashCode = (((((((((((((((((((((((((this.appContext.hashCode() * 31) + this.namespace.hashCode()) * 31) + this.concurrentLimit) * 31) + Long.hashCode(this.progressReportingIntervalMillis)) * 31) + Boolean.hashCode(this.loggingEnabled)) * 31) + this.httpDownloader.hashCode()) * 31) + this.globalNetworkType.hashCode()) * 31) + this.logger.hashCode()) * 31) + Boolean.hashCode(this.autoStart)) * 31) + Boolean.hashCode(this.retryOnNetworkGain)) * 31) + this.fileServerDownloader.hashCode()) * 31) + Boolean.hashCode(this.hashCheckingEnabled)) * 31) + Boolean.hashCode(this.fileExistChecksEnabled)) * 31) + this.storageResolver.hashCode();
        FetchNotificationManager fetchNotificationManager = this.fetchNotificationManager;
        if (fetchNotificationManager != null) {
            hashCode = (hashCode * 31) + fetchNotificationManager.hashCode();
        }
        FetchDatabaseManager<DownloadInfo> fetchDatabaseManager = this.fetchDatabaseManager;
        if (fetchDatabaseManager != null) {
            hashCode = (hashCode * 31) + fetchDatabaseManager.hashCode();
        }
        Handler handler = this.backgroundHandler;
        if (handler != null) {
            hashCode = (hashCode * 31) + handler.hashCode();
        }
        FetchHandler fetchHandler = this.fetchHandler;
        if (fetchHandler != null) {
            hashCode = (hashCode * 31) + fetchHandler.hashCode();
        }
        int hashCode2 = (hashCode * 31) + this.prioritySort.hashCode();
        String str = this.internetCheckUrl;
        if (str != null) {
            hashCode2 = (hashCode2 * 31) + str.hashCode();
        }
        return (((((((hashCode2 * 31) + Long.hashCode(this.activeDownloadsCheckInterval)) * 31) + Boolean.hashCode(this.createFileOnEnqueue)) * 31) + Integer.hashCode(this.maxAutoRetryAttempts)) * 31) + Boolean.hashCode(this.preAllocateFileOnCreation);
    }

    @NotNull
    public String toString() {
        Context context = this.appContext;
        String str = this.namespace;
        int i10 = this.concurrentLimit;
        long j10 = this.progressReportingIntervalMillis;
        boolean z10 = this.loggingEnabled;
        Downloader<?, ?> downloader = this.httpDownloader;
        NetworkType networkType = this.globalNetworkType;
        Logger logger = this.logger;
        boolean z11 = this.autoStart;
        boolean z12 = this.retryOnNetworkGain;
        FileServerDownloader fileServerDownloader = this.fileServerDownloader;
        boolean z13 = this.hashCheckingEnabled;
        boolean z14 = this.fileExistChecksEnabled;
        StorageResolver storageResolver = this.storageResolver;
        FetchNotificationManager fetchNotificationManager = this.fetchNotificationManager;
        FetchDatabaseManager<DownloadInfo> fetchDatabaseManager = this.fetchDatabaseManager;
        Handler handler = this.backgroundHandler;
        PrioritySort prioritySort = this.prioritySort;
        return "FetchConfiguration(appContext=" + ((Object) context) + ", namespace='" + str + "', concurrentLimit=" + i10 + ", progressReportingIntervalMillis=" + j10 + ", loggingEnabled=" + z10 + ", httpDownloader=" + ((Object) downloader) + ", globalNetworkType=" + ((Object) networkType) + ", logger=" + ((Object) logger) + ", autoStart=" + z11 + ", retryOnNetworkGain=" + z12 + ", fileServerDownloader=" + ((Object) fileServerDownloader) + ", hashCheckingEnabled=" + z13 + ", fileExistChecksEnabled=" + z14 + ", storageResolver=" + ((Object) storageResolver) + ", fetchNotificationManager=" + ((Object) fetchNotificationManager) + ", fetchDatabaseManager=" + ((Object) fetchDatabaseManager) + ", backgroundHandler=" + ((Object) handler) + ", prioritySort=" + ((Object) prioritySort) + ", internetCheckUrl=" + this.internetCheckUrl + ", activeDownloadsCheckInterval=" + this.activeDownloadsCheckInterval + ", createFileOnEnqueue=" + this.createFileOnEnqueue + ", preAllocateFileOnCreation=" + this.preAllocateFileOnCreation + ", maxAutoRetryAttempts=" + this.maxAutoRetryAttempts + ", fetchHandler=" + ((Object) this.fetchHandler) + ")";
    }

    private FetchConfiguration(Context context, String str, int i10, long j10, boolean z10, Downloader<?, ?> downloader, NetworkType networkType, Logger logger, boolean z11, boolean z12, FileServerDownloader fileServerDownloader, boolean z13, boolean z14, StorageResolver storageResolver, FetchNotificationManager fetchNotificationManager, FetchDatabaseManager<DownloadInfo> fetchDatabaseManager, Handler handler, PrioritySort prioritySort, String str2, long j11, boolean z15, int i11, boolean z16, FetchHandler fetchHandler) {
        this.appContext = context;
        this.namespace = str;
        this.concurrentLimit = i10;
        this.progressReportingIntervalMillis = j10;
        this.loggingEnabled = z10;
        this.httpDownloader = downloader;
        this.globalNetworkType = networkType;
        this.logger = logger;
        this.autoStart = z11;
        this.retryOnNetworkGain = z12;
        this.fileServerDownloader = fileServerDownloader;
        this.hashCheckingEnabled = z13;
        this.fileExistChecksEnabled = z14;
        this.storageResolver = storageResolver;
        this.fetchNotificationManager = fetchNotificationManager;
        this.fetchDatabaseManager = fetchDatabaseManager;
        this.backgroundHandler = handler;
        this.prioritySort = prioritySort;
        this.internetCheckUrl = str2;
        this.activeDownloadsCheckInterval = j11;
        this.createFileOnEnqueue = z15;
        this.maxAutoRetryAttempts = i11;
        this.preAllocateFileOnCreation = z16;
        this.fetchHandler = fetchHandler;
    }
}
