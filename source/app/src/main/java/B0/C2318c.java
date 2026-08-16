package B0;

import G0.C2601y;
import I0.c;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.MediaStore;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@c.a(creator = "ConnectionResultCreator")
public final class C2318c extends I0.a {

    public static final int f1197A = 22;

    public static final int f1198B = 23;

    public static final int f1199C = 24;

    @Deprecated
    public static final int f1200D = 1500;

    @C0.a
    public static final int f1202f = -1;

    public static final int f1203g = 0;

    public static final int f1204h = 1;

    public static final int f1205i = 2;

    public static final int f1206j = 3;

    public static final int f1207k = 4;

    public static final int f1208l = 5;

    public static final int f1209m = 6;

    public static final int f1210n = 7;

    public static final int f1211o = 8;

    public static final int f1212p = 9;

    public static final int f1213q = 10;

    public static final int f1214r = 11;

    public static final int f1215s = 13;

    public static final int f1216t = 14;

    public static final int f1217u = 15;

    public static final int f1218v = 16;

    public static final int f1219w = 17;

    public static final int f1220x = 18;

    public static final int f1221y = 19;

    public static final int f1222z = 20;

    @c.h(id = 1)
    public final int f1223b;

    @c.InterfaceC0186c(getter = "getErrorCode", id = 2)
    public final int f1224c;

    @Nullable
    @c.InterfaceC0186c(getter = "getResolution", id = 3)
    public final PendingIntent f1225d;

    @Nullable
    @c.InterfaceC0186c(getter = "getErrorMessage", id = 4)
    public final String f1226e;

    @G0.F
    @NonNull
    @C0.a
    public static final C2318c f1201E = new C2318c(0);

    @NonNull
    public static final Parcelable.Creator<C2318c> CREATOR = new D();

    @c.b
    public C2318c(@c.e(id = 1) int i10, @c.e(id = 2) int i11, @Nullable @c.e(id = 3) PendingIntent pendingIntent, @Nullable @c.e(id = 4) String str) {
        this.f1223b = i10;
        this.f1224c = i11;
        this.f1225d = pendingIntent;
        this.f1226e = str;
    }

    @NonNull
    public static String w0(int i10) {
        if (i10 == 99) {
            return "UNFINISHED";
        }
        if (i10 == 1500) {
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        switch (i10) {
            case -1:
                return "UNKNOWN";
            case 0:
                return "SUCCESS";
            case 1:
                return "SERVICE_MISSING";
            case 2:
                return "SERVICE_VERSION_UPDATE_REQUIRED";
            case 3:
                return "SERVICE_DISABLED";
            case 4:
                return "SIGN_IN_REQUIRED";
            case 5:
                return "INVALID_ACCOUNT";
            case 6:
                return "RESOLUTION_REQUIRED";
            case 7:
                return "NETWORK_ERROR";
            case 8:
                return "INTERNAL_ERROR";
            case 9:
                return "SERVICE_INVALID";
            case 10:
                return "DEVELOPER_ERROR";
            case 11:
                return "LICENSE_CHECK_FAILED";
            default:
                switch (i10) {
                    case 13:
                        return "CANCELED";
                    case 14:
                        return "TIMEOUT";
                    case 15:
                        return "INTERRUPTED";
                    case 16:
                        return "API_UNAVAILABLE";
                    case 17:
                        return "SIGN_IN_FAILED";
                    case 18:
                        return "SERVICE_UPDATING";
                    case 19:
                        return "SERVICE_MISSING_PERMISSION";
                    case 20:
                        return "RESTRICTED_PROFILE";
                    case 21:
                        return "API_VERSION_UPDATE_REQUIRED";
                    case 22:
                        return "RESOLUTION_ACTIVITY_NOT_FOUND";
                    case 23:
                        return "API_DISABLED";
                    case 24:
                        return "API_DISABLED_FOR_CONNECTION";
                    case 25:
                        return "API_INSTALL_REQUIRED";
                    default:
                        return "UNKNOWN_ERROR_CODE(" + i10 + ")";
                }
        }
    }

    @Nullable
    public PendingIntent b0() {
        return this.f1225d;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2318c)) {
            return false;
        }
        C2318c c2318c = (C2318c) obj;
        return this.f1224c == c2318c.f1224c && C2601y.b(this.f1225d, c2318c.f1225d) && C2601y.b(this.f1226e, c2318c.f1226e);
    }

    public int hashCode() {
        return C2601y.c(Integer.valueOf(this.f1224c), this.f1225d, this.f1226e);
    }

    public int n() {
        return this.f1224c;
    }

    public boolean n0() {
        return (this.f1224c == 0 || this.f1225d == null) ? false : true;
    }

    @Nullable
    public String t() {
        return this.f1226e;
    }

    @NonNull
    public String toString() {
        C2601y.a d10 = C2601y.d(this);
        d10.a("statusCode", w0(this.f1224c));
        d10.a(MediaStore.Video.VideoColumns.RESOLUTION, this.f1225d);
        d10.a("message", this.f1226e);
        return d10.toString();
    }

    public boolean u0() {
        return this.f1224c == 0;
    }

    public void v0(@NonNull Activity activity, int i10) throws IntentSender.SendIntentException {
        if (n0()) {
            PendingIntent pendingIntent = this.f1225d;
            G0.A.r(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i10, null, 0, 0, 0);
        }
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        int i11 = this.f1223b;
        int a10 = I0.b.a(parcel);
        I0.b.F(parcel, 1, i11);
        I0.b.F(parcel, 2, n());
        I0.b.S(parcel, 3, b0(), i10, false);
        I0.b.Y(parcel, 4, t(), false);
        I0.b.b(parcel, a10);
    }

    public C2318c(int i10) {
        this(i10, null, null);
    }

    public C2318c(int i10, @Nullable PendingIntent pendingIntent) {
        this(i10, pendingIntent, null);
    }

    public C2318c(int i10, @Nullable PendingIntent pendingIntent, @Nullable String str) {
        this(1, i10, pendingIntent, str);
    }
}
