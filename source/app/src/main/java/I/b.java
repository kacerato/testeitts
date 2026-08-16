package I;

import F.e;
import G.j;
import I.d;
import Y.m;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;

public final class b {

    public final j f8659a;

    public final e f8660b;

    public final C.b f8661c;

    public final Handler f8662d = new Handler(Looper.getMainLooper());

    public a f8663e;

    public b(j jVar, e eVar, C.b bVar) {
        this.f8659a = jVar;
        this.f8660b = eVar;
        this.f8661c = bVar;
    }

    public static int b(d dVar) {
        return m.g(dVar.d(), dVar.b(), dVar.a());
    }

    @VisibleForTesting
    public c a(d... dVarArr) {
        long e10 = (this.f8659a.e() - this.f8659a.getCurrentSize()) + this.f8660b.e();
        int i10 = 0;
        for (d dVar : dVarArr) {
            i10 += dVar.c();
        }
        float f10 = ((float) e10) / i10;
        HashMap hashMap = new HashMap();
        for (d dVar2 : dVarArr) {
            hashMap.put(dVar2, Integer.valueOf(Math.round(dVar2.c() * f10) / b(dVar2)));
        }
        return new c(hashMap);
    }

    public void c(d.a... aVarArr) {
        a aVar = this.f8663e;
        if (aVar != null) {
            aVar.b();
        }
        d[] dVarArr = new d[aVarArr.length];
        for (int i10 = 0; i10 < aVarArr.length; i10++) {
            d.a aVar2 = aVarArr[i10];
            if (aVar2.b() == null) {
                aVar2.c(this.f8661c == C.b.PREFER_ARGB_8888 ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565);
            }
            dVarArr[i10] = aVar2.a();
        }
        a aVar3 = new a(this.f8660b, this.f8659a, a(dVarArr));
        this.f8663e = aVar3;
        this.f8662d.post(aVar3);
    }
}
