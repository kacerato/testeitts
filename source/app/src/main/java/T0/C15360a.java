package t0;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.internal.auth.C11958m;

public class C15360a {

    @NonNull
    public static final C11894a<C11894a.d.C0950d> f109693a;

    @NonNull
    @Deprecated
    public static final InterfaceC15361b f109694b;

    public static final C11894a.g f109695c;

    public static final C11894a.AbstractC0948a f109696d;

    static {
        C11894a.g gVar = new C11894a.g();
        f109695c = gVar;
        C15368i c15368i = new C15368i();
        f109696d = c15368i;
        f109693a = new C11894a<>("WorkAccount.API", c15368i, gVar);
        f109694b = new C11958m();
    }

    @NonNull
    public static C15362c a(@NonNull Activity activity) {
        return new C15362c(activity);
    }

    @NonNull
    public static C15362c b(@NonNull Context context) {
        return new C15362c(context);
    }
}
