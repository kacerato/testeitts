package D0;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.C11894a;
import java.util.ArrayList;

public final class G extends M {

    public final ArrayList f4556c;

    public final com.google.android.gms.common.api.internal.o f4557d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G(com.google.android.gms.common.api.internal.o oVar, ArrayList arrayList) {
        super(oVar, null);
        this.f4557d = oVar;
        this.f4556c = arrayList;
    }

    @Override
    @WorkerThread
    public final void a() {
        com.google.android.gms.common.api.internal.s sVar;
        G0.r rVar;
        com.google.android.gms.common.api.internal.s sVar2;
        com.google.android.gms.common.api.internal.o oVar = this.f4557d;
        sVar = oVar.f61186a;
        sVar.f61245r.f61224s = com.google.android.gms.common.api.internal.o.y(oVar);
        ArrayList arrayList = this.f4556c;
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            C11894a.f fVar = (C11894a.f) arrayList.get(i10);
            com.google.android.gms.common.api.internal.o oVar2 = this.f4557d;
            rVar = oVar2.f61200o;
            sVar2 = oVar2.f61186a;
            fVar.t(rVar, sVar2.f61245r.f61224s);
        }
    }
}
