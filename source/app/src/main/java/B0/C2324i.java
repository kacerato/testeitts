package B0;

import G0.InterfaceC2586q;
import G0.X0;
import T0.C3042l;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.provider.Settings;
import android.provider.Telephony;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.PendingIntentCompat;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;

@G0.F
@C0.a
public class C2324i {

    @NonNull
    @C0.a
    public static final String f1243b = "com.google.android.gms";

    @NonNull
    @C0.a
    public static final String f1244c = "com.android.vending";

    @C0.a
    public static final String f1245d = "d";

    @C0.a
    public static final String f1246e = "n";

    @C0.a
    public static final int f1242a = C2326k.f1252a;

    public static final C2324i f1247f = new C2324i();

    @C0.a
    public C2324i() {
    }

    @G0.F
    @NonNull
    @C0.a
    public static C2324i i() {
        return f1247f;
    }

    @C0.a
    public void a(@NonNull Context context) {
        C2326k.a(context);
    }

    @G0.F
    @C0.a
    public int b(@NonNull Context context) {
        return C2326k.d(context);
    }

    @G0.F
    @C0.a
    public int c(@NonNull Context context) {
        return C2326k.e(context);
    }

    @G0.F
    @Deprecated
    @Nullable
    @C0.a
    public Intent d(int i10) {
        return e(null, i10, null);
    }

    @G0.F
    @Nullable
    @C0.a
    public Intent e(@Nullable Context context, int i10, @Nullable String str) {
        if (i10 != 1 && i10 != 2) {
            if (i10 != 3) {
                return null;
            }
            int i11 = X0.f7344c;
            Uri fromParts = Uri.fromParts(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME, "com.google.android.gms", null);
            Intent intent = new Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS);
            intent.setData(fromParts);
            return intent;
        }
        if (context != null && C3042l.m(context)) {
            int i12 = X0.f7344c;
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("gcore_");
        sb2.append(f1242a);
        sb2.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb2.append(str);
        }
        sb2.append("-");
        if (context != null) {
            sb2.append(context.getPackageName());
        }
        sb2.append("-");
        if (context != null) {
            try {
                sb2.append(V0.d.a(context).f(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String sb3 = sb2.toString();
        int i13 = X0.f7344c;
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", "com.google.android.gms");
        if (!TextUtils.isEmpty(sb3)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", sb3);
        }
        intent3.setData(appendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }

    @Nullable
    @C0.a
    public PendingIntent f(@NonNull Context context, int i10, int i11) {
        return g(context, i10, i11, null);
    }

    @G0.F
    @Nullable
    @C0.a
    public PendingIntent g(@NonNull Context context, int i10, int i11, @Nullable String str) {
        Intent e10 = e(context, i10, str);
        if (e10 == null) {
            return null;
        }
        return PendingIntentCompat.getActivity(context, i11, e10, 134217728, false);
    }

    @NonNull
    @C0.a
    public String h(int i10) {
        return C2326k.g(i10);
    }

    @C0.a
    @InterfaceC2586q
    public int j(@NonNull Context context) {
        return k(context, f1242a);
    }

    @C0.a
    public int k(@NonNull Context context, int i10) {
        int m10 = C2326k.m(context, i10);
        if (C2326k.o(context, m10)) {
            return 18;
        }
        return m10;
    }

    @G0.F
    @C0.a
    public boolean l(@NonNull Context context, int i10) {
        return C2326k.o(context, i10);
    }

    @G0.F
    @C0.a
    public boolean m(@NonNull Context context, int i10) {
        return C2326k.p(context, i10);
    }

    @C0.a
    public boolean n(@NonNull Context context, @NonNull String str) {
        return C2326k.u(context, str);
    }

    @C0.a
    public boolean o(int i10) {
        return C2326k.s(i10);
    }

    @C0.a
    public void p(@NonNull Context context, int i10) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        C2326k.c(context, i10);
    }
}
