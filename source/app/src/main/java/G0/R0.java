package G0;

import B0.C2318c;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentProviderClient;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.zzaj;

public final class R0 {

    public static final Uri f7309f = new Uri.Builder().scheme("content").authority("com.google.android.gms.chimera").build();

    @Nullable
    public final String f7310a;

    @Nullable
    public final String f7311b;

    @Nullable
    public final ComponentName f7312c;

    public final int f7313d;

    public final boolean f7314e;

    public R0(ComponentName componentName, int i10) {
        this.f7310a = null;
        this.f7311b = null;
        A.r(componentName);
        this.f7312c = componentName;
        this.f7313d = 4225;
        this.f7314e = false;
    }

    @Nullable
    public final ComponentName a() {
        return this.f7312c;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Intent b(Context context) throws zzaj {
        Bundle bundle;
        PendingIntent pendingIntent;
        ContentProviderClient acquireUnstableContentProviderClient;
        if (this.f7310a == null) {
            return new Intent().setComponent(this.f7312c);
        }
        Intent intent = null;
        if (this.f7314e) {
            Bundle bundle2 = new Bundle();
            bundle2.putString("serviceActionBundleKey", this.f7310a);
            try {
                acquireUnstableContentProviderClient = context.getContentResolver().acquireUnstableContentProviderClient(f7309f);
            } catch (RemoteException e10) {
                e = e10;
                bundle = null;
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                if (bundle == null) {
                }
                if (intent == null) {
                }
                if (intent == null) {
                }
            } catch (IllegalArgumentException e11) {
                e = e11;
                bundle = null;
                Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                if (bundle == null) {
                }
                if (intent == null) {
                }
                if (intent == null) {
                }
            }
            if (acquireUnstableContentProviderClient == null) {
                throw new RemoteException("Failed to acquire ContentProviderClient");
            }
            try {
                bundle = acquireUnstableContentProviderClient.call("serviceIntentCall", null, bundle2);
                try {
                } catch (RemoteException e12) {
                    e = e12;
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                    if (bundle == null) {
                    }
                    if (intent == null) {
                    }
                    if (intent == null) {
                    }
                } catch (IllegalArgumentException e13) {
                    e = e13;
                    Log.w("ConnectionStatusConfig", "Dynamic intent resolution failed: ".concat(e.toString()));
                    if (bundle == null) {
                    }
                    if (intent == null) {
                    }
                    if (intent == null) {
                    }
                }
                if (bundle == null && (intent = (Intent) bundle.getParcelable("serviceResponseIntentKey")) == null && (pendingIntent = (PendingIntent) bundle.getParcelable("serviceMissingResolutionIntentKey")) != null) {
                    Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action " + this.f7310a + " but has possible resolution");
                    throw new zzaj(new C2318c(25, pendingIntent));
                }
                if (intent == null) {
                    Log.w("ConnectionStatusConfig", "Dynamic lookup for intent failed for action: ".concat(String.valueOf(this.f7310a)));
                }
            } finally {
                acquireUnstableContentProviderClient.release();
            }
        }
        return intent == null ? new Intent(this.f7310a).setPackage(this.f7311b) : intent;
    }

    @Nullable
    public final String c() {
        return this.f7311b;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof R0)) {
            return false;
        }
        R0 r02 = (R0) obj;
        return C2601y.b(this.f7310a, r02.f7310a) && C2601y.b(this.f7311b, r02.f7311b) && C2601y.b(this.f7312c, r02.f7312c) && this.f7314e == r02.f7314e;
    }

    public final int hashCode() {
        return C2601y.c(this.f7310a, this.f7311b, this.f7312c, 4225, Boolean.valueOf(this.f7314e));
    }

    public final String toString() {
        String str = this.f7310a;
        if (str != null) {
            return str;
        }
        A.r(this.f7312c);
        return this.f7312c.flattenToString();
    }

    public R0(String str, int i10, boolean z10) {
        this(str, "com.google.android.gms", 4225, false);
    }

    public R0(String str, String str2, int i10, boolean z10) {
        A.l(str);
        this.f7310a = str;
        A.l(str2);
        this.f7311b = str2;
        this.f7312c = null;
        this.f7313d = 4225;
        this.f7314e = z10;
    }
}
