package com.google.firebase;

import K2.b;
import T2.C3049g;
import Z2.g;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentRegistrar;
import java.util.ArrayList;
import java.util.List;
import n3.c;
import n3.e;
import n3.h;
import w2.C15883c;

public class FirebaseCommonRegistrar implements ComponentRegistrar {

    public static final String f67613a = "fire-android";

    public static final String f67614b = "fire-core";

    public static final String f67615c = "device-name";

    public static final String f67616d = "device-model";

    public static final String f67617e = "device-brand";

    public static final String f67618f = "android-target-sdk";

    public static final String f67619g = "android-min-sdk";

    public static final String f67620h = "android-platform";

    public static final String f67621i = "android-installer";

    public static final String f67622j = "kotlin";

    public static String e(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.targetSdkVersion) : "";
    }

    public static String f(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return applicationInfo != null ? String.valueOf(applicationInfo.minSdkVersion) : "";
    }

    public static String g(Context context) {
        return context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_TELEVISION) ? "tv" : context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_WATCH) ? "watch" : context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_AUTOMOTIVE) ? "auto" : context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_EMBEDDED) ? "embedded" : "";
    }

    public static String h(Context context) {
        String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
        return installerPackageName != null ? i(installerPackageName) : "";
    }

    public static String i(String str) {
        return str.replace(C15883c.f126249O, '_').replace('/', '_');
    }

    @Override
    public List<C3049g<?>> getComponents() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(c.c());
        arrayList.add(g.g());
        arrayList.add(h.b(f67613a, String.valueOf(Build.VERSION.SDK_INT)));
        arrayList.add(h.b(f67614b, b.f10713d));
        arrayList.add(h.b(f67615c, i(Build.PRODUCT)));
        arrayList.add(h.b(f67616d, i(Build.DEVICE)));
        arrayList.add(h.b(f67617e, i(Build.BRAND)));
        arrayList.add(h.c(f67618f, new h.a() {
            @Override
            public final String a(Object obj) {
                String e10;
                e10 = FirebaseCommonRegistrar.e((Context) obj);
                return e10;
            }
        }));
        arrayList.add(h.c(f67619g, new h.a() {
            @Override
            public final String a(Object obj) {
                String f10;
                f10 = FirebaseCommonRegistrar.f((Context) obj);
                return f10;
            }
        }));
        arrayList.add(h.c(f67620h, new h.a() {
            @Override
            public final String a(Object obj) {
                String g10;
                g10 = FirebaseCommonRegistrar.g((Context) obj);
                return g10;
            }
        }));
        arrayList.add(h.c(f67621i, new h.a() {
            @Override
            public final String a(Object obj) {
                String h10;
                h10 = FirebaseCommonRegistrar.h((Context) obj);
                return h10;
            }
        }));
        String a10 = e.a();
        if (a10 != null) {
            arrayList.add(h.b(f67622j, a10));
        }
        return arrayList;
    }
}
