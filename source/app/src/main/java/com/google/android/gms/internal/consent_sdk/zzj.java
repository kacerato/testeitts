package com.google.android.gms.internal.consent_sdk;

import android.util.Log;
import u2.C15570e;

public final class zzj extends Exception {
    private final int zza;

    public zzj(int i10, String str) {
        super(str);
        this.zza = i10;
    }

    public final C15570e zza() {
        if (getCause() == null) {
            Log.w("UserMessagingPlatform", getMessage());
        } else {
            Log.w("UserMessagingPlatform", getMessage(), getCause());
        }
        return new C15570e(this.zza, getMessage());
    }

    public zzj(int i10, String str, Throwable th2) {
        super(str, th2);
        this.zza = i10;
    }
}
