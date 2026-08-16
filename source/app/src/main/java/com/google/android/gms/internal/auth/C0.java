package com.google.android.gms.internal.auth;

import android.util.Base64;
import android.util.Log;
import java.io.IOException;

public final class C0 extends H0 {

    public final f3 f61583m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0(D0 d02, String str, Object obj, boolean z10, f3 f3Var) {
        super(d02, "getTokenRefactor__blocked_packages", obj, true, null);
        this.f61583m = f3Var;
    }

    @Override
    public final Object a(Object obj) {
        try {
            return Z2.p(Base64.decode((String) obj, 3));
        } catch (IOException | IllegalArgumentException unused) {
            Log.e("PhenotypeFlag", "Invalid byte[] value for " + this.f61610b + ": " + ((String) obj));
            return null;
        }
    }
}
