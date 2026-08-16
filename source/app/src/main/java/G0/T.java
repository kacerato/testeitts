package G0;

import A0.a;
import B0.C2325j;
import B0.r;
import T0.C3042l;
import android.R;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.os.ConfigurationCompat;
import java.util.Locale;

public final class T {

    @J2.a("cache")
    public static final SimpleArrayMap f7323a = new SimpleArrayMap();

    @Nullable
    @J2.a("cache")
    public static Locale f7324b;

    public static String a(Context context) {
        String packageName = context.getPackageName();
        try {
            return V0.d.a(context).d(packageName).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    @NonNull
    public static String b(Context context, int i10) {
        Resources resources = context.getResources();
        return i10 != 1 ? i10 != 2 ? i10 != 3 ? resources.getString(R.string.f32411ok) : resources.getString(a.e.f104a) : resources.getString(a.e.f113j) : resources.getString(a.e.f107d);
    }

    @NonNull
    public static String c(Context context, int i10) {
        Resources resources = context.getResources();
        String a10 = a(context);
        if (i10 == 1) {
            return resources.getString(a.e.f108e, a10);
        }
        if (i10 == 2) {
            return C3042l.m(context) ? resources.getString(a.e.f117n) : resources.getString(a.e.f114k, a10);
        }
        if (i10 == 3) {
            return resources.getString(a.e.f105b, a10);
        }
        if (i10 == 5) {
            return g(context, "common_google_play_services_invalid_account_text", a10);
        }
        if (i10 == 7) {
            return g(context, "common_google_play_services_network_error_text", a10);
        }
        if (i10 == 9) {
            return resources.getString(a.e.f112i, a10);
        }
        if (i10 == 20) {
            return g(context, "common_google_play_services_restricted_profile_text", a10);
        }
        switch (i10) {
            case 16:
                return g(context, "common_google_play_services_api_unavailable_text", a10);
            case 17:
                return g(context, "common_google_play_services_sign_in_failed_text", a10);
            case 18:
                return resources.getString(a.e.f116m, a10);
            default:
                return resources.getString(r.b.f1276a, a10);
        }
    }

    @NonNull
    public static String d(Context context, int i10) {
        return (i10 == 6 || i10 == 19) ? g(context, "common_google_play_services_resolution_required_text", a(context)) : c(context, i10);
    }

    @NonNull
    public static String e(Context context, int i10) {
        String h10 = i10 == 6 ? h(context, "common_google_play_services_resolution_required_title") : f(context, i10);
        return h10 == null ? context.getResources().getString(a.e.f111h) : h10;
    }

    @Nullable
    public static String f(Context context, int i10) {
        Resources resources = context.getResources();
        switch (i10) {
            case 1:
                return resources.getString(a.e.f109f);
            case 2:
                return resources.getString(a.e.f115l);
            case 3:
                return resources.getString(a.e.f106c);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return h(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return h(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i10);
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return h(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return h(context, "common_google_play_services_restricted_profile_title");
        }
    }

    public static String g(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String h10 = h(context, str);
        if (h10 == null) {
            h10 = resources.getString(r.b.f1276a);
        }
        return String.format(resources.getConfiguration().locale, h10, str2);
    }

    @Nullable
    public static String h(Context context, String str) {
        SimpleArrayMap simpleArrayMap = f7323a;
        synchronized (simpleArrayMap) {
            try {
                Locale locale = ConfigurationCompat.getLocales(context.getResources().getConfiguration()).get(0);
                if (!locale.equals(f7324b)) {
                    simpleArrayMap.clear();
                    f7324b = locale;
                }
                String str2 = (String) simpleArrayMap.get(str);
                if (str2 != null) {
                    return str2;
                }
                Resources j10 = C2325j.j(context);
                if (j10 == null) {
                    return null;
                }
                int identifier = j10.getIdentifier(str, TypedValues.Custom.S_STRING, "com.google.android.gms");
                if (identifier == 0) {
                    Log.w("GoogleApiAvailability", "Missing resource: " + str);
                    return null;
                }
                String string = j10.getString(identifier);
                if (!TextUtils.isEmpty(string)) {
                    simpleArrayMap.put(str, string);
                    return string;
                }
                Log.w("GoogleApiAvailability", "Got empty resource: " + str);
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
