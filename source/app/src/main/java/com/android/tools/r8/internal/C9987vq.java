package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4766w5;
import com.android.tools.r8.graph.C4798y;
import java.nio.ShortBuffer;
import java.util.function.Function;
import org.eclipse.jdt.internal.core.JavadocConstants;

public final class C9987vq extends AbstractC6153Wo {

    public static final boolean f53338j = true;

    public final ZY f53339i;

    public C9987vq(int i10, com.android.tools.r8.graph.J2 j22, ZY zy) {
        super(i10, j22);
        this.f53339i = zy;
    }

    public static com.android.tools.r8.graph.J2 b(AbstractC6153Wo abstractC6153Wo) {
        return (com.android.tools.r8.graph.J2) abstractC6153Wo.f45541g;
    }

    @Override
    public final void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, com.android.tools.r8.dex.M m10, com.android.tools.r8.graph.H5 h52, RR rr) {
        ((com.android.tools.r8.graph.J2) this.f45541g).a(c4798y, m10);
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final int p() {
        return 257;
    }

    @Override
    public final String t() {
        return "DexItemBasedConstString";
    }

    @Override
    public final int v() {
        throw new C5417Jv0("DexItemBasedConstString instructions should always be rewritten into ConstString");
    }

    @Override
    public final String z() {
        return "const-string*";
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f45540f;
        return b("v" + ((int) s10) + ", \"" + ((com.android.tools.r8.graph.J2) this.f45541g).toString() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.c(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C9987vq.b((AbstractC6153Wo) obj);
            }
        });
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f45540f;
        return a("v" + ((int) s10) + ", \"" + ((com.android.tools.r8.graph.J2) this.f45541g).toString() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public final void a(C4766w5 c4766w5, com.android.tools.r8.graph.H5 h52, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, RR rr, ShortBuffer shortBuffer) {
        throw new C5417Jv0("DexItemBasedConstString instructions should always be rewritten into ConstString");
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6) {
        if (this.f53339i.e()) {
            if (!f53338j) {
                com.android.tools.r8.graph.J2 j22 = (com.android.tools.r8.graph.J2) this.f45541g;
                j22.getClass();
                if (!(j22 instanceof com.android.tools.r8.graph.M2)) {
                    throw new AssertionError();
                }
            }
            abstractC4446f6.f(((com.android.tools.r8.graph.J2) this.f45541g).o0());
        }
    }

    @Override
    public final void a(C6382aB c6382aB) {
        short s10 = this.f45540f;
        c6382aB.a(new C9820uq(c6382aB.a(s10, 2, AbstractC8999pu0.a((C4798y<?>) c6382aB.f46457p, C8854p10.b())), (com.android.tools.r8.graph.J2) this.f45541g, this.f53339i));
    }
}
