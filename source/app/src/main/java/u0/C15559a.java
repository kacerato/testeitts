package u0;

import G0.F;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.C11894a;
import x0.InterfaceC16040b;
import y0.InterfaceC16130a;
import z0.C16223h;

public final class C15559a {

    @F
    @NonNull
    @Deprecated
    @C0.a
    public static final C11894a<C15561c> f117975a;

    @NonNull
    public static final C11894a<GoogleSignInOptions> f117976b;

    @F
    @NonNull
    @Deprecated
    @C0.a
    public static final InterfaceC16040b f117977c;

    @NonNull
    public static final InterfaceC16130a f117978d;

    @NonNull
    public static final C11894a.g f117979e;

    @NonNull
    public static final C11894a.g f117980f;

    public static final C11894a.AbstractC0948a f117981g;

    public static final C11894a.AbstractC0948a f117982h;

    static {
        C11894a.g gVar = new C11894a.g();
        f117979e = gVar;
        C11894a.g gVar2 = new C11894a.g();
        f117980f = gVar2;
        e eVar = new e();
        f117981g = eVar;
        f fVar = new f();
        f117982h = fVar;
        f117975a = C15560b.f117983a;
        new C11894a("Auth.CREDENTIALS_API", eVar, gVar);
        f117976b = new C11894a<>("Auth.GOOGLE_SIGN_IN_API", fVar, gVar2);
        f117977c = C15560b.f117984b;
        f117978d = new C16223h();
    }
}
