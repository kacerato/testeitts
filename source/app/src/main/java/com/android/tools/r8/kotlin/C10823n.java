package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C6190Xe0;
import com.android.tools.r8.internal.GP;
import com.android.tools.r8.internal.JP;
import com.android.tools.r8.internal.U6;
import com.android.tools.r8.internal.WB;
import com.android.tools.r8.shaking.InterfaceC11195f0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Consumer;

public final class C10823n implements InterfaceC11195f0 {

    public static final C6190Xe0 f55380c;

    public final C10853s0 f55381a;

    public final Object f55382b;

    static {
        int i10 = AbstractC7552hC.f48487c;
        f55380c = C6190Xe0.f45779e;
    }

    public C10823n(C10853s0 c10853s0, Map map) {
        this.f55381a = c10853s0;
        this.f55382b = map;
    }

    public static AbstractC7552hC a(List list, C4724u1 c4724u1) {
        if (list.isEmpty()) {
            return f55380c;
        }
        int i10 = AbstractC7552hC.f48487c;
        Object[] objArr = new Object[4];
        Iterator it = list.iterator();
        int i11 = 0;
        while (it.hasNext()) {
            GP gp = (GP) it.next();
            C10823n c10823n = new C10823n(C10853s0.a(gp.b(), c4724u1, gp.b()), AbstractC10817m.a(gp.a(), c4724u1));
            int i12 = i11 + 1;
            if (objArr.length < i12) {
                objArr = Arrays.copyOf(objArr, WB.a(objArr.length, i12));
            }
            objArr[i11] = c10823n;
            i11 = i12;
        }
        return AbstractC7552hC.b(i11, objArr);
    }

    public final boolean b(final Consumer consumer, final C4798y c4798y) {
        final U6 u62 = new U6(false);
        u62.b(this.f55381a.b(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10823n.this.a(u62, c4798y, consumer, (String) obj);
            }
        }, c4798y, null));
        return u62.a();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map, java.lang.Object] */
    public final void a(final U6 u62, final C4798y c4798y, Consumer consumer, String str) {
        if (str == null) {
            u62.c(true);
            return;
        }
        String c10 = C4932Bl.c(str);
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        this.f55382b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC10817m abstractC10817m = (AbstractC10817m) obj2;
                U6.this.b(abstractC10817m.b(new Consumer() {
                    @Override
                    public final void accept(Object obj3) {
                        C10823n.a(Map.this, r2, (JP) obj3);
                    }
                }, c4798y));
            }
        });
        consumer.accept(new GP(c10, linkedHashMap));
    }

    public static void a(Map map, String str, JP jp2) {
        if (jp2 != null) {
            map.put(str, jp2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map, java.lang.Object] */
    @Override
    public final void a(final InterfaceC4403d1 interfaceC4403d1) {
        this.f55381a.a(interfaceC4403d1);
        this.f55382b.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                ((AbstractC10817m) obj2).a(InterfaceC4403d1.this);
            }
        });
    }
}
