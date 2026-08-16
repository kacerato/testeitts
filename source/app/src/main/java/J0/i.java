package J0;

import G0.AbstractC2580n;
import G0.C2570i;
import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.api.AbstractC11908l;

public final class i extends AbstractC2580n<m> {
    public i(Context context, Looper looper, C2570i c2570i, AbstractC11908l.b bVar, AbstractC11908l.c cVar) {
        super(context, looper, 39, c2570i, bVar, cVar);
    }

    @Override
    public final String N() {
        return "com.google.android.gms.common.internal.service.ICommonService";
    }

    @Override
    public final String O() {
        return "com.google.android.gms.common.service.START";
    }

    @Override
    public final IInterface z(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.ICommonService");
        return queryLocalInterface instanceof m ? (m) queryLocalInterface : new m(iBinder);
    }
}
