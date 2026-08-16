package com.tonyodev.fetch2core;

import Lf.j;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import kotlin.TypeCastException;
import kotlin.jvm.internal.M;
import org.jetbrains.annotations.NotNull;

@j(name = "FetchAndroidExtensions")
public final class FetchAndroidExtensions {
    public static final boolean isNetworkAvailable(@NotNull Context isNetworkAvailable) {
        Boolean bool;
        M.q(isNetworkAvailable, "$this$isNetworkAvailable");
        Object systemService = isNetworkAvailable.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
        ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        boolean z10 = false;
        boolean z11 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        if (z11) {
            return z11;
        }
        NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
        if (allNetworkInfo != null) {
            int length = allNetworkInfo.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                NetworkInfo it = allNetworkInfo[i10];
                M.h(it, "it");
                if (it.isConnected()) {
                    z10 = true;
                    break;
                }
                i10++;
            }
            bool = Boolean.valueOf(z10);
        } else {
            bool = null;
        }
        return bool.booleanValue();
    }

    public static final boolean isOnMeteredConnection(@NotNull Context isOnMeteredConnection) {
        M.q(isOnMeteredConnection, "$this$isOnMeteredConnection");
        Object systemService = isOnMeteredConnection.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (systemService != null) {
            return ((ConnectivityManager) systemService).isActiveNetworkMetered();
        }
        throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
    }

    public static final boolean isOnWiFi(@NotNull Context isOnWiFi) {
        M.q(isOnWiFi, "$this$isOnWiFi");
        Object systemService = isOnWiFi.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (systemService == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.net.ConnectivityManager");
        }
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) systemService).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected() && activeNetworkInfo.getType() == 1;
    }
}
