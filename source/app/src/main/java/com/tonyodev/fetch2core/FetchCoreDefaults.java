package com.tonyodev.fetch2core;

import Lf.j;
import org.jetbrains.annotations.NotNull;

@j(name = "FetchCoreDefaults")
public final class FetchCoreDefaults {
    public static final int DEFAULT_BUFFER_SIZE = 8192;
    public static final boolean DEFAULT_LOGGING_ENABLED = false;
    public static final long DEFAULT_PERSISTENT_TIME_OUT_IN_MILLISECONDS = 600000;
    public static final long DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS = 2000;

    @NotNull
    public static final String DEFAULT_TAG = "fetch2";
}
