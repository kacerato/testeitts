package B0;

import A0.a;
import D0.AbstractC2447h0;
import D0.C2449i0;
import D0.C2457m0;
import D0.InterfaceC2448i;
import G0.InterfaceC2586q;
import T0.C3042l;
import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.provider.Telephony;
import android.util.Log;
import android.util.TypedValue;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import androidx.annotation.GuardedBy;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.common.api.InterfaceC11909m;
import com.google.errorprone.annotations.RestrictedInheritance;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import g1.InterfaceC13282d;
import g1.InterfaceC13283e;
import java.util.ArrayList;
import java.util.Arrays;
import v1.AbstractC15790k;
import v1.C15793n;
import v1.InterfaceC15789j;

@RestrictedInheritance(allowedOnPath = ".*java.*/com/google/android/gms.*", allowlistAnnotations = {InterfaceC13282d.class, InterfaceC13283e.class}, explanation = "Sub classing of GMS Core's APIs are restricted to GMS Core client libs and testing fakes.", link = "go/gmscore-restrictedinheritance")
public class C2323h extends C2324i {

    @NonNull
    public static final String f1238i = "com.google.android.gms";

    @GuardedBy("lock")
    public String f1241g;

    public static final Object f1239j = new Object();

    public static final C2323h f1240k = new C2323h();

    public static final int f1237h = C2324i.f1242a;

    @NonNull
    public static final AbstractC15790k N(@NonNull InterfaceC11909m interfaceC11909m, @NonNull InterfaceC11909m... interfaceC11909mArr) {
        G0.A.s(interfaceC11909m, "Requested API must not be null.");
        for (InterfaceC11909m interfaceC11909m2 : interfaceC11909mArr) {
            G0.A.s(interfaceC11909m2, "Requested API must not be null.");
        }
        ArrayList arrayList = new ArrayList(interfaceC11909mArr.length + 1);
        arrayList.add(interfaceC11909m);
        arrayList.addAll(Arrays.asList(interfaceC11909mArr));
        return com.google.android.gms.common.api.internal.d.u().x(arrayList);
    }

    @NonNull
    public static C2323h x() {
        return f1240k;
    }

    @ResultIgnorabilityUnspecified
    public boolean A(@NonNull Activity activity, int i10, int i11) {
        return B(activity, i10, i11, null);
    }

    @ResultIgnorabilityUnspecified
    public boolean B(@NonNull Activity activity, int i10, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog t10 = t(activity, i10, i11, onCancelListener);
        if (t10 == null) {
            return false;
        }
        I(activity, t10, C2325j.f1248l, onCancelListener);
        return true;
    }

    public boolean C(@NonNull Activity activity, int i10, @NonNull ActivityResultLauncher<IntentSenderRequest> activityResultLauncher, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog F10 = F(activity, i10, null, onCancelListener, new DialogInterfaceOnClickListenerC2338x(this, activity, i10, activityResultLauncher));
        if (F10 == null) {
            return false;
        }
        I(activity, F10, C2325j.f1248l, onCancelListener);
        return true;
    }

    public void D(@NonNull Context context, int i10) {
        J(context, i10, null, g(context, i10, 0, C2324i.f1246e));
    }

