package o2;

import android.os.Bundle;
import android.os.RemoteException;
import p2.t;
import v1.C15791l;

public class j extends p2.g {

    public final p2.i f98463e;

    public final C15791l f98464f;

    public final l f98465g;

    public j(l lVar, p2.i iVar, C15791l c15791l) {
        this.f98465g = lVar;
        this.f98463e = iVar;
        this.f98464f = c15791l;
    }

    @Override
    public void l(Bundle bundle) throws RemoteException {
        t tVar = this.f98465g.f98468a;
        if (tVar != null) {
            tVar.r(this.f98464f);
        }
        this.f98463e.d("onGetLaunchReviewFlowInfo", new Object[0]);
    }
}
