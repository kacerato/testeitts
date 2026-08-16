package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4406d4;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public abstract class AbstractC8315lp extends AbstractC9978vn {

    public static final boolean f50109m = true;

    public final byte f50110f;

    public final byte f50111g;

    public final byte f50112h;

    public final byte f50113i;

    public final byte f50114j;

    public final byte f50115k;

    public final AbstractC4406d4 f50116l;

    public AbstractC8315lp(int i10, C5693Op c5693Op, AbstractC4406d4[] abstractC4406d4Arr) {
        super(c5693Op);
        this.f50115k = (byte) (i10 & 15);
        this.f50110f = (byte) ((i10 >> 4) & 15);
        this.f50116l = abstractC4406d4Arr[(char) (c5693Op.b() & 65535)];
        short a10 = (short) c5693Op.a();
        this.f50113i = (byte) (a10 & 15);
        this.f50114j = (byte) ((a10 >> 4) & 15);
        short a11 = (short) c5693Op.a();
        this.f50111g = (byte) (a11 & 15);
        this.f50112h = (byte) ((a11 >> 4) & 15);
    }

    @Override
    public final int hashCode() {
        return (((((((this.f50116l.hashCode() << 24) | (this.f50110f << 20)) | (this.f50111g << 16)) | (this.f50112h << 12)) | (this.f50113i << 8)) | (this.f50114j << 4)) | this.f50115k) ^ getClass().hashCode();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8315lp) obj).f50110f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8315lp) obj).f50111g;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8315lp) obj).f50112h;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8315lp) obj).f50113i;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8315lp) obj).f50114j;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8315lp) obj).f50115k;
                return i10;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC4406d4 abstractC4406d4;
                abstractC4406d4 = ((AbstractC8315lp) obj).f50116l;
                return abstractC4406d4;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new C7799ij1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ ");
        int[] iArr = {this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k};
        for (int i10 = 0; i10 < this.f50110f; i10++) {
            if (i10 != 0) {
                sb2.append(" ");
            }
            sb2.append("v");
            sb2.append(iArr[i10]);
        }
        sb2.append(" } ");
        sb2.append(c9970vk0.a(this.f50116l));
        return b(sb2.toString());
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC8315lp) abstractC5635Np, new C7799ij1());
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ ");
        int[] iArr = {this.f50111g, this.f50112h, this.f50113i, this.f50114j, this.f50115k};
        for (int i10 = 0; i10 < this.f50110f; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            sb2.append("v");
            sb2.append(iArr[i10]);
        }
        sb2.append(" }, ");
        sb2.append(this.f50116l.i0());
        return a(sb2.toString());
    }

    public AbstractC8315lp(int i10, AbstractC4406d4 abstractC4406d4, int i11, int i12, int i13, int i14, int i15) {
        boolean z10 = f50109m;
        if (!z10 && (i10 < 0 || i10 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i12 < 0 || i12 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i13 < 0 || i13 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i14 < 0 || i14 > 15)) {
            throw new AssertionError();
        }
        if (!z10 && (i15 < 0 || i15 > 15)) {
            throw new AssertionError();
        }
        this.f50110f = (byte) i10;
        this.f50116l = abstractC4406d4;
        this.f50111g = (byte) i11;
        this.f50112h = (byte) i12;
        this.f50113i = (byte) i13;
        this.f50114j = (byte) i14;
        this.f50115k = (byte) i15;
    }
}
