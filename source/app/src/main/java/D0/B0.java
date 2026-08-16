package D0;

import B0.C2318c;
import G0.C2570i;
import G0.C2579m0;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import androidx.annotation.BinderThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import java.util.Set;
import t1.BinderC15373d;

public final class B0 extends BinderC15373d implements AbstractC11908l.b, AbstractC11908l.c {

    public static final C11894a.AbstractC0948a f4538l = s1.e.f109176c;

    public final Context f4539e;

    public final Handler f4540f;

    public final C11894a.AbstractC0948a f4541g;

    public final Set f4542h;

    public final C2570i f4543i;

    public s1.f f4544j;

    public A0 f4545k;

    @WorkerThread
    public B0(Context context, Handler handler, @NonNull C2570i c2570i) {
        C11894a.AbstractC0948a abstractC0948a = f4538l;
        this.f4539e = context;
        this.f4540f = handler;
        this.f4543i = (C2570i) G0.A.s(c2570i, "ClientSettings must not be null");
        this.f4542h = c2570i.i();
        this.f4541g = abstractC0948a;
    }

    public static void g1(B0 b02, t1.l lVar) {
        C2318c n10 = lVar.n();
        if (n10.u0()) {
            C2579m0 c2579m0 = (C2579m0) G0.A.r(lVar.t());
            C2318c n11 = c2579m0.n();
            if (!n11.u0()) {
                String valueOf = String.valueOf(n11);
                Log.wtf("SignInCoordinator", "Sign-in succeeded with resolve account failure: ".concat(valueOf), new Exception());
                b02.f4545k.c(n11);
                b02.f4544j.j();
                return;
            }
            b02.f4545k.a(c2579m0.t(), b02.f4542h);
        } else {
            b02.f4545k.c(n10);
        }
        b02.f4544j.j();
    }

    @Override
    @BinderThread
    public final void N0(t1.l lVar) {
        this.f4540f.post(new RunnableC2482z0(this, lVar));
    }

    @Override
    @WorkerThread
    public final void h(@Nullable Bundle bundle) {
        this.f4544j.o(this);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.common.api.a$f, s1.f] */
    @WorkerThread
    public final void h1(A0 a02) {
        s1.f fVar = this.f4544j;
        if (fVar != null) {
            fVar.j();
        }
        this.f4543i.o(Integer.valueOf(System.identityHashCode(this)));
        C11894a.AbstractC0948a abstractC0948a = this.f4541g;
        Context context = this.f4539e;
        Handler handler = this.f4540f;
        C2570i c2570i = this.f4543i;
        this.f4544j = abstractC0948a.d(context, handler.getLooper(), c2570i, c2570i.k(), this, this);
        this.f4545k = a02;
        Set set = this.f4542h;
        if (set == null || set.isEmpty()) {
            this.f4540f.post(new RunnableC2480y0(this));
        } else {
            this.f4544j.d();
        }
    }

    public final void i1() {
        s1.f fVar = this.f4544j;
        if (fVar != null) {
            fVar.j();
        }
    }

    @Override
    @WorkerThread
    public final void k(int i10) {
        this.f4545k.d(i10);
    }

    @Override
    @WorkerThread
    public final void t(@NonNull C2318c c2318c) {
        this.f4545k.c(c2318c);
    }
}
