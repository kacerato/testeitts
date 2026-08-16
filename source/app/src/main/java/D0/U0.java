package D0;

import B0.C2318c;
import B0.C2323h;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.concurrent.atomic.AtomicReference;

public abstract class U0 extends C2446h implements DialogInterface.OnCancelListener {

    public volatile boolean f4612c;

    public final AtomicReference f4613d;

    public final Handler f4614e;

    public final C2323h f4615f;

    @VisibleForTesting
    public U0(InterfaceC2448i interfaceC2448i, C2323h c2323h) {
        super(interfaceC2448i);
        this.f4613d = new AtomicReference(null);
        this.f4614e = new g1.u(Looper.getMainLooper());
        this.f4615f = c2323h;
    }

    public static final int q(@Nullable R0 r02) {
        if (r02 == null) {
            return -1;
        }
        return r02.a();
    }

    @Override
    public final void f(int i10, int i11, Intent intent) {
        R0 r02 = (R0) this.f4613d.get();
        if (i10 != 1) {
            if (i10 == 2) {
                int j10 = this.f4615f.j(b());
                if (j10 == 0) {
                    p();
                    return;
                } else {
                    if (r02 == null) {
                        return;
                    }
                    if (r02.b().n() == 18 && j10 == 18) {
                        return;
                    }
                }
            }
        } else if (i11 == -1) {
            p();
            return;
        } else if (i11 == 0) {
            if (r02 != null) {
                m(new C2318c(intent != null ? intent.getIntExtra("<<ResolutionFailureErrorDetail>>", 13) : 13, null, r02.b().toString()), q(r02));
                return;
            }
            return;
        }
        if (r02 != null) {
            m(r02.b(), r02.a());
        }
    }

    @Override
    public final void g(@Nullable Bundle bundle) {
        super.g(bundle);
        if (bundle != null) {
            this.f4613d.set(bundle.getBoolean("resolving_error", false) ? new R0(new C2318c(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution")), bundle.getInt("failed_client_id", -1)) : null);
        }
    }

    @Override
    public final void j(Bundle bundle) {
        super.j(bundle);
        R0 r02 = (R0) this.f4613d.get();
        if (r02 == null) {
            return;
        }
        bundle.putBoolean("resolving_error", true);
        bundle.putInt("failed_client_id", r02.a());
        bundle.putInt("failed_status", r02.b().n());
        bundle.putParcelable("failed_resolution", r02.b().b0());
    }

    @Override
    public void k() {
        super.k();
        this.f4612c = true;
    }

    @Override
    public void l() {
        super.l();
        this.f4612c = false;
    }

    public final void m(C2318c c2318c, int i10) {
        this.f4613d.set(null);
        n(c2318c, i10);
    }

    public abstract void n(C2318c c2318c, int i10);

    public abstract void o();

    @Override
    public final void onCancel(DialogInterface dialogInterface) {
        m(new C2318c(13, null), q((R0) this.f4613d.get()));
    }

    public final void p() {
        this.f4613d.set(null);
        o();
    }

    public final void t(C2318c c2318c, int i10) {
        AtomicReference atomicReference;
        R0 r02 = new R0(c2318c, i10);
        do {
            atomicReference = this.f4613d;
            if (androidx.lifecycle.c.a(atomicReference, null, r02)) {
                this.f4614e.post(new T0(this, r02));
                return;
            }
        } while (atomicReference.get() == null);
    }
}
