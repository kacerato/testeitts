package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import java.util.ArrayDeque;
import java.util.Arrays;

public abstract class AbstractC5139Fb {
    public static void a(C4724u1 c4724u1) {
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("Ljava/lang/ClassCastException;")));
        }
        AbstractC9198r5.a(c4724u1, "Ljava/lang/IllegalAccessError;", "Ljava/lang/IncompatibleClassChangeError;", "Ljava/lang/NoSuchMethodError;", "Ljava/lang/RuntimeException;");
    }

    public static com.android.tools.r8.graph.G a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22) {
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        O9 o92 = new O9(NB.f42527b, enumC5477Kw0, c8103ka2);
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41825c;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c8938pa, o92, new C10546z9(1L, enumC5477Kw02), new M9(c8103ka3), c8103ka2, new G9(new C10564zF(new int[]{0}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2)})), new C10546z9(0L, enumC5477Kw02), c8103ka3, new G9(new C10564zF(new int[]{0}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2)}), new ArrayDeque(Arrays.asList(NH.f42550c))), new C6440ab(enumC5477Kw02), c8103ka4, new W9[0]);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        return new com.android.tools.r8.graph.G(m22, 1, 1, a10, c6190Xe0, c6190Xe0);
    }
}
