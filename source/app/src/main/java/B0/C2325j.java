package B0;

import G0.InterfaceC2586q;
import android.app.Activity;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;

public final class C2325j extends C2326k {

    @NonNull
    public static final String f1248l = "GooglePlayServicesErrorDialog";

    @Deprecated
    public static final int f1249m = C2326k.f1252a;

    @NonNull
    @Deprecated
    public static final String f1250n = "com.google.android.gms";

    @NonNull
    public static final String f1251o = "com.android.vending";

    @Deprecated
    public static void A(int i10, @NonNull Context context) {
        C2323h x10 = C2323h.x();
        if (C2326k.o(context, i10) || C2326k.p(context, i10)) {
            x10.K(context);
        } else {
            x10.D(context, i10);
        }
    }

    @NonNull
    @Deprecated
    public static PendingIntent f(int i10, @NonNull Context context, int i11) {
        return C2324i.i().f(context, i10, i11);
    }

    @NonNull
    @Deprecated
    public static String g(int i10) {
        return C2326k.g(i10);
    }

    @NonNull
    public static Context i(@NonNull Context context) {
        return C2326k.i(context);
    }

    @NonNull
    public static Resources j(@NonNull Context context) {
        return C2326k.j(context);
    }

    @ResultIgnorabilityUnspecified
    @InterfaceC2586q
    @Deprecated
    public static int l(@NonNull Context context) {
        return C2326k.l(context);
    }

    @C0.a
    @Deprecated
    public static int m(@NonNull Context context, int i10) {
        return C2326k.m(context, i10);
    }

    @Deprecated
    public static boolean s(int i10) {
        return C2326k.s(i10);
    }

    @Nullable
    @Deprecated
    public static Dialog v(int i10, @NonNull Activity activity, int i11) {
        return w(i10, activity, i11, null);
    }

    @Nullable
    @Deprecated
    public static Dialog w(int i10, @NonNull Activity activity, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == C2326k.o(activity, i10)) {
            i10 = 18;
        }
        return C2323h.x().t(activity, i10, i11, onCancelListener);
    }

    @ResultIgnorabilityUnspecified
    @Deprecated
    public static boolean x(int i10, @NonNull Activity activity, int i11) {
        return y(i10, activity, i11, null);
    }

    @ResultIgnorabilityUnspecified
    @I2.l(imports = {"androidx.fragment.app.Fragment", "com.google.android.gms.common.GooglePlayServicesUtil"}, replacement = "GooglePlayServicesUtil.showErrorDialogFragment(errorCode, activity, (Fragment) null, requestCode, cancelListener)")
    @Deprecated
    public static boolean y(int i10, @NonNull Activity activity, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return z(i10, activity, null, i11, onCancelListener);
    }

    @ResultIgnorabilityUnspecified
    public static boolean z(int i10, @NonNull Activity activity, @Nullable Fragment fragment, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        if (true == C2326k.o(activity, i10)) {
            i10 = 18;
        }
        int i12 = i10;
        C2323h x10 = C2323h.x();
        if (fragment == null) {
            return x10.B(activity, i12, i11, onCancelListener);
        }
        Dialog F10 = x10.F(activity, i12, G0.X.c(fragment, C2323h.x().e(activity, i12, "d"), i11), onCancelListener, null);
        if (F10 == null) {
            return false;
        }
        x10.I(activity, F10, f1248l, onCancelListener);
        return true;
    }
}
