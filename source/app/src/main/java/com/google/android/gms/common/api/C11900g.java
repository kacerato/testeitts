package com.google.android.gms.common.api;

import androidx.annotation.NonNull;

public class C11900g {

    public static final int f61072a = -1;

    public static final int f61073b = 0;

    @Deprecated
    public static final int f61074c = 2;

    @Deprecated
    public static final int f61075d = 3;

    public static final int f61076e = 4;

    public static final int f61077f = 5;

    public static final int f61078g = 6;

    public static final int f61079h = 7;

    public static final int f61080i = 8;

    public static final int f61081j = 10;

    public static final int f61082k = 13;

    public static final int f61083l = 14;

    public static final int f61084m = 15;

    public static final int f61085n = 16;

    public static final int f61086o = 17;

    public static final int f61087p = 19;

    public static final int f61088q = 20;

    public static final int f61089r = 21;

    public static final int f61090s = 22;

    @C0.a
    public C11900g() {
    }

    @NonNull
    public static String a(int i10) {
        switch (i10) {
            case -1:
                return "SUCCESS_CACHE";
            case 0:
                return "SUCCESS";
            case 1:
            case 9:
            case 11:
            case 12:
            default:
                return "unknown status code: " + i10;
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 10:
                return "DEVELOPER_ERROR";
            case 13:
                return "ERROR";
            case 14:
                return "INTERRUPTED";
            case 15:
                return "TIMEOUT";
            case 16:
                return "CANCELED";
            case 17:
                return "API_NOT_CONNECTED";
            case 18:
                return "DEAD_CLIENT";
            case 19:
                return "REMOTE_EXCEPTION";
            case 20:
                return "CONNECTION_SUSPENDED_DURING_CALL";
            case 21:
                return "RECONNECTION_TIMED_OUT_DURING_UPDATE";
            case 22:
                return "RECONNECTION_TIMED_OUT";
        }
    }
}
