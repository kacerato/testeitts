package e1;

import D0.InterfaceC2458n;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.C11889j;
import com.google.android.gms.auth.api.identity.C11890k;
import com.google.android.gms.auth.api.identity.C11891l;
import com.google.android.gms.auth.api.identity.InterfaceC11885f;
import com.google.android.gms.auth.api.identity.SaveAccountLinkingTokenRequest;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import v1.AbstractC15790k;
import v1.C15791l;

public final class C12987k extends AbstractC11907k implements InterfaceC11885f {

    public static final C11894a.g f84971l;

    public static final C11894a.AbstractC0948a f84972m;

    public static final C11894a f84973n;

    public final String f84974k;

    static {
        C11894a.g gVar = new C11894a.g();
        f84971l = gVar;
        C12982f c12982f = new C12982f();
        f84972m = c12982f;
        f84973n = new C11894a("Auth.Api.Identity.CredentialSaving.API", c12982f, gVar);
    }

    public C12987k(@NonNull Activity activity, @NonNull com.google.android.gms.auth.api.identity.z zVar) {
        super(activity, (C11894a<com.google.android.gms.auth.api.identity.z>) f84973n, zVar, AbstractC11907k.a.f61274c);
        this.f84974k = C12999x.a();
    }

    @Override
    public final AbstractC15790k<C11889j> A(@NonNull SaveAccountLinkingTokenRequest saveAccountLinkingTokenRequest) {
        G0.A.r(saveAccountLinkingTokenRequest);
        SaveAccountLinkingTokenRequest.a v02 = SaveAccountLinkingTokenRequest.v0(saveAccountLinkingTokenRequest);
        v02.f(this.f84974k);
        final SaveAccountLinkingTokenRequest a10 = v02.a();
        return N(D0.r.a().e(C12998w.f85001h).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                T t10 = (T) obj;
                ((Z) t10.M()).t(new BinderC12983g(C12987k.this, (C15791l) obj2), (SaveAccountLinkingTokenRequest) G0.A.r(a10), C12975A.a(t10.G()));
            }
        }).d(false).f(1535).a());
    }

    @Override
    public final Status h(@Nullable Intent intent) {
        Status status;
        return (intent == null || (status = (Status) I0.d.b(intent, "status", Status.CREATOR)) == null) ? Status.f61041i : status;
    }

    @Override
    public final AbstractC15790k<C11891l> n(@NonNull C11890k c11890k) {
        G0.A.r(c11890k);
        C11890k.a b02 = C11890k.b0(c11890k);
        b02.d(this.f84974k);
        final C11890k a10 = b02.a();
        return N(D0.r.a().e(C12998w.f84999f).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                T t10 = (T) obj;
                ((Z) t10.M()).l0(new BinderC12984h(C12987k.this, (C15791l) obj2), (C11890k) G0.A.r(a10), C12975A.a(t10.G()));
            }
        }).d(false).f(1536).a());
    }

    public C12987k(@NonNull Context context, @NonNull com.google.android.gms.auth.api.identity.z zVar) {
        super(context, (C11894a<com.google.android.gms.auth.api.identity.z>) f84973n, zVar, AbstractC11907k.a.f61274c);
        this.f84974k = C12999x.a();
    }
}
