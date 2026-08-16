package z0;

import D0.C2454l;
import G0.A;
import G0.C2601y;
import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.SignInConfiguration;
import com.google.android.gms.auth.api.signin.internal.SignInHubActivity;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import java.util.HashSet;
import java.util.Iterator;

public final class C16232q {

    public static final K0.a f130530a = new K0.a("GoogleSignInCommon", new String[0]);

    public static Intent a(Context context, GoogleSignInOptions googleSignInOptions) {
        f130530a.a("getSignInIntent()", new Object[0]);
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setPackage(context.getPackageName());
        intent.setClass(context, SignInHubActivity.class);
        Bundle bundle = new Bundle();
        bundle.putParcelable("config", signInConfiguration);
        intent.putExtra("config", bundle);
        return intent;
    }

    public static Intent b(Context context, GoogleSignInOptions googleSignInOptions) {
        f130530a.a("getFallbackSignInIntent()", new Object[0]);
        Intent a10 = a(context, googleSignInOptions);
        a10.setAction("com.google.android.gms.auth.APPAUTH_SIGN_IN");
        return a10;
    }

    public static Intent c(Context context, GoogleSignInOptions googleSignInOptions) {
        f130530a.a("getNoImplementationSignInIntent()", new Object[0]);
        Intent a10 = a(context, googleSignInOptions);
        a10.setAction("com.google.android.gms.auth.NO_IMPL");
        return a10;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0097  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.google.android.gms.common.api.o d(AbstractC11908l abstractC11908l, Context context, GoogleSignInOptions googleSignInOptions, boolean z10) {
        GoogleSignInAccount d10;
        y0.d dVar;
        K0.a aVar = f130530a;
        aVar.a("silentSignIn()", new Object[0]);
        aVar.a("getEligibleSavedSignInResult()", new Object[0]);
        A.r(googleSignInOptions);
        GoogleSignInOptions e10 = C16233r.a(context).e();
        if (e10 != null) {
            Account h10 = e10.h();
            Account h11 = googleSignInOptions.h();
            if (h10 != null ? h10.equals(h11) : h11 == null) {
                if (!googleSignInOptions.x0() && ((!googleSignInOptions.w0() || (e10.w0() && C2601y.b(googleSignInOptions.u0(), e10.u0()))) && new HashSet(e10.n0()).containsAll(new HashSet(googleSignInOptions.n0())) && (d10 = C16233r.a(context).d()) != null && !d10.C0())) {
                    dVar = new y0.d(d10, Status.f61039g);
                    if (dVar == null) {
                        aVar.a("Eligible saved sign in result found", new Object[0]);
                        return com.google.android.gms.common.api.q.e(dVar, abstractC11908l);
                    }
                    if (z10) {
                        return com.google.android.gms.common.api.q.e(new y0.d(null, new Status(4)), abstractC11908l);
                    }
                    aVar.a("trySilentSignIn()", new Object[0]);
                    return new C2454l(abstractC11908l.l(new C16226k(abstractC11908l, context, googleSignInOptions)));
                }
            }
        }
        dVar = null;
        if (dVar == null) {
        }
    }

    public static com.google.android.gms.common.api.p e(AbstractC11908l abstractC11908l, Context context, boolean z10) {
        f130530a.a("Signing out", new Object[0]);
        h(context);
        return z10 ? com.google.android.gms.common.api.q.g(Status.f61039g, abstractC11908l) : abstractC11908l.m(new C16228m(abstractC11908l));
    }

    public static com.google.android.gms.common.api.p f(AbstractC11908l abstractC11908l, Context context, boolean z10) {
        f130530a.a("Revoking access", new Object[0]);
        String e10 = C16218c.b(context).e();
        h(context);
        return z10 ? RunnableC16221f.a(e10) : abstractC11908l.m(new C16230o(abstractC11908l));
    }

    @Nullable
    public static y0.d g(@Nullable Intent intent) {
        if (intent == null) {
            return new y0.d(null, Status.f61041i);
        }
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        if (googleSignInAccount != null) {
            return new y0.d(googleSignInAccount, Status.f61039g);
        }
        if (status == null) {
            status = Status.f61041i;
        }
        return new y0.d(null, status);
    }

    public static void h(Context context) {
        C16233r.a(context).b();
        Iterator<AbstractC11908l> it = AbstractC11908l.n().iterator();
        while (it.hasNext()) {
            it.next().z();
        }
        com.google.android.gms.common.api.internal.d.a();
    }
}
