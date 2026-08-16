package z0;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.Status;
import java.util.Objects;

public final class BinderC16225j extends BinderC16220e {

    public final Context f130523e;

    public final GoogleSignInOptions f130524f;

    public final C16226k f130525g;

    public BinderC16225j(C16226k c16226k, Context context, GoogleSignInOptions googleSignInOptions) {
        this.f130523e = context;
        this.f130524f = googleSignInOptions;
        Objects.requireNonNull(c16226k);
        this.f130525g = c16226k;
    }

    @Override
    public final void B0(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
        if (googleSignInAccount != null) {
            Context context = this.f130523e;
            C16233r.a(context).c(this.f130524f, googleSignInAccount);
        }
        this.f130525g.o(new y0.d(googleSignInAccount, status));
    }
}
