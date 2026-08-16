package o2;

import android.os.Bundle;
import android.os.RemoteException;
import v1.C15791l;

public final class i extends p2.j {

    public final C15791l f98461c;

    public final l f98462d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(l lVar, C15791l c15791l, C15791l c15791l2) {
        super(c15791l);
        this.f98462d = lVar;
        this.f98461c = c15791l2;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [android.os.IInterface, p2.f] */
    @Override
    public final void a() {
        p2.i iVar;
        String str;
        String str2;
        String str3;
        try {
            ?? e10 = this.f98462d.f98468a.e();
            str2 = this.f98462d.f98469b;
            Bundle a10 = m.a();
            l lVar = this.f98462d;
            C15791l c15791l = this.f98461c;
            str3 = lVar.f98469b;
            e10.M(str2, a10, new k(lVar, c15791l, str3));
        } catch (RemoteException e11) {
            iVar = l.f98467c;
            str = this.f98462d.f98469b;
            iVar.c(e11, "error requesting in-app review for %s", str);
            this.f98461c.d(new RuntimeException(e11));
        }
    }
}
