package e1;

import D0.InterfaceC2458n;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.identity.AuthorizationRequest;
import com.google.android.gms.auth.api.identity.C11881b;
import com.google.android.gms.auth.api.identity.ClearTokenRequest;
import com.google.android.gms.auth.api.identity.InterfaceC11880a;
import com.google.android.gms.auth.api.identity.RevokeAccessRequest;
import com.google.android.gms.common.api.AbstractC11907k;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;
import v1.AbstractC15790k;
import v1.C15791l;

public final class C12981e extends AbstractC11907k implements InterfaceC11880a {

    public static final C11894a.g f84961l;

    public static final C11894a.AbstractC0948a f84962m;

    public static final C11894a f84963n;

    public final String f84964k;

    static {
        C11894a.g gVar = new C11894a.g();
        f84961l = gVar;
        j0 j0Var = new j0();
        f84962m = j0Var;
        f84963n = new C11894a("Auth.Api.Identity.Authorization.API", j0Var, gVar);
    }

    public C12981e(@NonNull Activity activity, @NonNull com.google.android.gms.auth.api.identity.p pVar) {
        super(activity, (C11894a<com.google.android.gms.auth.api.identity.p>) f84963n, pVar, AbstractC11907k.a.f61274c);
        this.f84964k = C12999x.a();
    }

    @Override
    public final AbstractC15790k<Void> D(@NonNull ClearTokenRequest clearTokenRequest) {
        G0.A.r(clearTokenRequest);
        ClearTokenRequest.a n02 = clearTokenRequest.n0();
        n02.c(this.f84964k);
        final ClearTokenRequest a10 = n02.a();
        return T(D0.r.a().e(C12998w.f84998e).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                S s10 = (S) obj;
                ((W) s10.M()).e1(new m0(C12981e.this, (C15791l) obj2), (ClearTokenRequest) G0.A.r(a10), C12975A.a(s10.G()));
            }
        }).d(true).f(1721).a());
    }

    @Override
    public final C11881b e(@Nullable Intent intent) throws ApiException {
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
        C11881b c11881b = (C11881b) I0.d.b(intent, "authorization_result", C11881b.CREATOR);
        if (c11881b != null) {
            return c11881b;
        }
        throw new ApiException(Status.f61041i);
    }

    @Override
    public final AbstractC15790k<Void> q(@NonNull RevokeAccessRequest revokeAccessRequest) {
        G0.A.r(revokeAccessRequest);
        RevokeAccessRequest.a n02 = revokeAccessRequest.n0();
        n02.d(this.f84964k);
        final RevokeAccessRequest a10 = n02.a();
        return T(D0.r.a().e(C12998w.f84997d).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                S s10 = (S) obj;
                ((W) s10.M()).l0(new l0(C12981e.this, (C15791l) obj2), (RevokeAccessRequest) G0.A.r(a10), C12975A.a(s10.G()));
            }
        }).d(true).f(1721).a());
    }

    @Override
    public final AbstractC15790k<C11881b> s(@NonNull AuthorizationRequest authorizationRequest) {
        G0.A.r(authorizationRequest);
        AuthorizationRequest.a z02 = AuthorizationRequest.z0(authorizationRequest);
        z02.j(this.f84964k);
        final AuthorizationRequest b10 = z02.b();
        return N(D0.r.a().e(C12998w.f84996c).c(new InterfaceC2458n() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final void accept(Object obj, Object obj2) {
                S s10 = (S) obj;
                ((W) s10.M()).t(new k0(C12981e.this, (C15791l) obj2), (AuthorizationRequest) G0.A.r(b10), C12975A.a(s10.G()));
            }
        }).d(false).f(1534).a());
    }

    public C12981e(@NonNull Context context, @NonNull com.google.android.gms.auth.api.identity.p pVar) {
        super(context, (C11894a<com.google.android.gms.auth.api.identity.p>) f84963n, pVar, AbstractC11907k.a.f61274c);
        this.f84964k = C12999x.a();
    }
}
