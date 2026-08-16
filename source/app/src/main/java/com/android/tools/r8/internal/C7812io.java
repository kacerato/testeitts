package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C7812io extends AbstractC6153Wo {
    public C7812io(int i10, com.android.tools.r8.graph.C2 c22) {
        super(i10, c22);
    }

    public static com.android.tools.r8.graph.C2 b(AbstractC6153Wo abstractC6153Wo) {
        return (com.android.tools.r8.graph.C2) abstractC6153Wo.f45541g;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) this.f45541g;
        rr.getClass();
        rr.a(c22, 2, h52.getReference()).a(c4798y, m10);
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "ConstMethodHandle";
    }

    @Override
    public final int v() {
        return 254;
    }

    @Override
    public final String z() {
        return "const-method-handle";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7812io(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.f38379h);
        if (!C4785x5.f38371i && c4785x5.f38379h == null) {
            throw new AssertionError();
        }
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f45540f;
        return b("v" + ((int) s10) + ", \"" + ((com.android.tools.r8.graph.C2) this.f45541g).toString() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        abstractC4446f6.a(2, (com.android.tools.r8.graph.C2) this.f45541g);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) this.f45541g;
        rr.getClass();
        com.android.tools.r8.graph.C2 a10 = rr.a(c22, 2, h52.getReference());
        int a11 = C4766w5.a(a10, c4766w5.f38345l);
        if (a11 == (65535 & a11)) {
            AbstractC5635Np.a(this.f45540f, 254, shortBuffer);
            AbstractC5635Np.a(a10, shortBuffer, c4766w5);
            return;
        }
        throw new C6570bJ("MethodHandle-index overflow.");
    }

    @Override
    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7812io.b((AbstractC6153Wo) obj);
            }
        });
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f45540f;
        return a("v" + ((int) s10) + ", \"" + ((com.android.tools.r8.graph.C2) this.f45541g).toString() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public final void a(C6382aB c6382aB) {
        c6382aB.a(this.f45540f, (com.android.tools.r8.graph.C2) this.f45541g);
    }
}
