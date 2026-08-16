package com.android.tools.r8.synthesis;

import com.android.tools.r8.graph.J2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.R00;
import com.android.tools.r8.synthesis.S;
import java.util.function.Function;

public abstract class AbstractC11547a0 {

    public static final boolean f58221c = true;

    public final S.b f58222a;

    public final C11579l f58223b;

    public AbstractC11547a0(S.b bVar, C11579l c11579l) {
        boolean z10 = f58221c;
        if (!z10 && bVar == null) {
            throw new AssertionError();
        }
        if (!z10 && c11579l == null) {
            throw new AssertionError();
        }
        this.f58222a = bVar;
        this.f58223b = c11579l;
    }

    public final S.b a() {
        return this.f58222a;
    }

    public abstract AbstractC11547a0 a(C11579l c11579l, R00 r00);

    public abstract AbstractC11602t a(Function function);

    public abstract J2 b();

    public abstract M2 getHolder();

    public InterfaceC11576k a(R00 r00) {
        C11579l c11579l = this.f58223b;
        M2 m22 = c11579l.f58274c;
        r00.getClass();
        M2 c10 = r00.c(AbstractC5308Hz.g(), m22);
        M2 c11 = r00.c(AbstractC5308Hz.g(), c11579l.f58273b);
        if (c10 != c11579l.f58274c || c11 != c11579l.f58273b) {
            c11579l = new C11579l(c11, c10, c11579l.f58275d, c11579l.f58276e);
        }
        return (InterfaceC11576k) a(c11579l, r00);
    }
}
