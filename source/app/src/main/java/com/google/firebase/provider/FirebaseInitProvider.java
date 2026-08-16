package com.google.firebase.provider;

import G0.A;
import K2.g;
import K2.r;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.atomic.AtomicBoolean;

public class FirebaseInitProvider extends ContentProvider {

    public static final String f67772b = "FirebaseInitProvider";

    @Nullable
    public static r f67773c = r.e();

    @NonNull
    public static AtomicBoolean f67774d = new AtomicBoolean(false);

    @VisibleForTesting
    public static final String f67775e = "com.google.firebase.firebaseinitprovider";

    public static void a(@NonNull ProviderInfo providerInfo) {
        A.s(providerInfo, "FirebaseInitProvider ProviderInfo cannot be null.");
        if (f67775e.equals(providerInfo.authority)) {
            throw new IllegalStateException("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
        }
    }

    @Nullable
    public static r b() {
        return f67773c;
    }

    public static boolean c() {
        return f67774d.get();
    }

    @Override
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        a(providerInfo);
        super.attachInfo(context, providerInfo);
    }

    @Override
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override
    public boolean onCreate() {
        try {
            f67774d.set(true);
            if (g.x(getContext()) == null) {
                Log.i(f67772b, "FirebaseApp initialization unsuccessful");
            } else {
                Log.i(f67772b, "FirebaseApp initialization successful");
            }
            f67774d.set(false);
            return false;
        } catch (Throwable th2) {
            f67774d.set(false);
            throw th2;
        }
    }

    @Override
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
