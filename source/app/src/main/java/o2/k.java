package o2;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.RemoteException;
import v1.C15791l;

public final class k extends j {

    public final String f98466h;

    public k(l lVar, C15791l c15791l, String str) {
        super(lVar, new p2.i("OnRequestInstallCallback"), c15791l);
        this.f98466h = str;
    }

    @Override
    public final void l(Bundle bundle) throws RemoteException {
        super.l(bundle);
        this.f98464f.e(new d((PendingIntent) bundle.get("confirmation_intent"), bundle.getBoolean("is_review_no_op")));
    }
}
