package Z0;

import D0.C2434b;
import D0.InterfaceC2458n;
import D0.InterfaceC2462p;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import j1.a0;
import j1.b0;
import j1.e0;
import v1.AbstractC15790k;
import v1.C15791l;

public class a extends AbstractC11907k<C11894a.d.C0950d> {

    public static final C11894a.g f30662k;

    public static final C11894a f30663l;

    static {
        C11894a.g gVar = new C11894a.g();
        f30662k = gVar;
        f30663l = new C11894a("Fido.FIDO2_API", new a0(), gVar);
    }

    @Deprecated
    public a(@NonNull Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f30663l, C11894a.d.f61053n4, (InterfaceC2462p) new C2434b());
    }

    @NonNull
    @Deprecated
    public AbstractC15790k<b> g0(@NonNull final com.google.android.gms.fido.fido2.api.common.d dVar) {
        return N(D0.r.a().f(5409).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                a aVar = a.this;
                com.google.android.gms.fido.fido2.api.common.d dVar2 = dVar;
                ((e0) ((b0) obj).M()).t(new k(aVar, (C15791l) obj2), dVar2);
            }
        }).a());
    }

    @NonNull
    public AbstractC15790k<PendingIntent> h0(@NonNull final com.google.android.gms.fido.fido2.api.common.d dVar) {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                a aVar = a.this;
                com.google.android.gms.fido.fido2.api.common.d dVar2 = dVar;
                ((e0) ((b0) obj).M()).t(new i(aVar, (C15791l) obj2), dVar2);
            }
        }).f(5407).a());
    }

    @NonNull
    @Deprecated
    public AbstractC15790k<b> i0(@NonNull final a1.r rVar) {
        return N(D0.r.a().f(5410).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                a aVar = a.this;
                a1.r rVar2 = rVar;
                ((e0) ((b0) obj).M()).l0(new l(aVar, (C15791l) obj2), rVar2);
            }
        }).a());
    }

    @NonNull
    public AbstractC15790k<PendingIntent> j0(@NonNull final a1.r rVar) {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                a aVar = a.this;
                a1.r rVar2 = rVar;
                ((e0) ((b0) obj).M()).l0(new j(aVar, (C15791l) obj2), rVar2);
            }
        }).f(5408).a());
    }

    @NonNull
    public AbstractC15790k<Boolean> k0() {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((e0) ((b0) obj).M()).e1(new m(a.this, (C15791l) obj2));
            }
        }).e(Y0.c.f29705h).f(5411).a());
    }

    @Deprecated
    public a(@NonNull Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f30663l, C11894a.d.f61053n4, new C2434b());
    }
}
