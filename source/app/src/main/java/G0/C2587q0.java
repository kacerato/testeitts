package G0;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.RemoteCreator;

public final class C2587q0 extends RemoteCreator {

    public static final C2587q0 f7478c = new C2587q0();

    public C2587q0() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View c(Context context, int i10, int i11) throws RemoteCreator.RemoteCreatorException {
        C2587q0 c2587q0 = f7478c;
        try {
            return (View) W0.f.t(((C2561d0) c2587q0.b(context)).e1(W0.f.l0(context), new C2583o0(1, i10, i11, null)));
        } catch (Exception e10) {
            throw new RemoteCreator.RemoteCreatorException("Could not get button with size " + i10 + " and color " + i11, e10);
        }
    }

    @Override
    public final Object a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof C2561d0 ? (C2561d0) queryLocalInterface : new C2561d0(iBinder);
    }
}
