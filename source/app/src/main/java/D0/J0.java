package D0;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.u;
import java.lang.ref.WeakReference;

public final class J0<R extends com.google.android.gms.common.api.u> extends com.google.android.gms.common.api.z<R> implements com.google.android.gms.common.api.v<R> {

    public final WeakReference f4571g;

    public final H0 f4572h;

    @Nullable
    public com.google.android.gms.common.api.x f4565a = null;

    @Nullable
    public J0 f4566b = null;

    @Nullable
    public volatile com.google.android.gms.common.api.w f4567c = null;

    @Nullable
    public com.google.android.gms.common.api.p f4568d = null;

    public final Object f4569e = new Object();

    @Nullable
    public Status f4570f = null;

    public boolean f4573i = false;

    /* JADX WARN: Multi-variable type inference failed */
    public J0(WeakReference weakReference) {
        G0.A.s(weakReference, "GoogleApiClient reference must not be null");
        this.f4571g = weakReference;
        AbstractC11908l abstractC11908l = (AbstractC11908l) weakReference.get();
        this.f4572h = new H0(this, abstractC11908l != null ? abstractC11908l.r() : Looper.getMainLooper());
    }

    public static final void q(com.google.android.gms.common.api.u uVar) {
        if (uVar instanceof com.google.android.gms.common.api.r) {
            try {
                ((com.google.android.gms.common.api.r) uVar).release();
            } catch (RuntimeException e10) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(uVar)), e10);
            }
        }
    }

    @Override
    public final void a(com.google.android.gms.common.api.u uVar) {
        synchronized (this.f4569e) {
            try {
                if (!uVar.getStatus().x0()) {
                    m(uVar.getStatus());
                    q(uVar);
                } else if (this.f4565a != null) {
                    C2476w0.a().submit(new G0(this, uVar));
                } else if (p()) {
                    ((com.google.android.gms.common.api.w) G0.A.r(this.f4567c)).c(uVar);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void b(@NonNull com.google.android.gms.common.api.w<? super R> wVar) {
        synchronized (this.f4569e) {
            G0.A.y(this.f4567c == null, "Cannot call andFinally() twice.");
            G0.A.y(this.f4565a == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f4567c = wVar;
            n();
        }
    }

    @Override
    @NonNull
    public final <S extends com.google.android.gms.common.api.u> com.google.android.gms.common.api.z<S> c(@NonNull com.google.android.gms.common.api.x<? super R, ? extends S> xVar) {
        J0 j02;
        synchronized (this.f4569e) {
            G0.A.y(this.f4565a == null, "Cannot call then() twice.");
            G0.A.y(this.f4567c == null, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f4565a = xVar;
            j02 = new J0(this.f4571g);
            this.f4566b = j02;
            n();
        }
        return j02;
    }

    public final void k() {
        this.f4567c = null;
    }

    public final void l(com.google.android.gms.common.api.p pVar) {
        synchronized (this.f4569e) {
            this.f4568d = pVar;
            n();
        }
    }

    public final void m(Status status) {
        synchronized (this.f4569e) {
            this.f4570f = status;
            o(status);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @J2.a("syncToken")
    public final void n() {
        if (this.f4565a == null && this.f4567c == null) {
            return;
        }
        AbstractC11908l abstractC11908l = (AbstractC11908l) this.f4571g.get();
        if (!this.f4573i && this.f4565a != null && abstractC11908l != null) {
            abstractC11908l.H(this);
            this.f4573i = true;
        }
        Status status = this.f4570f;
        if (status != null) {
            o(status);
            return;
        }
        com.google.android.gms.common.api.p pVar = this.f4568d;
        if (pVar != null) {
            pVar.h(this);
        }
    }

    public final void o(Status status) {
        synchronized (this.f4569e) {
            try {
                com.google.android.gms.common.api.x xVar = this.f4565a;
                if (xVar != null) {
                    ((J0) G0.A.r(this.f4566b)).m((Status) G0.A.s(xVar.b(status), "onFailure must not return null"));
                } else if (p()) {
                    ((com.google.android.gms.common.api.w) G0.A.r(this.f4567c)).b(status);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @J2.a("syncToken")
    public final boolean p() {
        return (this.f4567c == null || ((AbstractC11908l) this.f4571g.get()) == null) ? false : true;
    }
}
