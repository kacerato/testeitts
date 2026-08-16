package e1;

import B0.C2320e;
import D0.InterfaceC2458n;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.C11882c;
import com.google.android.gms.auth.api.identity.C11883d;
import com.google.android.gms.auth.api.identity.C11886g;
import com.google.android.gms.auth.api.identity.C11887h;
import com.google.android.gms.auth.api.identity.C11893n;
import com.google.android.gms.auth.api.identity.InterfaceC11892m;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import java.util.Iterator;
import v1.AbstractC15790k;
import v1.C15791l;

public final class C12996u extends AbstractC11907k implements InterfaceC11892m {

    public static final C11894a.g f84989l;

    public static final C11894a.AbstractC0948a f84990m;

    public static final C11894a f84991n;

    public final String f84992k;

    static {
        C11894a.g gVar = new C11894a.g();
        f84989l = gVar;
        C12988l c12988l = new C12988l();
        f84990m = c12988l;
        f84991n = new C11894a("Auth.Api.Identity.SignIn.API", c12988l, gVar);
    }

    public C12996u(@NonNull Activity activity, @NonNull com.google.android.gms.auth.api.identity.M m10) {
        super(activity, (C11894a<com.google.android.gms.auth.api.identity.M>) f84991n, m10, AbstractC11907k.a.f61274c);
        this.f84992k = C12999x.a();
    }

    @Override
    public final AbstractC15790k<PendingIntent> B(@NonNull final C11886g c11886g) {
        G0.A.r(c11886g);
        return N(D0.r.a().e(C12998w.f85002i).c(new InterfaceC2458n() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C12996u.this.h0(c11886g, (C12997v) obj, (C15791l) obj2);
            }
        }).f(1653).a());
    }

    @Override
    public final AbstractC15790k<Void> C() {
        W().getSharedPreferences("com.google.android.gms.signin", 0).edit().clear().apply();
        Iterator<AbstractC11908l> it = AbstractC11908l.n().iterator();
        while (it.hasNext()) {
            it.next().z();
        }
        com.google.android.gms.common.api.internal.d.a();
        return T(D0.r.a().e(C12998w.f84995b).c(new InterfaceC2458n() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C12996u.this.g0((C12997v) obj, (C15791l) obj2);
            }
        }).d(false).f(1554).a());
    }

    @Override
    public final AbstractC15790k<C11883d> E(@NonNull C11882c c11882c) {
        G0.A.r(c11882c);
        C11882c.a x02 = C11882c.x0(c11882c);
        x02.h(this.f84992k);
        final C11882c a10 = x02.a();
        return N(D0.r.a().e(new C2320e("auth_api_credentials_begin_sign_in", 8L)).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C12997v c12997v = (C12997v) obj;
                ((i0) c12997v.M()).t(new BinderC12989m(C12996u.this, (C15791l) obj2), (C11882c) G0.A.r(a10), C12975A.a(c12997v.G()));
            }
        }).d(false).f(1553).a());
    }

    @Override
    public final AbstractC15790k<PendingIntent> c(@NonNull C11887h c11887h) {
        G0.A.r(c11887h);
        C11887h.a w02 = C11887h.w0(c11887h);
        w02.g(this.f84992k);
        final C11887h a10 = w02.a();
        return N(D0.r.a().e(C12998w.f85000g).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                C12997v c12997v = (C12997v) obj;
                ((i0) c12997v.M()).e1(new BinderC12991o(C12996u.this, (C15791l) obj2), (C11887h) G0.A.r(a10), C12975A.a(c12997v.G()));
            }
        }).f(1555).a());
    }

    @Override
    public final C11893n d(@Nullable Intent intent) throws ApiException {
        if (intent == null) {
            throw new ApiException(Status.f61041i);
        }
        Status status = (Status) I0.d.b(intent, "status", Status.CREATOR);
        if (status == null) {
            throw new ApiException(Status.f61043k);
        }
        if (!status.x0()) {
            throw new ApiException(status);
        }
        C11893n c11893n = (C11893n) I0.d.b(intent, "sign_in_credential", C11893n.CREATOR);
        if (c11893n != null) {
            return c11893n;
        }
        throw new ApiException(Status.f61041i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g0(C12997v c12997v, C15791l c15791l) {
        BinderC12990n binderC12990n = new BinderC12990n(this, c15791l);
        ((i0) c12997v.M()).l0(binderC12990n, this.f84992k, C12975A.a(c12997v.G()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void h0(C11886g c11886g, C12997v c12997v, C15791l c15791l) {
        BinderC12992p binderC12992p = new BinderC12992p(this, c15791l);
        ((i0) c12997v.M()).f1(binderC12992p, c11886g, this.f84992k, C12975A.a(c12997v.G()));
    }

    @Override
    public final String y(@Nullable Intent intent) throws ApiException {
        if (intent == null) {
            throw new ApiException(Status.f61041i);
        }
        Status status = (Status) I0.d.b(intent, "status", Status.CREATOR);
        if (status == null) {
            throw new ApiException(Status.f61043k);
        }
        if (!status.x0()) {
            throw new ApiException(status);
        }
        String stringExtra = intent.getStringExtra("phone_number_hint_result");
        if (stringExtra != null) {
            return stringExtra;
        }
        throw new ApiException(Status.f61041i);
    }

    public C12996u(@NonNull Context context, @NonNull com.google.android.gms.auth.api.identity.M m10) {
        super(context, (C11894a<com.google.android.gms.auth.api.identity.M>) f84991n, m10, AbstractC11907k.a.f61274c);
        this.f84992k = C12999x.a();
    }
}
