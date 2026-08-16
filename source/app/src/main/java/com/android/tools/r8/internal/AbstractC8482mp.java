package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4406d4;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public abstract class AbstractC8482mp extends AbstractC9978vn {

    public static final boolean f50426i = true;

    public final short f50427f;

    public final char f50428g;

    public final AbstractC4406d4 f50429h;

    public AbstractC8482mp(int i10, C5693Op c5693Op, AbstractC4406d4[] abstractC4406d4Arr) {
        super(c5693Op);
        this.f50427f = (short) i10;
        this.f50429h = abstractC4406d4Arr[(char) (c5693Op.b() & 65535)];
        this.f50428g = (char) (c5693Op.b() & 65535);
    }

    @Override
    public final int hashCode() {
        return (((this.f50428g << 24) | (this.f50429h.hashCode() << 4)) | this.f50427f) ^ getClass().hashCode();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8482mp) obj).f50427f;
                return i10;
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int i10;
                i10 = ((AbstractC8482mp) obj).f50428g;
                return i10;
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                AbstractC4406d4 abstractC4406d4;
                abstractC4406d4 = ((AbstractC8482mp) obj).f50429h;
                return abstractC4406d4;
            }
        });
    }

    @Override
    public final void b(AbstractC9213rA abstractC9213rA) {
        new Ll1().a(new C9380sA(this, (C9547tA) abstractC9213rA));
    }

    @Override
    public final int a(AbstractC5635Np abstractC5635Np, AbstractC8953pf abstractC8953pf) {
        return abstractC8953pf.a(this, (AbstractC8482mp) abstractC5635Np, new Ll1());
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ v");
        char c10 = this.f50428g;
        sb2.append((int) c10);
        if (this.f50427f != 1) {
            sb2.append(" .. v");
            sb2.append((c10 + this.f50427f) - 1);
        }
        sb2.append(" }, ");
        sb2.append(this.f50429h.i0());
        return a(sb2.toString());
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        StringBuilder sb2 = new StringBuilder("{ v");
        char c10 = this.f50428g;
        sb2.append((int) c10);
        if (this.f50427f != 1) {
            sb2.append(" .. v");
            sb2.append((c10 + this.f50427f) - 1);
        }
        sb2.append(" } ");
        sb2.append(c9970vk0.a(this.f50429h));
        return b(sb2.toString());
    }

    public AbstractC8482mp(int i10, int i11, AbstractC4406d4 abstractC4406d4) {
        boolean z10 = f50426i;
        if (!z10 && (i10 < 0 || i10 > 65535)) {
            throw new AssertionError();
        }
        if (!z10 && (i11 < 0 || i11 > 255)) {
            throw new AssertionError();
        }
        this.f50428g = (char) i10;
        this.f50427f = (short) i11;
        this.f50429h = abstractC4406d4;
    }
}
