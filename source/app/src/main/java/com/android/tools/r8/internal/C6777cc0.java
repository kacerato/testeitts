package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.V8;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class C6777cc0 extends AbstractC6944dc0 {

    public static final boolean f47112e = true;

    public final List f47113c;

    public final boolean f47114d;

    public C6777cc0(C4798y c4798y, com.android.tools.r8.graph.M2 m22, List list, boolean z10) {
        super(c4798y, m22);
        this.f47113c = list;
        this.f47114d = z10;
    }

    public static void a(C4724u1 c4724u1) {
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("Ljava/lang/Objects;")));
        }
        AbstractC9198r5.a(c4724u1, "Ljava/lang/Double;", "Ljava/lang/Float;", "Ljava/lang/Boolean;", "Ljava/lang/Long;");
    }

    @Override
    public final com.android.tools.r8.graph.G b() {
        int i10;
        int i11;
        ArrayList arrayList = new ArrayList();
        if (this.f47113c.isEmpty()) {
            arrayList.add(new C10546z9(0, EnumC5477Kw0.f41825c));
            i10 = 0;
            i11 = 1;
        } else {
            a(arrayList, (C4554l1) this.f47113c.get(0), 0);
            boolean T02 = ((C4554l1) this.f47113c.get(0)).getType().T0();
            int B02 = ((C4554l1) this.f47113c.get(0)).getType().B0();
            for (int i12 = 1; i12 < this.f47113c.size(); i12++) {
                arrayList.add(new C10546z9(31L, EnumC5477Kw0.f41825c));
                V8.a aVar = V8.a.f44969d;
                T10 t10 = T10.f44369e;
                arrayList.add(new V8(aVar, t10));
                a(arrayList, (C4554l1) this.f47113c.get(i12), B02);
                T02 |= ((C4554l1) this.f47113c.get(i12)).getType().T0();
                arrayList.add(new V8(V8.a.f44967b, t10));
                B02 += ((C4554l1) this.f47113c.get(i12)).getType().B0();
            }
            i10 = B02;
            i11 = T02 ? 3 : 2;
        }
        arrayList.add(new C6440ab(EnumC5477Kw0.f41825c));
        com.android.tools.r8.graph.M2 m22 = this.f50437b;
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(m22, i11, i10, arrayList, list, list);
    }

    public final void a(ArrayList arrayList, C4554l1 c4554l1, int i10) {
        C4724u1 b10 = this.f50436a.b();
        EnumC5477Kw0 a10 = EnumC5477Kw0.a(c4554l1.getType());
        if (this.f47114d) {
            arrayList.add(new C8938pa(a10, i10));
        } else {
            arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
            arrayList.add(new T9(c4554l1));
        }
        if (a10 == EnumC5477Kw0.f41828f) {
            arrayList.add(new C7437ga(184, b10.f37901L4.f36438f, false));
            return;
        }
        if (a10 == EnumC5477Kw0.f41826d) {
            arrayList.add(new C7437ga(184, b10.f37820A4.f36524e, false));
            return;
        }
        if (c4554l1.getType().F0()) {
            arrayList.add(new C7437ga(184, b10.f38190x4.f38222h, false));
            return;
        }
        if (a10 == EnumC5477Kw0.f41827e) {
            arrayList.add(new C7437ga(184, b10.f37836C4.f37174e, false));
        } else if (a10.a()) {
            arrayList.add(new C7437ga(184, b10.f37852E4.f37351c, false));
        } else if (!f47112e && a10 != EnumC5477Kw0.f41825c) {
            throw new AssertionError();
        }
    }
}
