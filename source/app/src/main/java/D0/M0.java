package D0;

import B0.C2320e;
import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import v1.C15791l;

public final class M0 extends AbstractC2453k0 {

    public final r f4580b;

    public final C15791l f4581c;

    public final InterfaceC2462p f4582d;

    public M0(int i10, r rVar, C15791l c15791l, InterfaceC2462p interfaceC2462p) {
        super(i10);
        this.f4581c = c15791l;
        this.f4580b = rVar;
        this.f4582d = interfaceC2462p;
        if (i10 == 2 && rVar.c()) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override
    public final void a(@NonNull Status status) {
        this.f4581c.d(this.f4582d.a(status));
    }

    @Override
    public final void b(@NonNull Exception exc) {
        this.f4581c.d(exc);
    }

    @Override
    public final void c(com.google.android.gms.common.api.internal.u uVar) throws DeadObjectException {
        try {
            this.f4580b.b(uVar.w(), this.f4581c);
        } catch (DeadObjectException e10) {
            throw e10;
        } catch (RemoteException e11) {
            a(N0.e(e11));
        } catch (RuntimeException e12) {
            this.f4581c.d(e12);
        }
    }

    @Override
    public final void d(@NonNull C2475w c2475w, boolean z10) {
        c2475w.d(this.f4581c, z10);
    }

    @Override
    public final boolean f(com.google.android.gms.common.api.internal.u uVar) {
        return this.f4580b.c();
    }

    @Override
    @Nullable
    public final C2320e[] g(com.google.android.gms.common.api.internal.u uVar) {
        return this.f4580b.e();
    }
}
