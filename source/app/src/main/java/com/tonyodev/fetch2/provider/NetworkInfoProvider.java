package com.tonyodev.fetch2.provider;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Build;
import com.tonyodev.fetch2.NetworkType;
import com.tonyodev.fetch2core.FetchAndroidExtensions;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.HashSet;
import java.util.Iterator;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.t0;
import nf.P0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@t0({"SMAP\nNetworkInfoProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NetworkInfoProvider.kt\ncom/tonyodev/fetch2/provider/NetworkInfoProvider\n+ 2 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,145:1\n32#2,2:146\n*S KotlinDebug\n*F\n+ 1 NetworkInfoProvider.kt\ncom/tonyodev/fetch2/provider/NetworkInfoProvider\n*L\n69#1:146,2\n*E\n"})
public final class NetworkInfoProvider {
    private boolean broadcastRegistered;

    @Nullable
    private final ConnectivityManager connectivityManager;

    @NotNull
    private final Context context;

    @Nullable
    private final String internetCheckUrl;

    @NotNull
    private final Object lock;

    @Nullable
    private Object networkCallback;

    @NotNull
    private final BroadcastReceiver networkChangeBroadcastReceiver;

    @NotNull
    private final HashSet<NetworkChangeListener> networkChangeListenerSet;

    public interface NetworkChangeListener {
        void onNetworkChanged();
    }

    public NetworkInfoProvider(@NotNull Context context, @Nullable String str) {
        M.p(context, "context");
        this.context = context;
        this.internetCheckUrl = str;
        this.lock = new Object();
        this.networkChangeListenerSet = new HashSet<>();
        Object systemService = context.getSystemService(Context.CONNECTIVITY_SERVICE);
        ConnectivityManager connectivityManager = systemService instanceof ConnectivityManager ? (ConnectivityManager) systemService : null;
        this.connectivityManager = connectivityManager;
        BroadcastReceiver broadcastReceiver = new BroadcastReceiver() {
            @Override
            public void onReceive(@Nullable Context context2, @Nullable Intent intent) {
                NetworkInfoProvider.this.notifyNetworkChangeListeners();
            }
        };
        this.networkChangeBroadcastReceiver = broadcastReceiver;
        int i10 = Build.VERSION.SDK_INT;
        if (connectivityManager != null) {
            NetworkRequest build = new NetworkRequest.Builder().addTransportType(0).addTransportType(1).addTransportType(3).build();
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() {
                @Override
                public void onAvailable(@NotNull Network network) {
                    M.p(network, "network");
                    NetworkInfoProvider.this.notifyNetworkChangeListeners();
                }

                @Override
                public void onLost(@NotNull Network network) {
                    M.p(network, "network");
                    NetworkInfoProvider.this.notifyNetworkChangeListeners();
                }
            };
            this.networkCallback = networkCallback;
            connectivityManager.registerNetworkCallback(build, networkCallback);
            return;
        }
        try {
            if (i10 >= 33) {
                context.registerReceiver(broadcastReceiver, new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION), 2);
            } else {
                context.registerReceiver(broadcastReceiver, new IntentFilter(ConnectivityManager.CONNECTIVITY_ACTION));
            }
            this.broadcastRegistered = true;
        } catch (Exception unused) {
        }
    }

    public final void notifyNetworkChangeListeners() {
        synchronized (this.lock) {
            try {
                Iterator<NetworkChangeListener> it = this.networkChangeListenerSet.iterator();
                M.o(it, "iterator(...)");
                while (it.hasNext()) {
                    it.next().onNetworkChanged();
                }
                P0 p02 = P0.f98194a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final boolean isNetworkAvailable() {
        String str = this.internetCheckUrl;
        if (str == null) {
            return FetchAndroidExtensions.isNetworkAvailable(this.context);
        }
        try {
            URLConnection openConnection = new URL(str).openConnection();
            M.n(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(20000);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setDefaultUseCaches(false);
            httpURLConnection.connect();
            return httpURLConnection.getResponseCode() != -1;
        } catch (Exception unused) {
            return false;
        }
    }

    public final boolean isOnAllowedNetwork(@NotNull NetworkType networkType) {
        M.p(networkType, "networkType");
        if (networkType == NetworkType.WIFI_ONLY && FetchAndroidExtensions.isOnWiFi(this.context)) {
            return true;
        }
        if (networkType != NetworkType.UNMETERED || FetchAndroidExtensions.isOnMeteredConnection(this.context)) {
            return networkType == NetworkType.ALL && FetchAndroidExtensions.isNetworkAvailable(this.context);
        }
        return true;
    }

    public final void registerNetworkChangeListener(@NotNull NetworkChangeListener networkChangeListener) {
        M.p(networkChangeListener, "networkChangeListener");
        synchronized (this.lock) {
            this.networkChangeListenerSet.add(networkChangeListener);
        }
    }

    public final void unregisterAllNetworkChangeListeners() {
        synchronized (this.lock) {
            this.networkChangeListenerSet.clear();
            if (this.broadcastRegistered) {
                try {
                    this.context.unregisterReceiver(this.networkChangeBroadcastReceiver);
                } catch (Exception unused) {
                }
            }
            ConnectivityManager connectivityManager = this.connectivityManager;
            if (connectivityManager != null) {
                Object obj = this.networkCallback;
                if (obj instanceof ConnectivityManager.NetworkCallback) {
                    connectivityManager.unregisterNetworkCallback((ConnectivityManager.NetworkCallback) obj);
                }
            }
            P0 p02 = P0.f98194a;
        }
    }

    public final void unregisterNetworkChangeListener(@NotNull NetworkChangeListener networkChangeListener) {
        M.p(networkChangeListener, "networkChangeListener");
        synchronized (this.lock) {
            this.networkChangeListenerSet.remove(networkChangeListener);
        }
    }
}
