package j1;

import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.AbstractC11908l;

public final class k0 extends AbstractC2580n {
    public k0(Context context, Looper looper, C2570i c2570i, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 117, c2570i, bVar, cVar);
    }

    @Override
    public final Bundle I() {
        Bundle bundle = new Bundle();
        bundle.putString("ACTION_START_SERVICE", "com.google.android.gms.fido.u2f.thirdparty.START");
        return bundle;
    }

    @Override
    @NonNull
    public final String N() {
        return "com.google.android.gms.fido.u2f.internal.regular.IU2fAppService";
    }

    @Override
    @NonNull
    public final String O() {
        return "com.google.android.gms.fido.u2f.thirdparty.START";
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
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.fido.u2f.internal.regular.IU2fAppService");
        return queryLocalInterface instanceof i0 ? (i0) queryLocalInterface : new i0(iBinder);
    }
}
