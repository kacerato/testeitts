package s0;

import B0.C2323h;
import B0.C2326k;
import B0.ServiceConnectionC2317b;
import G0.A;
import G0.AbstractC2582o;
import G0.F;
import android.accounts.Account;
import android.accounts.AccountManager;
import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.internal.auth.AbstractBinderC11932f1;
import com.google.android.gms.internal.auth.EnumC11915b0;
import com.google.android.gms.internal.auth.G2;
import com.google.android.gms.internal.auth.H0;
import com.google.android.gms.internal.auth.InterfaceC11937g2;
import com.google.android.gms.internal.auth.Z;
import com.google.android.gms.internal.auth.a3;
import com.google.android.gms.internal.auth.d3;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeoutException;
import v1.AbstractC15790k;
import v1.C15793n;

@F
public class r {

    public static final String f109153a = "com.google";

    @F
    public static final String f109154b = "com.google.work";

    public static final String f109156d = "suppressProgressScreen";

    public static final int f109158f = 1;

    public static final int f109159g = 2;

    public static final int f109160h = 3;

    public static final int f109161i = 4;

    @F
    public static final String[] f109155c = {"com.google", "com.google.work", "cn.google"};

    @F
    @SuppressLint({"InlinedApi"})
    public static final String f109157e = AccountManager.KEY_ANDROID_PACKAGE_NAME;

    public static final ComponentName f109162j = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    public static final K0.a f109163k = j.a("GoogleAuthUtil");

    public static void a(Context context, String str) throws GoogleAuthException, IOException {
        o(context, str, 0L);
    }

    public static List<C15221a> b(Context context, int i10, String str) throws GoogleAuthException, IOException {
        A.m(str, "accountName must be provided");
        A.q("Calling this from your main thread can lead to deadlock");
        u(context, 8400000);
        C15222b c15222b = new C15222b();
        c15222b.n0(str);
        c15222b.u0(i10);
        H0.d(context);
        if (d3.c() && z(context)) {
            try {
                C15223c c15223c = (C15223c) s(G2.a(context).u(c15222b), "account change events retrieval");
                t(c15223c);
                return c15223c.n();
            } catch (ApiException e10) {
                v(e10, "account change events retrieval");
            }
        }
        return (List) r(context, f109162j, new o(c15222b), 0L, null);
    }

    public static String c(Context context, String str) throws GoogleAuthException, IOException {
        A.m(str, "accountName must be provided");
        A.q("Calling this from your main thread can lead to deadlock");
        u(context, 8400000);
        return g(context, str, "^^_account_id_^^", new Bundle());
    }

    public static String d(Context context, Account account, String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return e(context, account, str, new Bundle());
    }

    public static String e(Context context, Account account, String str, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        y(account);
        return k(context, account, str, bundle, 0L, null).n();
    }

    @Deprecated
    public static String f(Context context, String str, String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return d(context, new Account(str, "com.google"), str2);
    }

    @Deprecated
    public static String g(Context context, String str, String str2, Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return e(context, new Account(str, "com.google"), str2, bundle);
    }

    @RequiresPermission("android.permission.MANAGE_ACCOUNTS")
    @Deprecated
    public static void h(Context context, String str) {
        AccountManager.get(context).invalidateAuthToken("com.google", str);
    }

    @F
    @TargetApi(23)
    public static Bundle i(Context context, final Account account) throws GoogleAuthException, IOException {
        A.r(context);
        y(account);
        u(context, 8400000);
        H0.d(context);
        if (d3.d() && z(context)) {
            try {
                Bundle bundle = (Bundle) s(G2.a(context).i(account), "account removal");
                t(bundle);
                return bundle;
            } catch (ApiException e10) {
                v(e10, "account removal");
            }
        }
        return (Bundle) r(context, f109162j, new q() {
            @Override
            public final Object a(IBinder iBinder) {
                Bundle d02 = AbstractBinderC11932f1.k(iBinder).d0(Account.this);
                if (d02 != null) {
                    return d02;
                }
                throw new IOException("Service call returned null.");
            }
        }, 0L, null);
    }

    @TargetApi(26)
    public static Boolean j(Context context) throws GoogleAuthException, IOException {
        A.r(context);
        u(context, 11400000);
        String str = context.getApplicationInfo().packageName;
        H0.d(context);
        if (d3.d() && z(context)) {
            try {
                Bundle bundle = (Bundle) s(G2.a(context).a(str), "google accounts access request");
                String string = bundle.getString("Error");
                Intent intent = (Intent) bundle.getParcelable("userRecoveryIntent");
                PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent");
                if (EnumC11915b0.SUCCESS.equals(EnumC11915b0.a(string))) {
                    return Boolean.TRUE;
                }
                x(context, "requestGoogleAccountsAccess", string, intent, pendingIntent);
                throw new GoogleAuthException("Invalid state. Shouldn't happen");
            } catch (ApiException e10) {
                v(e10, "google accounts access request");
            }
        }
        return (Boolean) r(context, f109162j, new p(str, context), 0L, null);
    }

