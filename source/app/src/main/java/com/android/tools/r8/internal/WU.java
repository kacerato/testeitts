package com.android.tools.r8.internal;

import com.android.tools.r8.naming.C10957k;
import com.android.tools.r8.references.MethodReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class WU {

    public static final boolean f45422d = true;

    public final MethodReference f45423a;

    public List f45424b = null;

    public final ArrayList f45425c = new ArrayList();

    public WU(MethodReference methodReference) {
        this.f45423a = methodReference;
    }

    public static void a(Object obj) {
        throw new C5417Jv0();
    }

    public final void a() {
        if (this.f45424b != null && !this.f45425c.isEmpty()) {
            ArrayList arrayList = this.f45425c;
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                Object obj = arrayList.get(i10);
                i10++;
                C8699o50 c8699o50 = (C8699o50) obj;
                C10957k.b bVar = (C10957k.b) c8699o50.a();
                YE ye2 = (YE) c8699o50.b();
                final WE we2 = new WE(16);
                ye2.forEach(new BiConsumer() {
                    @Override
                    public final void accept(Object obj2, Object obj3) {
                        WU.this.a(we2, (Integer) obj2, (Integer) obj3);
                    }
                });
                bVar.a(new Consumer() {
                    @Override
                    public final void accept(Object obj2) {
                        WU.a((com.android.tools.r8.naming.mappinginformation.e) obj2);
                    }
                }, new M40(we2, this.f45423a));
            }
            return;
        }
        if (!f45422d && this.f45424b == null) {
            throw new AssertionError((Object) "Mapped outline positions is null");
        }
    }

    public final void a(WE we2, Integer num, Integer num2) {
        int i10;
        int intValue = num.intValue();
        Iterator it = this.f45424b.iterator();
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            UU uu = (UU) it.next();
            if (uu.f44762b.f() == intValue) {
                i10 = uu.f44761a;
                break;
            }
        }
        if (i10 != -1) {
            we2.b(i10, num2.intValue());
        }
    }
}
