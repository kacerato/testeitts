package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.function.Function;
import org.openjdk.tools.doclint.DocLint;

public final class C4886Ar extends AbstractC5635Np {

    public final int f38722f;

    public final int[] f38723g;

    public final C4554l1[] f38724h;

    public C4886Ar(int i10, int[] iArr, C4554l1[] c4554l1Arr) {
        this.f38722f = i10;
        this.f38723g = iArr;
        this.f38724h = c4554l1Arr;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        for (C4554l1 c4554l1 : this.f38724h) {
            c4554l1.a(c4798y, m10);
        }
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C4961Bz0().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final int hashCode() {
        return (C4886Ar.class.hashCode() * 31) + Arrays.hashCode(this.f38724h);
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final int p() {
        return 258;
    }

    @Override
    public final String t() {
        return "RecordFieldValues";
    }

    @Override
    public final int v() {
        throw new C5417Jv0("DexRecordFieldValues instructions should always be rewritten into NewArray");
    }

    @Override
    public final int y() {
        return 2;
    }

    @Override
    public final String z() {
        return "record-field-values*";
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C4886Ar) abstractC5635Np, new C4961Bz0());
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("v");
        sb2.append(this.f38722f);
        sb2.append(" { ");
        for (int i10 = 0; i10 < this.f38723g.length; i10++) {
            if (i10 != 0) {
                sb2.append(DocLint.SEPARATOR);
            }
            sb2.append("v");
            sb2.append(this.f38723g[i10]);
        }
        sb2.append(" }");
        return b(sb2.toString());
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4554l1[] c4554l1Arr;
                c4554l1Arr = ((C4886Ar) obj).f38724h;
                return c4554l1Arr;
            }
        });
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        return b(c9970vk0);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        throw new C5417Jv0("DexRecordFieldValues instructions should always be rewritten into NewArray");
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.c();
    }

    @Override
    public final void a(C6382aB c6382aB) {
        CH ch2 = new CH(16);
        int i10 = 0;
        while (true) {
            int[] iArr = this.f38723g;
            if (i10 < iArr.length) {
                ch2.add(iArr[i10]);
                i10++;
            } else {
                c6382aB.a(this.f38724h, ch2, this.f38722f);
                return;
            }
        }
    }
}