    @F
    public static TokenData k(final Context context, final Account account, final String str, Bundle bundle, long j10, @Nullable Executor executor) throws IOException, GoogleAuthException {
        A.q("Calling this from your main thread can lead to deadlock");
        A.m(str, "Scope cannot be empty or null.");
        y(account);
        u(context, 8400000);
        final Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        w(context, bundle2);
        H0.d(context);
        if (d3.d() && z(context)) {
            try {
                Bundle bundle3 = (Bundle) s(G2.a(context).x(account, str, bundle2), "token retrieval");
                t(bundle3);
                return q(context, "getTokenWithDetails", bundle3);
            } catch (ApiException e10) {
                v(e10, "token retrieval");
            }
        }
        return (TokenData) r(context, f109162j, new q() {
            @Override
            public final Object a(IBinder iBinder) {
                return r.l(Account.this, str, bundle2, context, iBinder);
            }
        }, 0L, null);
    }

    public static TokenData l(Account account, String str, Bundle bundle, Context context, IBinder iBinder) throws RemoteException, IOException, GoogleAuthException {
        Bundle S02 = AbstractBinderC11932f1.k(iBinder).S0(account, str, bundle);
        if (S02 != null) {
            return q(context, "getTokenWithDetails", S02);
        }
        throw new IOException("Service call returned null");
    }

    public static Object m(Object obj) {
        t(obj);
        return obj;
    }

    @F
    public static void o(Context context, String str, long j10) throws GoogleAuthException, IOException {
        A.q("Calling this from your main thread can lead to deadlock");
        u(context, 8400000);
        Bundle bundle = new Bundle();
        w(context, bundle);
        H0.d(context);
        if (d3.d() && z(context)) {
            InterfaceC11937g2 a10 = G2.a(context);
            Z z10 = new Z();
            z10.b(str);
            try {
                s(a10.w(z10), "clear token");
                return;
            } catch (ApiException e10) {
                v(e10, "clear token");
            }
        }
        r(context, f109162j, new n(str, bundle), 0L, null);
    }

