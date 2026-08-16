package z0;

import B0.C2326k;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Scope;
import e1.C12999x;
import java.util.Iterator;

public final class C16224i extends AbstractC2580n {

    public final GoogleSignInOptions f130522R;

    public C16224i(Context context, Looper looper, C2570i c2570i, @Nullable GoogleSignInOptions googleSignInOptions, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 91, c2570i, bVar, cVar);
        GoogleSignInOptions.a aVar = googleSignInOptions != null ? new GoogleSignInOptions.a(googleSignInOptions) : new GoogleSignInOptions.a();
        aVar.l(C12999x.a());
        if (!c2570i.e().isEmpty()) {
            Iterator<Scope> it = c2570i.e().iterator();
            while (it.hasNext()) {
                aVar.g(it.next(), new Scope[0]);
            }
        }
        this.f130522R = aVar.b();
    }

    @Override
    public final String N() {
        return "com.google.android.gms.auth.api.signin.internal.ISignInService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.auth.api.signin.service.START";
    }

    @Override
    public final boolean b() {
        return true;
    }

    @Override
    public final int l() {
        return C2326k.f1252a;
    }

    @Override
    public final Intent m() {
        return C16232q.a(G(), this.f130522R);
    }

    public final GoogleSignInOptions v0() {
        return this.f130522R;
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
        return queryLocalInterface instanceof C16238w ? (C16238w) queryLocalInterface : new C16238w(iBinder);
    }
}
