package D0;

import B0.C2318c;
import B0.C2324i;
import G0.AbstractC2564f;
import G0.C2559c0;
import android.content.Context;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.C11894a;
import java.util.ArrayList;
import java.util.Map;

public final class F extends M {

    public final Map f4554c;

    public final com.google.android.gms.common.api.internal.o f4555d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F(com.google.android.gms.common.api.internal.o oVar, Map map) {
        super(oVar, null);
        this.f4555d = oVar;
        this.f4554c = map;
    }

    @Override
    @J2.a("lock")
    @WorkerThread
    public final void a() {
        C2324i c2324i;
        Context context;
        boolean z10;
        Context context2;
        com.google.android.gms.common.api.internal.s sVar;
        s1.f fVar;
        s1.f fVar2;
        com.google.android.gms.common.api.internal.s sVar2;
        Context context3;
        boolean z11;
        c2324i = this.f4555d.f61189d;
        C2559c0 c2559c0 = new C2559c0(c2324i);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (C11894a.f fVar3 : this.f4554c.o()) {
            if (fVar3.q()) {
                z11 = ((C) this.f4554c.get(fVar3)).f4548c;
                if (!z11) {
                    arrayList.add(fVar3);
                }
            }
            arrayList2.add(fVar3);
        }
        int i10 = 0;
        int i11 = -1;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            while (i10 < size) {
                C11894a.f fVar4 = (C11894a.f) arrayList.get(i10);
                context = this.f4555d.f61188c;
                i11 = c2559c0.b(context, fVar4);
                i10++;
                if (i11 != 0) {
                    break;
                }
            }
        } else {
            int size2 = arrayList2.size();
            while (i10 < size2) {
                C11894a.f fVar5 = (C11894a.f) arrayList2.get(i10);
                context3 = this.f4555d.f61188c;
                i11 = c2559c0.b(context3, fVar5);
                i10++;
                if (i11 == 0) {
                    break;
                }
            }
        }
        if (i11 != 0) {
            C2318c c2318c = new C2318c(i11, null);
            com.google.android.gms.common.api.internal.o oVar = this.f4555d;
            sVar2 = oVar.f61186a;
            sVar2.u(new D(this, oVar, c2318c));
            return;
        }
        com.google.android.gms.common.api.internal.o oVar2 = this.f4555d;
        z10 = oVar2.f61198m;
        if (z10) {
            fVar = oVar2.f61196k;
            if (fVar != null) {
                fVar2 = oVar2.f61196k;
                fVar2.d();
            }
        }
        for (C11894a.f fVar6 : this.f4554c.o()) {
            AbstractC2564f.c cVar = (AbstractC2564f.c) this.f4554c.get(fVar6);
            if (fVar6.q()) {
                context2 = this.f4555d.f61188c;
                if (c2559c0.b(context2, fVar6) != 0) {
                    com.google.android.gms.common.api.internal.o oVar3 = this.f4555d;
                    sVar = oVar3.f61186a;
                    sVar.u(new E(this, oVar3, cVar));
                }
            }
            fVar6.s(cVar);
        }
    }
}
