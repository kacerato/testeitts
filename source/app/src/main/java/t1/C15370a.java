package t1;

import B0.C2318c;
import B0.C2326k;
import G0.A;
import G0.AbstractC2564f;
import G0.AbstractC2580n;
import G0.C2570i;
import G0.C2575k0;
import G0.r;
import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;
import z0.C16218c;

@C0.a
public class C15370a extends AbstractC2580n<g> implements s1.f {

    public static final int f109698V = 0;

    public final boolean f109699R;

    public final C2570i f109700S;

    public final Bundle f109701T;

    @Nullable
    public final Integer f109702U;

    public C15370a(@NonNull Context context, @NonNull Looper looper, boolean z10, @NonNull C2570i c2570i, @NonNull Bundle bundle, @NonNull AbstractC11908l.b bVar, @NonNull AbstractC11908l.c cVar) {
        super(context, looper, 44, c2570i, bVar, cVar);
        this.f109699R = true;
        this.f109700S = c2570i;
        this.f109701T = bundle;
        this.f109702U = c2570i.l();
    }

    @NonNull
    @C0.a
    public static Bundle v0(@NonNull C2570i c2570i) {
        c2570i.k();
        Integer l10 = c2570i.l();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", c2570i.b());
        if (l10 != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", l10.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    @Override
    @NonNull
    public final Bundle I() {
        if (!G().getPackageName().equals(this.f109700S.h())) {
            this.f109701T.putString("com.google.android.gms.signin.internal.realClientPackageName", this.f109700S.h());
        }
        return this.f109701T;
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.signin.service.START";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void c() {
        try {
            ((g) M()).e1(((Integer) A.r(this.f109702U)).intValue());
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override
    public final void d() {
        s(new AbstractC2564f.d());
    }

    @Override
    public final boolean g() {
        return this.f109699R;
    }

    @Override
    public final int l() {
        return C2326k.f1252a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void o(InterfaceC15375f interfaceC15375f) {
        A.s(interfaceC15375f, "Expecting a valid ISignInCallbacks");
        try {
            Account d10 = this.f109700S.d();
            ((g) M()).g1(new j(1, new C2575k0(d10, ((Integer) A.r(this.f109702U)).intValue(), "<<default account>>".equals(d10.name) ? C16218c.b(G()).c() : null)), interfaceC15375f);
        } catch (RemoteException e10) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                interfaceC15375f.N0(new l(1, new C2318c(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e10);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void u(@NonNull r rVar, boolean z10) {
        try {
            ((g) M()).f1(rVar, ((Integer) A.r(this.f109702U)).intValue(), z10);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    @Override
    @NonNull
    public final IInterface z(@NonNull IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof g ? (g) queryLocalInterface : new g(iBinder);
    }
}
