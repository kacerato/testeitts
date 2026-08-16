package b1;

import D0.C2434b;
import D0.InterfaceC2458n;
import D0.InterfaceC2462p;
import D0.r;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.fido.u2f.api.common.RegisterRequestParams;
import com.google.android.gms.fido.u2f.api.common.SignRequestParams;
import j1.i0;
import j1.j0;
import j1.k0;
import v1.AbstractC15790k;
import v1.C15791l;

@Deprecated
public class C3828a extends AbstractC11907k<C11894a.d.C0950d> {

    public static final C11894a.g f32810k;

    public static final C11894a f32811l;

    static {
        C11894a.g gVar = new C11894a.g();
        f32810k = gVar;
        f32811l = new C11894a("Fido.U2F_API", new j0(), gVar);
    }

    public C3828a(@NonNull Activity activity) {
        super(activity, (C11894a<C11894a.d.C0950d>) f32811l, C11894a.d.f61053n4, (InterfaceC2462p) new C2434b());
    }

    @NonNull
    public AbstractC15790k<InterfaceC3829b> g0(@NonNull final RegisterRequestParams registerRequestParams) {
        return N(r.a().f(5424).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C3828a c3828a = C3828a.this;
                RegisterRequestParams registerRequestParams2 = registerRequestParams;
                ((i0) ((k0) obj).M()).t(new e(c3828a, (C15791l) obj2), registerRequestParams2);
            }
        }).a());
    }

    @NonNull
    public AbstractC15790k<InterfaceC3829b> h0(@NonNull final SignRequestParams signRequestParams) {
        return N(r.a().f(5425).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C3828a c3828a = C3828a.this;
                SignRequestParams signRequestParams2 = signRequestParams;
                ((i0) ((k0) obj).M()).l0(new f(c3828a, (C15791l) obj2), signRequestParams2);
            }
        }).a());
    }

    public C3828a(@NonNull Context context) {
        super(context, (C11894a<C11894a.d.C0950d>) f32811l, C11894a.d.f61053n4, new C2434b());
    }
}
