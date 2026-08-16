package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public final class C9823ur extends AbstractC5004Cs {

    public static final boolean f52969j = true;

    public final int f52970g;

    public final int f52971h;

    public final int[] f52972i;

    public C9823ur(C5693Op c5693Op) {
        super(c5693Op);
        int b10 = (char) (c5693Op.b() & 65535);
        this.f52970g = b10;
        this.f52971h = AbstractC5635Np.a(c5693Op);
        this.f52972i = new int[b10];
        for (int i10 = 0; i10 < this.f52970g; i10++) {
            this.f52972i[i10] = AbstractC5635Np.a(c5693Op);
        }
    }

    @Override
    public final boolean L() {
        return true;
    }

    @Override
    public final int[] O() {
        return new int[]{this.f52971h};
    }

    @Override
    public final int[] P() {
        return this.f52972i;
    }

    @Override
    public final int hashCode() {
        return Arrays.hashCode(this.f52972i) + ((((this.f52970g + 17036887) * 31) + this.f52971h) * 31);
    }

    @Override
    public final int y() {
        return (this.f52972i.length * 2) + 4;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C9823ur) obj).f52970g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C9823ur) obj).f52971h;
                return i10;
            }
        }).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((C9823ur) obj).f52972i;
                return iArr;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C10338xv1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C9823ur) abstractC5635Np, new C10338xv1());
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(1, 0, shortBuffer);
        shortBuffer.put((short) this.f52970g);
        AbstractC5635Np.a(this.f52971h, shortBuffer);
        for (int i10 = 0; i10 < this.f52970g; i10++) {
            AbstractC5635Np.a(this.f52972i[i10], shortBuffer);
        }
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b((AbstractC5635Np) null);
    }

    @Override
    public final String b(AbstractC5635Np abstractC5635Np) {
        String a10;
        StringBuilder sb2 = new StringBuilder("[PackedSwitchPayload");
        if (abstractC5635Np == null) {
            sb2.append(" offsets relative to associated PackedSwitch");
        }
        sb2.append("]\n");
        for (int i10 = 0; i10 < this.f52970g; i10++) {
            if (abstractC5635Np != null) {
                a10 = C10656zq0.a(abstractC5635Np.u() + this.f52972i[i10], 2);
            } else {
                a10 = AbstractC5635Np.a(this.f52972i[i10]);
            }
            C10656zq0.a(sb2, (this.f52971h + i10) + " -> " + a10 + "\n", 20);
        }
        return b((String) null) + sb2.toString();
    }

    public C9823ur(int[] iArr, int i10) {
        if (!f52969j && iArr.length <= 0) {
            throw new AssertionError();
        }
        this.f52970g = iArr.length;
        this.f52971h = i10;
        this.f52972i = iArr;
    }

    @Override
    public final String a(AbstractC5635Np abstractC5635Np) {
        StringBuilder sb2 = new StringBuilder("    .packed-switch ");
        sb2.append(C10656zq0.a(this.f52971h, 8));
        sb2.append("  # ");
        sb2.append(this.f52971h);
        sb2.append("\n");
        for (int i10 : this.f52972i) {
            sb2.append("      :label_");
            sb2.append(abstractC5635Np.u() + i10);
            sb2.append("\n");
        }
        sb2.append("    .end packed-switch");
        return sb2.toString();
    }
}
