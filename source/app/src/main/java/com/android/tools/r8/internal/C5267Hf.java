package com.android.tools.r8.internal;

import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;

public final class C5267Hf {

    public static final boolean f40821e = true;

    public final Consumer f40822a;

    public final Thread f40823b;

    public final ConcurrentHashMap f40824c = new ConcurrentHashMap();

    public int f40825d = 0;

    public C5267Hf(C8570nJ c8570nJ) {
        this.f40822a = c8570nJ.f50599F1.f50914x;
        this.f40823b = c8570nJ.f50654Y;
    }

    public final void a(AbstractC4919Bf abstractC4919Bf) {
        String sb2 = abstractC4919Bf.a(new StringBuilder()).toString();
        String sb3 = abstractC4919Bf.b(new StringBuilder()).toString();
        boolean z10 = f40821e;
        if (!z10 && !sb2.endsWith(sb3)) {
            throw new AssertionError();
        }
        Consumer consumer = this.f40822a;
        if (consumer != null) {
            consumer.accept(sb2);
        }
        if (z10 || this.f40824c.put(sb2, sb2) == null) {
            return;
        }
        throw new AssertionError((Object) ("Duplicated use of context descriptor: " + sb2));
    }
}
