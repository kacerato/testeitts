package s0;

import B0.C2325j;
import B0.C2326k;
import G0.A;
import android.accounts.Account;
import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.auth.GoogleAuthException;
import com.google.android.gms.auth.GooglePlayServicesAvailabilityException;
import com.google.android.gms.auth.TokenData;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.auth.UserRecoverableNotifiedException;
import java.io.IOException;
import java.util.List;

public final class C15225e extends r {

    @NonNull
    public static final String f109119l = "com.google";

    @NonNull
    public static final String f109120m = "com.google.work";

    @NonNull
    public static final String f109121n = "suppressProgressScreen";

    public static final int f109122o = 1;

    public static final int f109123p = 2;

    public static final int f109124q = 3;

    public static final int f109125r = 4;

    @NonNull
    public static String A(@NonNull Context context, @NonNull Account account, @NonNull String str, @NonNull Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = bundle;
        bundle2.putBoolean("handle_notification", true);
        return G(context, account, str, bundle2, 0L).n();
    }

    @NonNull
    public static String B(@NonNull Context context, @NonNull Account account, @NonNull String str, @NonNull Bundle bundle, @NonNull Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        r.p(intent);
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle2 = bundle;
        bundle2.putParcelable("callback_intent", intent);
        bundle2.putBoolean("handle_notification", true);
        return G(context, account, str, bundle2, 0L).n();
    }

    @NonNull
    public static String C(@NonNull Context context, @NonNull Account account, @NonNull String str, @NonNull Bundle bundle, @NonNull String str2, @NonNull Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        A.m(str2, "Authority cannot be empty or null.");
        if (bundle == null) {
            bundle = new Bundle();
        }
        Bundle bundle3 = bundle;
        if (bundle2 == null) {
            bundle2 = new Bundle();
        }
        ContentResolver.validateSyncExtrasBundle(bundle2);
        bundle3.putString(ContactsContract.Directory.DIRECTORY_AUTHORITY, str2);
        bundle3.putBundle("sync_extras", bundle2);
        bundle3.putBoolean("handle_notification", true);
        return G(context, account, str, bundle3, 0L).n();
    }

    @NonNull
    @Deprecated
    public static String D(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return A(context, new Account(str, "com.google"), str2, bundle);
    }

    @NonNull
    @Deprecated
    public static String E(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull Bundle bundle, @NonNull Intent intent) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return B(context, new Account(str, "com.google"), str2, bundle, intent);
    }

    @NonNull
    @Deprecated
    public static String F(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull Bundle bundle, @NonNull String str3, @NonNull Bundle bundle2) throws IOException, UserRecoverableNotifiedException, GoogleAuthException {
        return C(context, new Account(str, "com.google"), str2, bundle, str3, bundle2);
    }

    public static TokenData G(Context context, Account account, String str, Bundle bundle, long j10) throws IOException, GoogleAuthException {
        try {
            TokenData k10 = r.k(context, account, str, bundle, 0L, null);
            C2326k.a(context);
            return k10;
        } catch (GooglePlayServicesAvailabilityException e10) {
            C2325j.A(e10.getConnectionStatusCode(), context);
            Log.w("GoogleAuthUtil", "Error when getting token", e10);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.", e10);
        } catch (UserRecoverableAuthException e11) {
            C2326k.a(context);
            Log.w("GoogleAuthUtil", "Error when getting token", e11);
            throw new UserRecoverableNotifiedException("User intervention required. Notification has been pushed.", e11);
        }
    }

    public static void a(@NonNull Context context, @NonNull String str) throws GooglePlayServicesAvailabilityException, GoogleAuthException, IOException {
        r.a(context, str);
    }

    @NonNull
    public static List<C15221a> b(@NonNull Context context, int i10, @NonNull String str) throws GoogleAuthException, IOException {
        return r.b(context, i10, str);
    }

    @NonNull
    public static String c(@NonNull Context context, @NonNull String str) throws GoogleAuthException, IOException {
        return r.c(context, str);
    }

    @NonNull
    public static String d(@NonNull Context context, @NonNull Account account, @NonNull String str) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return r.d(context, account, str);
    }

    @NonNull
    public static String e(@NonNull Context context, @NonNull Account account, @NonNull String str, @NonNull Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return r.e(context, account, str, bundle);
    }

    @NonNull
    @Deprecated
    public static String f(@NonNull Context context, @NonNull String str, @NonNull String str2) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return r.f(context, str, str2);
    }

    @NonNull
    @Deprecated
    public static String g(@NonNull Context context, @NonNull String str, @NonNull String str2, @NonNull Bundle bundle) throws IOException, UserRecoverableAuthException, GoogleAuthException {
        return r.g(context, str, str2, bundle);
    }

    @RequiresPermission("android.permission.MANAGE_ACCOUNTS")
    @Deprecated
    public static void h(@NonNull Context context, @NonNull String str) {
        r.h(context, str);
    }

    @NonNull
    @TargetApi(23)
    public static Bundle i(@NonNull Context context, @NonNull Account account) throws GoogleAuthException, IOException {
        return r.i(context, account);
    }

    @NonNull
    @TargetApi(26)
    public static Boolean j(@NonNull Context context) throws GoogleAuthException, IOException {
        return r.j(context);
    }
}
