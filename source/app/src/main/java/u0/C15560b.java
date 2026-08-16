package u0;

import G0.F;
import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.internal.auth.Q;
import com.google.android.gms.internal.auth.W;
import x0.InterfaceC16040b;
import x0.InterfaceC16041c;

@F
@C0.a
public final class C15560b {

    @F
    @NonNull
    @C0.a
    public static final C11894a<C15561c> f117983a;

    @F
    @NonNull
    @C0.a
    public static final InterfaceC16040b f117984b;

    @NonNull
    public static final C11894a.g f117985c;

    public static final C11894a.AbstractC0948a f117986d;

    static {
        C11894a.g gVar = new C11894a.g();
        f117985c = gVar;
        i iVar = new i();
        f117986d = iVar;
        f117983a = new C11894a<>("Auth.PROXY_API", iVar, gVar);
        f117984b = new W();
    }

    @NonNull
    @C0.a
    public static InterfaceC16041c a(@NonNull Activity activity, @Nullable C15561c c15561c) {
        return new Q(activity, c15561c);
    }

    @NonNull
    @C0.a
    public static InterfaceC16041c b(@NonNull Context context, @Nullable C15561c c15561c) {
        return new Q(context, c15561c);
    }
}
