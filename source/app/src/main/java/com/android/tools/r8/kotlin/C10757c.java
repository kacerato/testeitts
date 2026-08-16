package com.android.tools.r8.kotlin;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.C6523b20;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public final class C10757c {

    public final com.android.tools.r8.graph.M2 f55263a;

    public final C10781g f55264b;

    public C10757c(C10781g c10781g) {
        this.f55264b = c10781g;
        new C6523b20((Map) IntStream.rangeClosed(0, 22).boxed().collect(Collectors.toMap(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10757c.this.a((Integer) obj);
            }
        }, Function.identity())));
        com.android.tools.r8.graph.M2 d10 = c10781g.f55308a.d("Lkotlin/jvm/internal/Lambda;");
        this.f55263a = d10;
        C4724u1 c4724u1 = c10781g.f55308a;
        c4724u1.a(d10, c4724u1.a(c4724u1.f37905M1, c4724u1.f37884J1), c10781g.f55308a.f38067i1);
    }

    public final com.android.tools.r8.graph.M2 a(Integer num) {
        return this.f55264b.f55308a.d("Lkotlin/jvm/functions/Function" + ((Object) num) + ";");
    }
}
