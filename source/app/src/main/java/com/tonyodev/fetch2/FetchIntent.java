package com.tonyodev.fetch2;

import Lf.j;
import org.jetbrains.annotations.NotNull;

@j(name = "FetchIntent")
public final class FetchIntent {

    @NotNull
    public static final String ACTION_QUEUE_BACKOFF_RESET = "com.tonyodev.fetch2.action.QUEUE_BACKOFF_RESET";
    public static final int ACTION_TYPE_CANCEL = 4;
    public static final int ACTION_TYPE_CANCEL_ALL = 8;
    public static final int ACTION_TYPE_DELETE = 2;
    public static final int ACTION_TYPE_DELETE_ALL = 9;
    public static final int ACTION_TYPE_INVALID = -1;
    public static final int ACTION_TYPE_PAUSE = 0;
    public static final int ACTION_TYPE_PAUSE_ALL = 6;
    public static final int ACTION_TYPE_RESUME = 1;
    public static final int ACTION_TYPE_RESUME_ALL = 7;
    public static final int ACTION_TYPE_RETRY = 5;
    public static final int ACTION_TYPE_RETRY_ALL = 10;
    public static final int DOWNLOAD_ID_INVALID = -1;

    @NotNull
    public static final String EXTRA_ACTION_TYPE = "com.tonyodev.fetch2.extra.ACTION_TYPE";

    @NotNull
    public static final String EXTRA_DOWNLOAD_ID = "com.tonyodev.fetch2.extra.DOWNLOAD_ID";

    @NotNull
    public static final String EXTRA_DOWNLOAD_NOTIFICATIONS = "con.tonyodev.fetch2.extra.DOWNLOAD_NOTIFICATIONS";

    @NotNull
    public static final String EXTRA_GROUP_ACTION = "com.tonyodev.fetch2.extra.GROUP_ACTION";

    @NotNull
    public static final String EXTRA_NAMESPACE = "com.tonyodev.fetch2.extra.NAMESPACE";

    @NotNull
    public static final String EXTRA_NOTIFICATION_GROUP_ID = "com.tonyodev.fetch2.extra.NOTIFICATION_GROUP_ID";

    @NotNull
    public static final String EXTRA_NOTIFICATION_ID = "com.tonyodev.fetch2.extra.NOTIFICATION_ID";
    public static final int NOTIFICATION_GROUP_ID_INVALID = -1;
    public static final int NOTIFICATION_ID_INVALID = -1;
}
