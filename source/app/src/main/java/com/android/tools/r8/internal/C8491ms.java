package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4766w5;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public final class C8491ms extends AbstractC5004Cs {

    public static final boolean f50439j = true;

    public final int f50440g;

    public final int[] f50441h;

    public final int[] f50442i;

    public C8491ms(C5693Op c5693Op) {
        super(c5693Op);
        int i10;
        int b10 = (char) (c5693Op.b() & 65535);
        this.f50440g = b10;
        this.f50441h = new int[b10];
        int i11 = 0;
        while (true) {
            i10 = this.f50440g;
            if (i11 >= i10) {
                break;
            }
            this.f50441h[i11] = AbstractC5635Np.a(c5693Op);
            i11++;
        }
        this.f50442i = new int[i10];
        for (int i12 = 0; i12 < this.f50440g; i12++) {
            this.f50442i[i12] = AbstractC5635Np.a(c5693Op);
        }
    }

    @Override
    public final boolean L() {
        return true;
    }

    @Override
    public final int[] O() {
        return this.f50441h;
    }

    @Override
    public final int[] P() {
        return this.f50442i;
    }

    @Override
    public final int hashCode() {
        return Arrays.hashCode(this.f50442i) + ((Arrays.hashCode(this.f50441h) + ((this.f50440g + 17036887) * 31)) * 31);
    }

    @Override
    public final int y() {
        return (this.f50442i.length * 2) + (this.f50441h.length * 2) + 2;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((C8491ms) obj).f50440g;
                return i10;
            }
        }).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((C8491ms) obj).f50441h;
                return iArr;
            }
        }).d(new Function() {
            @Override
            public final Object apply(Object obj) {
                int[] iArr;
                iArr = ((C8491ms) obj).f50442i;
                return iArr;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new Ql1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (C8491ms) abstractC5635Np, new Ql1());
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        AbstractC5635Np.a(2, 0, shortBuffer);
        shortBuffer.put((short) this.f50440g);
        for (int i10 = 0; i10 < this.f50440g; i10++) {
            AbstractC5635Np.a(this.f50441h[i10], shortBuffer);
        }
        for (int i11 = 0; i11 < this.f50440g; i11++) {
            AbstractC5635Np.a(this.f50442i[i11], shortBuffer);
        }
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        return b((AbstractC5635Np) null);
    }

    @Override
    public final String b(AbstractC5635Np abstractC5635Np) {
        String num;
        StringBuilder sb2 = new StringBuilder("[SparseSwitchPayload");
        if (abstractC5635Np == null) {
            sb2.append(" offsets relative to associated SparseSwitch");
        }
        sb2.append("]\n");
        for (int i10 = 0; i10 < this.f50440g; i10++) {
            if (abstractC5635Np != null) {
                num = C10656zq0.a(abstractC5635Np.u() + this.f50442i[i10], 2);
            } else {
                int i11 = this.f50442i[i10];
                num = i11 >= 0 ? "+" + i11 : Integer.toString(i11);
            }
            C10656zq0.a(sb2, this.f50441h[i10] + " -> " + num + "\n", 20);
        }
        return b((String) null) + sb2.toString();
    }

    public C8491ms(int[] iArr, int[] iArr2) {
        if (!f50439j && iArr2.length <= 0) {
            throw new AssertionError();
        }
        this.f50440g = iArr2.length;
        this.f50441h = iArr;
        this.f50442i = iArr2;
    }

    @Override
    public final String a(AbstractC5635Np abstractC5635Np) {
        StringBuilder sb2 = new StringBuilder("    .sparse-switch\n");
        for (int i10 = 0; i10 < this.f50441h.length; i10++) {
            sb2.append("      ");
            sb2.append(C10656zq0.a(this.f50441h[i10], 8));
            sb2.append(" -> :label_");
            sb2.append(abstractC5635Np.u() + this.f50442i[i10]);
            sb2.append("  # ");
            sb2.append(this.f50441h[i10]);
            sb2.append("\n");
        }
        sb2.append("    .end sparse-switch");
        return sb2.toString();
    }
}
