package f1;

import D0.InterfaceC2458n;
import android.app.Activity;
import android.content.Context;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import v1.AbstractC15790k;
import v1.C15791l;
import w0.InterfaceC15871b;

public final class u extends AbstractC11907k implements InterfaceC15871b {

    public static final C11894a.g f85966k;

    public static final C11894a.AbstractC0948a f85967l;

    public static final C11894a f85968m;

    static {
        C11894a.g gVar = new C11894a.g();
        f85966k = gVar;
        q qVar = new q();
        f85967l = qVar;
        f85968m = new C11894a("SmsCodeAutofill.API", qVar, gVar);
    }

    public u(Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f85968m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }

    @Override
    public final AbstractC15790k<Void> b() {
        return T(D0.r.a().e(d.f85953a).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((k) ((z) obj).M()).e1(new r(u.this, (C15791l) obj2));
            }
        }).f(1563).a());
    }

    @Override
    public final AbstractC15790k<Boolean> f(final String str) {
        G0.A.r(str);
        G0.A.b(!str.isEmpty(), "The package name cannot be empty.");
        return N(D0.r.a().e(d.f85953a).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((k) ((z) obj).M()).l0(str, new t(u.this, (C15791l) obj2));
            }
        }).f(1565).a());
    }

    @Override
    public final AbstractC15790k<Integer> o() {
        return N(D0.r.a().e(d.f85953a).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                ((k) ((z) obj).M()).t(new s(u.this, (C15791l) obj2));
            }
        }).f(1564).a());
    }

    public u(Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f85968m, C11894a.d.f61053n4, AbstractC11907k.a.f61274c);
    }
}
