package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public abstract class AbstractC9703u60 {

    public static final boolean f52782a = true;

    public static void a(C4798y c4798y, final C7051eC c7051eC) {
        AbstractC7552hC.a(new C9157qr0(c4798y), new C6804cl0()).stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return new C5998Tw0((AbstractC10102wY) obj);
            }
        }).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7051eC.this.a((C5998Tw0) obj);
            }
        });
    }

    public static void b(C4798y c4798y, C7051eC c7051eC) {
        C10353y00 c10353y00 = new C10353y00();
        IZ iz = new IZ();
        ZZ zz = new ZZ(c4798y, null);
        C6683c00 c6683c00 = new C6683c00(c4798y);
        C8016k00 c8016k00 = new C8016k00(c4798y);
        C7684i00 c7684i00 = new C7684i00();
        C7849j00 c7849j00 = new C7849j00();
        C9018q00 c9018q00 = new C9018q00();
        C9685u00 c9685u00 = new C9685u00();
        A00 a00 = new A00(c4798y);
        C10186x00 c10186x00 = new C10186x00();
        int i10 = AbstractC7552hC.f48487c;
        Object[] a10 = AbstractC9694u30.a(11, new Object[]{c10353y00, iz, zz, c6683c00, c8016k00, c7684i00, c7849j00, c9018q00, c9685u00, a00, c10186x00});
        AbstractC7552hC.b(a10.length, a10).stream().map(new C10168wu1()).forEach(new C10335xu1(c7051eC));
    }

    public static void c(C4798y c4798y, C7051eC c7051eC) {
        C10353y00 c10353y00 = new C10353y00();
        IZ iz = new IZ();
        ZZ zz = new ZZ(c4798y, null);
        C8016k00 c8016k00 = new C8016k00(c4798y);
        C7684i00 c7684i00 = new C7684i00();
        C7849j00 c7849j00 = new C7849j00();
        C9018q00 c9018q00 = new C9018q00();
        C9685u00 c9685u00 = new C9685u00();
        C10186x00 c10186x00 = new C10186x00();
        int i10 = AbstractC7552hC.f48487c;
        Object[] a10 = AbstractC9694u30.a(9, new Object[]{c10353y00, iz, zz, c8016k00, c7684i00, c7849j00, c9018q00, c9685u00, c10186x00});
        AbstractC7552hC.b(a10.length, a10).stream().map(new C10168wu1()).forEach(new C10335xu1(c7051eC));
    }

    public static void a(List list) {
        int b10 = AT.b(list, new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AbstractC9703u60.a((AbstractC9369s60) obj);
            }
        });
        if (b10 >= 0) {
            for (AbstractC9369s60 abstractC9369s60 : list.subList(b10 + 1, list.size())) {
                if (!f52782a && !abstractC9369s60.g()) {
                    throw new AssertionError();
                }
            }
        }
    }

    public static boolean a(AbstractC9369s60 abstractC9369s60) {
        return abstractC9369s60 instanceof C7529h40;
    }
}
