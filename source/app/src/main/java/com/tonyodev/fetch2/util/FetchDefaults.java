package com.tonyodev.fetch2.util;

import Lf.j;
import com.tonyodev.fetch2.EnqueueAction;
import com.tonyodev.fetch2.Error;
import com.tonyodev.fetch2.FetchFileServerDownloader;
import com.tonyodev.fetch2.HttpUrlConnectionDownloader;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2.Priority;
import com.tonyodev.fetch2.PrioritySort;
import com.tonyodev.fetch2.Status;
import com.tonyodev.fetch2core.Downloader;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import com.tonyodev.fetch2core.FetchLogger;
import com.tonyodev.fetch2core.FileServerDownloader;
import com.tonyodev.fetch2core.Logger;
import org.jetbrains.annotations.NotNull;

@j(name = "FetchDefaults")
public final class FetchDefaults {
    public static final int DEFAULT_AUTO_RETRY_ATTEMPTS = 0;
    public static final boolean DEFAULT_AUTO_START = true;
    public static final int DEFAULT_CONCURRENT_LIMIT = 1;
    public static final boolean DEFAULT_CREATE_FILE_ON_ENQUEUE = true;
    public static final boolean DEFAULT_DOWNLOAD_ON_ENQUEUE = true;
    public static final long DEFAULT_DOWNLOAD_SPEED_REPORTING_INTERVAL_IN_MILLISECONDS = 1000;
    public static final boolean DEFAULT_ENABLE_LISTENER_AUTOSTART_ON_ATTACHED = false;
    public static final boolean DEFAULT_ENABLE_LISTENER_NOTIFY_ON_ATTACHED = false;
    public static final boolean DEFAULT_ENABLE_LISTENER_NOTIFY_ON_REQUEST_UPDATED = true;
    public static final boolean DEFAULT_FILE_EXIST_CHECKS = true;
    public static final int DEFAULT_FILE_SLICE_NO_LIMIT_SET = -1;
    public static final int DEFAULT_GLOBAL_AUTO_RETRY_ATTEMPTS = -1;
    public static final int DEFAULT_GROUP_ID = 0;
    public static final boolean DEFAULT_HASH_CHECK_ENABLED = false;
    public static final long DEFAULT_HAS_ACTIVE_DOWNLOADS_INTERVAL_IN_MILLISECONDS = 300000;

    @NotNull
    public static final String DEFAULT_INSTANCE_NAMESPACE = "LibGlobalFetchLib";
    public static final long DEFAULT_NOTIFICATION_TIMEOUT_AFTER = 10000;
    public static final long DEFAULT_NOTIFICATION_TIMEOUT_AFTER_RESET = 31104000000L;
    public static final boolean DEFAULT_PREALLOCATE_FILE_ON_CREATE = true;
    public static final long DEFAULT_PRIORITY_QUEUE_INTERVAL_IN_MILLISECONDS = 500;
    public static final boolean DEFAULT_RETRY_ON_NETWORK_GAIN = true;
    public static final long DEFAULT_UNIQUE_IDENTIFIER = 0;

    @NotNull
    public static final String EMPTY_JSON_OBJECT_STRING = "{}";

    @NotNull
    private static final NetworkType defaultNetworkType = NetworkType.ALL;

    @NotNull
    private static final NetworkType defaultGlobalNetworkType = NetworkType.GLOBAL_OFF;

    @NotNull
    private static final Priority defaultPriority = Priority.NORMAL;

    @NotNull
    private static final Error defaultNoError = Error.NONE;

    @NotNull
    private static final Status defaultStatus = Status.NONE;

    @NotNull
    private static final PrioritySort defaultPrioritySort = PrioritySort.ASC;

    @NotNull
    private static final EnqueueAction defaultEnqueueAction = EnqueueAction.UPDATE_ACCORDINGLY;

    @NotNull
    private static final Downloader<?, ?> defaultDownloader = new HttpUrlConnectionDownloader(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);

    @NotNull
    private static final FileServerDownloader defaultFileServerDownloader = new FetchFileServerDownloader(null, 0, 3, null);

    @NotNull
    private static final Logger defaultLogger = new FetchLogger(false, FetchCoreDefaults.DEFAULT_TAG);

    @NotNull
    public static final Downloader<?, ?> getDefaultDownloader() {
        return defaultDownloader;
    }

    @NotNull
    public static final EnqueueAction getDefaultEnqueueAction() {
        return defaultEnqueueAction;
    }

    @NotNull
    public static final FileServerDownloader getDefaultFileServerDownloader() {
        return defaultFileServerDownloader;
    }

    @NotNull
    public static final NetworkType getDefaultGlobalNetworkType() {
        return defaultGlobalNetworkType;
    }

    @NotNull
    public static final Logger getDefaultLogger() {
        return defaultLogger;
    }

    @NotNull
    public static final NetworkType getDefaultNetworkType() {
        return defaultNetworkType;
    }

    @NotNull
    public static final Error getDefaultNoError() {
        return defaultNoError;
    }

    @NotNull
    public static final Priority getDefaultPriority() {
        return defaultPriority;
    }

    @NotNull
    public static final PrioritySort getDefaultPrioritySort() {
        return defaultPrioritySort;
    }

    @NotNull
    public static final Status getDefaultStatus() {
        return defaultStatus;
    }
}
