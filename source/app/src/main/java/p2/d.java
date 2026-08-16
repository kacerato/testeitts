package p2;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

public final class d extends C14924a implements f {
    public d(IBinder iBinder) {
        super(iBinder, "com.google.android.play.core.inappreview.protocol.IInAppReviewService");
    }

    @Override
    public final void M(String str, Bundle bundle, h hVar) throws RemoteException {
        Parcel h10 = h();
        h10.writeString(str);
        c.c(h10, bundle);
        c.d(h10, hVar);
        k(2, h10);
    }
}
