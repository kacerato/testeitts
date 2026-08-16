package com.android.tools.r8.naming;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Predicate;

public final class C10963l0 extends AbstractC10943h0 {

    public final C10958k0 f55990e;

    public C10963l0(C4798y c4798y) {
        super(c4798y.E().B().f57587B, c4798y.E().B().f57594I);
        this.f55990e = new C10958k0();
    }

    public final String a(Predicate predicate, String str) {
        String str2;
        do {
            char[] charArray = str.toCharArray();
            str2 = charArray + a(charArray, this.f55990e);
        } while (predicate.test(str2));
        return str2;
    }
}
