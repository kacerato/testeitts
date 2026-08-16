package j1;

import B0.C2320e;
import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11908l;

public final class W extends AbstractC2580n {
    public W(Context context, Looper looper, C2570i c2570i, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 149, c2570i, bVar, cVar);
    }

    @Override
    public final C2320e[] C() {
        return new C2320e[]{Y0.c.f29705h, Y0.c.f29706i};
    }

    @Override
    public final Bundle I() {
        Bundle bundle = new Bundle();
        bundle.putString("FIDO2_ACTION_START_SERVICE", "com.google.android.gms.fido.fido2.privileged.START");
        return bundle;
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.fido.fido2.privileged.START";
    }

    @Override
    public final boolean b0() {
        return true;
    }

    @Override
    public final int l() {
        return 13000000;
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fido.fido2.internal.privileged.IFido2PrivilegedService");
        return queryLocalInterface instanceof Z ? (Z) queryLocalInterface : new Z(iBinder);
    }
}
