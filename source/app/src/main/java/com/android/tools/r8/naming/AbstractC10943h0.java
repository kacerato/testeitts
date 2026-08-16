package com.android.tools.r8.naming;

import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.C7489gr0;
import java.util.HashSet;

public abstract class AbstractC10943h0 {

    public static final boolean f55907d = true;

    public final AbstractC7552hC f55908a;

    public final HashSet f55909b;

    public final C7489gr0.a f55910c;

    public AbstractC10943h0(AbstractC7552hC abstractC7552hC, boolean z10) {
        if (!f55907d && abstractC7552hC == null) {
            throw new AssertionError();
        }
        this.f55908a = abstractC7552hC;
        this.f55909b = new HashSet(abstractC7552hC);
        this.f55910c = z10 ? C7489gr0.a.f48378c : C7489gr0.a.f48377b;
    }

    public String a(char[] cArr, L l10) {
        String a10;
        do {
            if (l10.a() < this.f55908a.size()) {
                a10 = (String) this.f55908a.get(l10.b());
            }
            do {
                a10 = C7489gr0.a(l10.c(), this.f55910c);
            } while (this.f55909b.contains(a10));
        } while (C7489gr0.f48372a.contains(a10));
        return a10;
    }
}