    public void E(@NonNull Context context, @NonNull C2318c c2318c) {
        J(context, c2318c.n(), null, w(context, c2318c));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final Dialog F(@NonNull Context context, int i10, @Nullable G0.X x10, @Nullable DialogInterface.OnCancelListener onCancelListener, @Nullable DialogInterface.OnClickListener onClickListener) {
        if (i10 == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(context.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(context, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(context);
        }
        builder.setMessage(G0.T.c(context, i10));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        String b10 = G0.T.b(context, i10);
        if (b10 != null) {
            if (x10 == null) {
                x10 = onClickListener;
            }
            builder.setPositiveButton(b10, x10);
        }
        String f10 = G0.T.f(context, i10);
        if (f10 != null) {
            builder.setTitle(f10);
        }
        Log.w("GoogleApiAvailability", String.format("Creating dialog for Google Play services availability issue. ConnectionResult=%s", Integer.valueOf(i10)), new IllegalArgumentException());
        return builder.create();
    }

    @NonNull
    public final Dialog G(@NonNull Activity activity, @NonNull DialogInterface.OnCancelListener onCancelListener) {
        ProgressBar progressBar = new ProgressBar(activity, null, R.attr.progressBarStyleLarge);
        progressBar.setIndeterminate(true);
        progressBar.setVisibility(0);
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setView(progressBar);
        builder.setMessage(G0.T.c(activity, 18));
        builder.setPositiveButton("", (DialogInterface.OnClickListener) null);
        AlertDialog create = builder.create();
        I(activity, create, "GooglePlayServicesUpdatingDialog", onCancelListener);
        return create;
    }

    @Nullable
    @ResultIgnorabilityUnspecified
    public final C2449i0 H(Context context, AbstractC2447h0 abstractC2447h0) {
        IntentFilter intentFilter = new IntentFilter(Intent.ACTION_PACKAGE_ADDED);
        intentFilter.addDataScheme(Telephony.Sms.Intents.EXTRA_PACKAGE_NAME);
        C2449i0 c2449i0 = new C2449i0(abstractC2447h0);
        g1.o.a(context, c2449i0, intentFilter);
        c2449i0.a(context);
        if (n(context, "com.google.android.gms")) {
            return c2449i0;
        }
        abstractC2447h0.a();
        c2449i0.b();
        return null;
    }

    public final void I(Activity activity, Dialog dialog, String str, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof FragmentActivity) {
                C2335u.f(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        DialogFragmentC2319d.b(dialog, onCancelListener).show(activity.getFragmentManager(), str);
    }

    @TargetApi(20)
    public final void J(Context context, int i10, @Nullable String str, @Nullable PendingIntent pendingIntent) {
        int i11;
        String str2;
        Log.w("GoogleApiAvailability", String.format("GMS core API Availability. ConnectionResult=%s, tag=%s", Integer.valueOf(i10), null), new IllegalArgumentException());
        if (i10 == 18) {
            K(context);
            return;
        }
        if (pendingIntent == null) {
            if (i10 == 6) {
                Log.w("GoogleApiAvailability", "Missing resolution for ConnectionResult.RESOLUTION_REQUIRED. Call GoogleApiAvailability#showErrorNotification(Context, ConnectionResult) instead.");
                return;
            }
            return;
        }
        String e10 = G0.T.e(context, i10);
        String d10 = G0.T.d(context, i10);
        Resources resources = context.getResources();
        NotificationManager notificationManager = (NotificationManager) G0.A.r(context.getSystemService(Context.NOTIFICATION_SERVICE));
        NotificationCompat.Builder style = new NotificationCompat.Builder(context).setLocalOnly(true).setAutoCancel(true).setContentTitle(e10).setStyle(new NotificationCompat.BigTextStyle().bigText(d10));
        if (C3042l.l(context)) {
            G0.A.x(T0.v.i());
            style.setSmallIcon(context.getApplicationInfo().icon).setPriority(2);
            if (C3042l.m(context)) {
                style.addAction(a.c.f74a, resources.getString(a.e.f118o), pendingIntent);
            } else {
                style.setContentIntent(pendingIntent);
            }
        } else {
            style.setSmallIcon(R.drawable.stat_sys_warning).setTicker(resources.getString(a.e.f111h)).setWhen(System.currentTimeMillis()).setContentIntent(pendingIntent).setContentText(d10);
        }
        if (T0.v.n()) {
            G0.A.x(T0.v.n());
            synchronized (f1239j) {
                str2 = this.f1241g;
            }
            if (str2 == null) {
                str2 = "com.google.android.gms.availability";
                NotificationChannel notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
                String string = context.getResources().getString(a.e.f110g);
                if (notificationChannel == null) {
                    notificationManager.createNotificationChannel(new NotificationChannel("com.google.android.gms.availability", string, 4));
                } else if (!string.contentEquals(notificationChannel.getName())) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            style.setChannelId(str2);
        }
        Notification build = style.build();
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            C2326k.f1259h.set(false);
            i11 = C2326k.f1258g;
        } else {
            i11 = C2326k.f1257f;
        }
        notificationManager.notify(i11, build);
    }

    public final void K(Context context) {
        new HandlerC2339y(this, context).sendEmptyMessageDelayed(1, 120000L);
    }

    @ResultIgnorabilityUnspecified
    public final boolean L(@NonNull Activity activity, @NonNull InterfaceC2448i interfaceC2448i, int i10, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        Dialog F10 = F(activity, i10, G0.X.d(interfaceC2448i, e(activity, i10, "d"), 2), onCancelListener, null);
        if (F10 == null) {
            return false;
        }
        I(activity, F10, C2325j.f1248l, onCancelListener);
        return true;
    }

    public final boolean M(@NonNull Context context, @NonNull C2318c c2318c, int i10) {
        PendingIntent w10;
        if (V0.b.a(context) || (w10 = w(context, c2318c)) == null) {
            return false;
        }
        J(context, c2318c.n(), null, PendingIntent.getActivity(context, 0, GoogleApiActivity.a(context, w10, i10, true), g1.p.f88026a | 134217728));
        return true;
    }

    @Override
    @G0.F
    @C0.a
    public int c(@NonNull Context context) {
        return super.c(context);
    }

    @Override
    @G0.F
    @Nullable
    @C0.a
    public Intent e(@Nullable Context context, int i10, @Nullable String str) {
        return super.e(context, i10, str);
    }

    @Override
    @Nullable
    public PendingIntent f(@NonNull Context context, int i10, int i11) {
        return super.f(context, i10, i11);
    }

    @Override
    @NonNull
    public final String h(int i10) {
        return super.h(i10);
    }

    @Override
    @ResultIgnorabilityUnspecified
    @InterfaceC2586q
    public int j(@NonNull Context context) {
        return super.j(context);
    }

    @Override
    @G0.F
    @C0.a
    public int k(@NonNull Context context, int i10) {
        return super.k(context, i10);
    }

    @Override
    public final boolean o(int i10) {
        return super.o(i10);
    }

    @NonNull
    public AbstractC15790k<Void> q(@NonNull AbstractC11907k<?> abstractC11907k, @NonNull AbstractC11907k<?>... abstractC11907kArr) {
        return N(abstractC11907k, abstractC11907kArr).x(new InterfaceC15789j() {
            @Override
            public final AbstractC15790k a(Object obj) {
                int i10 = C2323h.f1237h;
                return C15793n.g(null);
            }
        });
    }

    @NonNull
    public AbstractC15790k<Void> r(@NonNull InterfaceC11909m<?> interfaceC11909m, @NonNull InterfaceC11909m<?>... interfaceC11909mArr) {
        return N(interfaceC11909m, interfaceC11909mArr).x(new InterfaceC15789j() {
            @Override
            public final AbstractC15790k a(Object obj) {
                int i10 = C2323h.f1237h;
                return C15793n.g(null);
            }
        });
    }

    @Nullable
    public Dialog s(@NonNull Activity activity, int i10, int i11) {
        return t(activity, i10, i11, null);
    }

    @Nullable
    public Dialog t(@NonNull Activity activity, int i10, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return F(activity, i10, G0.X.b(activity, e(activity, i10, "d"), i11), onCancelListener, null);
    }

    @Nullable
    public Dialog u(@NonNull Fragment fragment, int i10, int i11) {
        return v(fragment, i10, i11, null);
    }

    @Nullable
    public Dialog v(@NonNull Fragment fragment, int i10, int i11, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        return F(fragment.requireContext(), i10, G0.X.c(fragment, e(fragment.requireContext(), i10, "d"), i11), onCancelListener, null);
    }

    @Nullable
    public PendingIntent w(@NonNull Context context, @NonNull C2318c c2318c) {
        return c2318c.n0() ? c2318c.b0() : f(context, c2318c.n(), 0);
    }

    @NonNull
    @MainThread
    public AbstractC15790k<Void> y(@NonNull Activity activity) {
        int i10 = f1237h;
        G0.A.k("makeGooglePlayServicesAvailable must be called from the main thread");
        int k10 = k(activity, i10);
        if (k10 == 0) {
            return C15793n.g(null);
        }
        C2457m0 u10 = C2457m0.u(activity);
        u10.t(new C2318c(k10, null), 0);
        return u10.v();
    }

    @TargetApi(26)
    public void z(@NonNull Context context, @NonNull String str) {
        if (T0.v.n()) {
            G0.A.r(((NotificationManager) G0.A.r(context.getSystemService(Context.NOTIFICATION_SERVICE))).getNotificationChannel(str));
        }
        synchronized (f1239j) {
            this.f1241g = str;
        }
    }
}
