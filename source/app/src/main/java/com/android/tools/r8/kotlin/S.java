package com.android.tools.r8.kotlin;

import com.android.tools.r8.internal.C5417Jv0;
import com.android.tools.r8.internal.InterfaceC9597tW;
import com.android.tools.r8.internal.KL;
import com.android.tools.r8.internal.ML;
import com.android.tools.r8.internal.NQ;

public class S implements InterfaceC9597tW {

    public static final String[] f55161h = new String[0];

    public static final int[] f55162i = new int[0];

    public final int f55163a;

    public final int[] f55164b;

    public final String[] f55165c;

    public final String[] f55166d;

    public final int f55167e;

    public final String f55168f;

    public final String f55169g;

    public S(Integer num, int[] iArr, String[] strArr, String[] strArr2, String str, String str2, Integer num2) {
        this.f55163a = num.intValue();
        this.f55164b = iArr == null ? f55162i : iArr;
        this.f55165c = strArr == null ? f55161h : strArr;
        this.f55166d = strArr2 == null ? f55161h : strArr2;
        this.f55168f = str == null ? "" : str;
        this.f55169g = str2 == null ? "" : str2;
        this.f55167e = num2 == null ? 0 : num2.intValue();
    }

    public static S a(NQ nq) {
        KL b10;
        boolean z10 = r.f55448a;
        ML a10 = nq.a();
        if (a10.f42275b == 1 && a10.f42276c < 4) {
            nq.a(M.f55114a);
            b10 = nq.b();
            nq.a(a10);
        } else {
            b10 = nq.b();
        }
        Integer valueOf = Integer.valueOf(b10.f41639a);
        ML a11 = nq.a();
        ML ml2 = M.f55114a;
        return new S(valueOf, new int[]{a11.f42275b, a11.f42276c, a11.f42277d}, b10.f41642d, b10.f41643e, b10.f41644f, b10.f41645g, Integer.valueOf(b10.f41646h));
    }

    @Override
    public final Class annotationType() {
        throw new C5417Jv0("Should never be called");
    }

    public String[] b() {
        return this.f55166d;
    }

    @Override
    public final int[] bv() {
        throw new C5417Jv0("Field is deprecated and should not be used");
    }

    public int d() {
        return this.f55163a;
    }

    @Override
    public final String[] d1() {
        return this.f55165c;
    }

    @Override
    public final String[] d2() {
        return this.f55166d;
    }

    public String e() {
        return this.f55169g;
    }

    @Override
    public final boolean equals(Object obj) {
        throw new C5417Jv0();
    }

    @Override
    public final int hashCode() {
        throw new C5417Jv0();
    }

    @Override
    public final int k() {
        return this.f55163a;
    }

    @Override
    public final int[] mv() {
        return this.f55164b;
    }

    @Override
    public final String pn() {
        return this.f55169g;
    }

    @Override
    public final int xi() {
        return this.f55167e;
    }

    @Override
    public final String xs() {
        return this.f55168f;
    }

    public String[] a() {
        return this.f55165c;
    }
}
