package i1;

import com.google.android.gms.internal.consent_sdk.zzj;
import java.util.concurrent.atomic.AtomicReference;
import u2.C15571f;

public final class C {

    public final p0<InterfaceC13571t> f91169a;

    public final AtomicReference<E> f91170b = new AtomicReference<>();

    public C(p0<InterfaceC13571t> p0Var) {
        this.f91169a = p0Var;
    }

    public final void a(C15571f.b bVar, C15571f.a aVar) {
        C13553h0.a();
        E e10 = this.f91170b.get();
        if (e10 == null) {
            aVar.b(new zzj(3, "No available form can be built.").zza());
            return;
        }
        InterfaceC13571t O12 = this.f91169a.O1();
        O12.a(e10);
        O12.O1().N1().c(bVar, aVar);
    }

    public final void b(E e10) {
        this.f91170b.set(e10);
    }

    public final boolean c() {
        return this.f91170b.get() != null;
    }
}
