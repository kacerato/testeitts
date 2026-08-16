package z0;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.api.AbstractC11908l;
import com.google.android.gms.common.api.C11894a;
import com.google.android.gms.common.api.Status;

public final class C16226k extends AbstractC16231p {

    public final Context f130526t;

    public final GoogleSignInOptions f130527u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16226k(AbstractC11908l abstractC11908l, Context context, GoogleSignInOptions googleSignInOptions) {
        super(abstractC11908l);
        this.f130526t = context;
        this.f130527u = googleSignInOptions;
    }

    @Override
    public final com.google.android.gms.common.api.u k(Status status) {
        return new y0.d(null, status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void w(C11894a.b bVar) throws RemoteException {
        C16238w c16238w = (C16238w) ((C16224i) bVar).M();
        Context context = this.f130526t;
        GoogleSignInOptions googleSignInOptions = this.f130527u;
        c16238w.t(new BinderC16225j(this, context, googleSignInOptions), googleSignInOptions);
    }
}
