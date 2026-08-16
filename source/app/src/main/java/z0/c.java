package Z0;

import D0.C2434b;
import D0.InterfaceC2458n;
import D0.InterfaceC2462p;
import a1.C3539g;
import a1.C3540h;
import a1.C3545m;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import j1.V;
import j1.W;
import j1.Z;
import java.util.List;
import v1.AbstractC15790k;
import v1.C15791l;

public class c extends AbstractC11907k<C11894a.d.C0950d> {

    public static final C11894a.g f30664k;

    public static final C11894a f30665l;

    static {
        C11894a.g gVar = new C11894a.g();
        f30664k = gVar;
        f30665l = new C11894a("Fido.FIDO2_PRIVILEGED_API", new V(), gVar);
    }

    @Deprecated
    public c(@NonNull Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f30665l, C11894a.d.f61053n4, (InterfaceC2462p) new C2434b());
    }

    @NonNull
    public AbstractC15790k<List<C3545m>> g0(@NonNull final String str) {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                c cVar = c.this;
                String str2 = str;
                ((Z) ((W) obj).M()).t(new y(cVar, (C15791l) obj2), str2);
            }
        }).f(5430).a());
    }

    @NonNull
    @Deprecated
    public AbstractC15790k<b> h0(@NonNull final C3539g c3539g) {
        return N(D0.r.a().f(5414).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                c cVar = c.this;
                C3539g c3539g2 = c3539g;
                ((Z) ((W) obj).M()).l0(new v(cVar, (C15791l) obj2), c3539g2);
            }
        }).a());
    }

    @NonNull
    public AbstractC15790k<PendingIntent> i0(@NonNull final C3539g c3539g) {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                c cVar = c.this;
                C3539g c3539g2 = c3539g;
                ((Z) ((W) obj).M()).l0(new t(cVar, (C15791l) obj2), c3539g2);
            }
        }).f(5412).a());
    }

    @NonNull
    @Deprecated
    public AbstractC15790k<b> j0(@NonNull final C3540h c3540h) {
        return N(D0.r.a().f(5415).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                c cVar = c.this;
                C3540h c3540h2 = c3540h;
                ((Z) ((W) obj).M()).e1(new w(cVar, (C15791l) obj2), c3540h2);
            }
        }).a());
    }

    @NonNull
    public AbstractC15790k<PendingIntent> k0(@NonNull final C3540h c3540h) {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                c cVar = c.this;
                C3540h c3540h2 = c3540h;
                ((Z) ((W) obj).M()).e1(new u(cVar, (C15791l) obj2), c3540h2);
            }
        }).f(5413).a());
    }

    @NonNull
    public AbstractC15790k<Boolean> l0() {
        return N(D0.r.a().c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((Z) ((W) obj).M()).f1(new x(c.this, (C15791l) obj2));
            }
        }).e(Y0.c.f29705h).f(5416).a());
    }

    @Deprecated
    public c(@NonNull Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f30665l, C11894a.d.f61053n4, new C2434b());
    }
}
