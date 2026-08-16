package i1;

import android.app.Activity;
import android.app.Application;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.DisplayCutout;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import com.google.android.gms.internal.consent_sdk.zzj;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import u2.C15566a;
import u2.C15569d;

public final class D0 {

    public final z0 f91172a;

    public final Activity f91173b;

    public final C15566a f91174c;

    public final C15569d f91175d;

    public D0(z0 z0Var, Activity activity, C15566a c15566a, C15569d c15569d, y0 y0Var) {
        this.f91172a = z0Var;
        this.f91173b = activity;
        this.f91174c = c15566a;
        this.f91175d = c15569d;
    }

    public static X a(D0 d02) throws zzj {
        Bundle bundle;
        Application application;
        Application application2;
        B b10;
        List<S> arrayList;
        C13564n c13564n;
        Application application3;
        Application application4;
        Application application5;
        List<Rect> boundingRects;
        List<U> list;
        Application application6;
        PackageInfo packageInfo;
        Application application7;
        Application application8;
        Application application9;
        X x10 = new X();
        String c10 = d02.f91175d.c();
        if (TextUtils.isEmpty(c10)) {
            try {
                application = d02.f91172a.f91378a;
                PackageManager packageManager = application.getPackageManager();
                application2 = d02.f91172a.f91378a;
                bundle = packageManager.getApplicationInfo(application2.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
                bundle = null;
            }
            if (bundle != null) {
                c10 = bundle.getString("com.google.android.gms.ads.APPLICATION_ID");
            }
            if (TextUtils.isEmpty(c10)) {
                throw new zzj(3, "The UMP SDK requires a valid application ID in your AndroidManifest.xml through a com.google.android.gms.ads.APPLICATION_ID meta-data tag.\nExample AndroidManifest:\n    <meta-data\n        android:name=\"com.google.android.gms.ads.APPLICATION_ID\"\n        android:value=\"ca-app-pub-0000000000000000~0000000000\">");
            }
        }
        x10.f91263a = c10;
        b10 = d02.f91172a.f91379b;
        C13538a a10 = b10.a();
        if (a10 != null) {
            x10.f91265c = a10.f91282a;
            x10.f91264b = Boolean.valueOf(a10.f91283b);
        }
        if (d02.f91174c.b()) {
            arrayList = new ArrayList<>();
            int a11 = d02.f91174c.a();
            if (a11 == 1) {
                arrayList.add(S.GEO_OVERRIDE_EEA);
            } else if (a11 == 2) {
                arrayList.add(S.GEO_OVERRIDE_NON_EEA);
            }
            arrayList.add(S.PREVIEWING_DEBUG_MESSAGES);
        } else {
            arrayList = Collections.emptyList();
        }
        x10.f91273k = arrayList;
        c13564n = d02.f91172a.f91380c;
        x10.f91269g = c13564n.b();
        x10.f91268f = Boolean.valueOf(d02.f91175d.b());
        int i10 = Build.VERSION.SDK_INT;
        x10.f91267e = Locale.getDefault().toLanguageTag();
        T t10 = new T();
        t10.f91252b = Integer.valueOf(i10);
        t10.f91251a = Build.MODEL;
        t10.f91253c = 2;
        x10.f91266d = t10;
        application3 = d02.f91172a.f91378a;
        Configuration configuration = application3.getResources().getConfiguration();
        application4 = d02.f91172a.f91378a;
        application4.getResources().getConfiguration();
        V v10 = new V();
        v10.f91258a = Integer.valueOf(configuration.screenWidthDp);
        v10.f91259b = Integer.valueOf(configuration.screenHeightDp);
        application5 = d02.f91172a.f91378a;
        v10.f91260c = Double.valueOf(application5.getResources().getDisplayMetrics().density);
        if (i10 < 28) {
            list = Collections.emptyList();
        } else {
            Activity activity = d02.f91173b;
            Window window = activity == null ? null : activity.getWindow();
            View decorView = window == null ? null : window.getDecorView();
            WindowInsets rootWindowInsets = decorView == null ? null : decorView.getRootWindowInsets();
            DisplayCutout displayCutout = rootWindowInsets == null ? null : rootWindowInsets.getDisplayCutout();
            if (displayCutout == null) {
                list = Collections.emptyList();
            } else {
                displayCutout.getSafeInsetBottom();
                ArrayList arrayList2 = new ArrayList();
                boundingRects = displayCutout.getBoundingRects();
                for (Rect rect : boundingRects) {
                    if (rect != null) {
                        U u10 = new U();
                        u10.f91255b = Integer.valueOf(rect.left);
                        u10.f91256c = Integer.valueOf(rect.right);
                        u10.f91254a = Integer.valueOf(rect.top);
                        u10.f91257d = Integer.valueOf(rect.bottom);
                        arrayList2.add(u10);
                    }
                }
                list = arrayList2;
            }
        }
        v10.f91261d = list;
        x10.f91270h = v10;
        application6 = d02.f91172a.f91378a;
        try {
            application9 = d02.f91172a.f91378a;
            packageInfo = application9.getPackageManager().getPackageInfo(application6.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused2) {
            packageInfo = null;
        }
        Q q10 = new Q();
        q10.f91248a = application6.getPackageName();
        application7 = d02.f91172a.f91378a;
        PackageManager packageManager2 = application7.getPackageManager();
        application8 = d02.f91172a.f91378a;
        CharSequence applicationLabel = packageManager2.getApplicationLabel(application8.getApplicationInfo());
        q10.f91249b = applicationLabel != null ? applicationLabel.toString() : null;
        if (packageInfo != null) {
            q10.f91250c = Long.toString(Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode);
        }
        x10.f91271i = q10;
        W w10 = new W();
        w10.f91262a = "2.0.0";
        x10.f91272j = w10;
        return x10;
    }
}
