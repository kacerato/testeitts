package z0;

import T0.E;
import android.content.Context;
import android.os.Binder;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import y0.C16131b;

public final class BinderC16239x extends AbstractBinderC16234s {

    public final Context f130535e;

    public BinderC16239x(Context context) {
        this.f130535e = context;
    }

    public final void k() {
        if (E.a(this.f130535e, Binder.getCallingUid())) {
            return;
        }
        int callingUid = Binder.getCallingUid();
        StringBuilder sb2 = new StringBuilder(String.valueOf(callingUid).length() + 41);
        sb2.append("Calling UID ");
        sb2.append(callingUid);
        sb2.append(" is not Google Play services.");
        throw new SecurityException(sb2.toString());
    }

    @Override
    public final void x() {
        k();
        Context context = this.f130535e;
        C16218c b10 = C16218c.b(context);
        GoogleSignInAccount c10 = b10.c();
        GoogleSignInOptions googleSignInOptions = GoogleSignInOptions.f60990m;
        if (c10 != null) {
            googleSignInOptions = b10.d();
        }
        C16131b d10 = com.google.android.gms.auth.api.signin.a.d(context, googleSignInOptions);
        if (c10 != null) {
            d10.h0();
        } else {
            d10.C();
        }
    }

    @Override
    public final void z() {
        k();
        C16233r.a(this.f130535e).b();
    }
}