    public static void p(Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("Callback cannot be null.");
        }
        try {
            Intent.parseUri(intent.toUri(1), 1);
        } catch (URISyntaxException unused) {
            throw new IllegalArgumentException("Parameter callback contains invalid data. It must be serializable using toUri() and parseUri().");
        }
    }

    public static TokenData q(Context context, String str, Bundle bundle) throws GoogleAuthException, IOException {
        TokenData tokenData;
        Parcelable.Creator<TokenData> creator = TokenData.CREATOR;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        x(context, "getTokenWithDetails", bundle.getString("Error"), (Intent) bundle.getParcelable("userRecoveryIntent"), (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent"));
        throw new GoogleAuthException("Invalid state. Shouldn't happen");
    }

    public static Object r(Context context, ComponentName componentName, q qVar, long j10, @Nullable Executor executor) throws IOException, GoogleAuthException {
        ServiceConnectionC2317b serviceConnectionC2317b = new ServiceConnectionC2317b();
        AbstractC2582o e10 = AbstractC2582o.e(context);
        try {
            try {
                if (!e10.b(componentName, serviceConnectionC2317b, "GoogleAuthUtil", null)) {
                    throw new IOException("Could not bind to service.");
                }
                try {
                    return qVar.a(serviceConnectionC2317b.a());
                } catch (RemoteException | InterruptedException | TimeoutException e11) {
                    Log.i("GoogleAuthUtil", "Error on service connection.", e11);
                    throw new IOException("Error on service connection.", e11);
                }
            } finally {
                e10.k(componentName, serviceConnectionC2317b, "GoogleAuthUtil");
            }
        } catch (SecurityException e12) {
            Log.w("GoogleAuthUtil", String.format("SecurityException while bind to auth service: %s", e12.getMessage()));
            throw new IOException("SecurityException while binding to Auth service.", e12);
        }
    }

    public static Object s(AbstractC15790k abstractC15790k, String str) throws IOException, ApiException {
        try {
            return C15793n.a(abstractC15790k);
        } catch (InterruptedException e10) {
            String format = String.format("Interrupted while waiting for the task of %s to finish.", str);
            f109163k.j(format, new Object[0]);
            throw new IOException(format, e10);
        } catch (CancellationException e11) {
            String format2 = String.format("Canceled while waiting for the task of %s to finish.", str);
            f109163k.j(format2, new Object[0]);
            throw new IOException(format2, e11);
        } catch (ExecutionException e12) {
            Throwable cause = e12.getCause();
            if (cause instanceof ApiException) {
                throw ((ApiException) cause);
            }
            String format3 = String.format("Unable to get a result for %s due to ExecutionException.", str);
            f109163k.j(format3, new Object[0]);
            throw new IOException(format3, e12);
        }
    }

    public static Object t(Object obj) throws IOException {
        if (obj != null) {
            return obj;
        }
        f109163k.j("Service call returned null.", new Object[0]);
        throw new IOException("Service unavailable.");
    }

    public static void u(Context context, int i10) throws GoogleAuthException {
        try {
            C2326k.c(context.getApplicationContext(), i10);
        } catch (GooglePlayServicesIncorrectManifestValueException e10) {
            e = e10;
            throw new GoogleAuthException(e.getMessage(), e);
        } catch (GooglePlayServicesNotAvailableException e11) {
            e = e11;
            throw new GoogleAuthException(e.getMessage(), e);
        } catch (GooglePlayServicesRepairableException e12) {
            throw new GooglePlayServicesAvailabilityException(e12.getConnectionStatusCode(), e12.getMessage(), e12.getIntent());
        }
    }

    public static void v(ApiException apiException, String str) {
        f109163k.j("%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s", str, Log.getStackTraceString(apiException));
    }

    public static void w(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str);
        String str2 = f109157e;
        if (TextUtils.isEmpty(bundle.getString(str2))) {
            bundle.putString(str2, str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    public static void x(Context context, String str, @Nullable String str2, @Nullable Intent intent, @Nullable PendingIntent pendingIntent) throws GoogleAuthException, IOException {
        EnumC11915b0 a10 = EnumC11915b0.a(str2);
        K0.a aVar = f109163k;
        aVar.j(String.format("[GoogleAuthUtil] error status:%s with method:%s", a10, str), new Object[0]);
        if (!EnumC11915b0.BAD_AUTHENTICATION.equals(a10) && !EnumC11915b0.CAPTCHA.equals(a10) && !EnumC11915b0.NEED_PERMISSION.equals(a10) && !EnumC11915b0.NEED_REMOTE_CONSENT.equals(a10) && !EnumC11915b0.NEEDS_BROWSER.equals(a10) && !EnumC11915b0.USER_CANCEL.equals(a10) && !EnumC11915b0.DEVICE_MANAGEMENT_REQUIRED.equals(a10) && !EnumC11915b0.DM_INTERNAL_ERROR.equals(a10) && !EnumC11915b0.DM_SYNC_DISABLED.equals(a10) && !EnumC11915b0.DM_ADMIN_BLOCKED.equals(a10) && !EnumC11915b0.DM_ADMIN_PENDING_APPROVAL.equals(a10) && !EnumC11915b0.DM_STALE_SYNC_REQUIRED.equals(a10) && !EnumC11915b0.DM_DEACTIVATED.equals(a10) && !EnumC11915b0.DM_REQUIRED.equals(a10) && !EnumC11915b0.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(a10) && !EnumC11915b0.DM_SCREENLOCK_REQUIRED.equals(a10)) {
            if (!EnumC11915b0.NETWORK_ERROR.equals(a10) && !EnumC11915b0.SERVICE_UNAVAILABLE.equals(a10) && !EnumC11915b0.INTNERNAL_ERROR.equals(a10) && !EnumC11915b0.AUTH_SECURITY_ERROR.equals(a10) && !EnumC11915b0.ACCOUNT_NOT_PRESENT.equals(a10)) {
                throw new GoogleAuthException(str2);
            }
            throw new IOException(str2);
        }
        H0.d(context);
        if (!a3.b()) {
            throw new UserRecoverableAuthException(str2, intent);
        }
        if (pendingIntent != null && intent != null) {
            throw UserRecoverableAuthException.zza(str2, intent, pendingIntent);
        }
        if (C2323h.x().b(context) >= Integer.MAX_VALUE && pendingIntent == null) {
            aVar.c(String.format("Recovery PendingIntent is missing on current Gms version: %s for method: %s. It should always be present on or above Gms version %s. This indicates a bug in Gms implementation.", Integer.MAX_VALUE, str, Integer.MAX_VALUE), new Object[0]);
        }
        if (intent == null) {
            aVar.c(String.format("no recovery Intent found with status=%s for method=%s. This shouldn't happen", str2, str), new Object[0]);
        }
        throw new UserRecoverableAuthException(str2, intent);
    }

    public static void y(Account account) {
        if (account == null) {
            throw new IllegalArgumentException("Account cannot be null");
        }
        if (TextUtils.isEmpty(account.name)) {
            throw new IllegalArgumentException("Account name cannot be empty!");
        }
        String[] strArr = f109155c;
        for (int i10 = 0; i10 < 3; i10++) {
            if (strArr[i10].equals(account.type)) {
                return;
            }
        }
        throw new IllegalArgumentException("Account type not supported");
    }

    public static boolean z(Context context) {
        if (C2323h.x().k(context, 17895000) != 0) {
            return false;
        }
        List q10 = d3.a().q();
        String str = context.getApplicationInfo().packageName;
        Iterator it = q10.iterator();
        while (it.hasNext()) {
            if (((String) it.next()).equals(str)) {
                return false;
            }
        }
        return true;
    }
}
