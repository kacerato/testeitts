package y0;

import B0.C2323h;
import B0.C2326k;
import D0.C2434b;
import D0.InterfaceC2462p;
import G0.C2603z;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.dynamite.DynamiteModule;
import u0.C15559a;
import v1.AbstractC15790k;
import z0.C16232q;

@Deprecated
public class C16131b extends AbstractC11907k<GoogleSignInOptions> {

    public static final k f129886k = new k(null);

    @VisibleForTesting
    public static int f129887l = 1;

    public C16131b(@NonNull Activity activity, GoogleSignInOptions googleSignInOptions) {
        super(activity, C15559a.f117976b, googleSignInOptions, (InterfaceC2462p) new C2434b());
    }

    @NonNull
    public AbstractC15790k<Void> C() {
        return C2603z.c(C16232q.e(H(), W(), j0() == 3));
    }

    @NonNull
    public Intent g0() {
        Context W10 = W();
        int j02 = j0();
        int i10 = j02 - 1;
        if (j02 != 0) {
            return i10 != 2 ? i10 != 3 ? C16232q.c(W10, V()) : C16232q.a(W10, V()) : C16232q.b(W10, V());
        }
        throw null;
    }

    @NonNull
    public AbstractC15790k<Void> h0() {
        return C2603z.c(C16232q.f(H(), W(), j0() == 3));
    }

    @NonNull
    public AbstractC15790k<GoogleSignInAccount> i0() {
        return C2603z.b(C16232q.d(H(), W(), V(), j0() == 3), f129886k);
    }

    public final synchronized int j0() {
        int i10;
        try {
            i10 = f129887l;
            if (i10 == 1) {
                Context W10 = W();
                C2323h x10 = C2323h.x();
                int k10 = x10.k(W10, C2326k.f1252a);
                if (k10 == 0) {
                    i10 = 4;
                    f129887l = 4;
                } else if (x10.e(W10, k10, null) != null || DynamiteModule.a(W10, "com.google.android.gms.auth.api.fallback") == 0) {
                    i10 = 2;
                    f129887l = 2;
                } else {
                    i10 = 3;
                    f129887l = 3;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return i10;
    }

    public C16131b(@NonNull Context context, GoogleSignInOptions googleSignInOptions) {
        super(context, C15559a.f117976b, googleSignInOptions, new AbstractC11907k.a.C0953a().c(new C2434b()).a());
    }
}
