package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4785x5;
import com.android.tools.r8.graph.C4798y;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class C8312lo extends AbstractC7649hp {
    public C8312lo(int i10, com.android.tools.r8.graph.L2 l22) {
        super(i10, l22);
    }

    public com.android.tools.r8.graph.L2 O() {
        return this.f48718g;
    }

    @Override
    public final String a(C9970vk0 c9970vk0) {
        short s10 = this.f48717f;
        return a("v" + ((int) s10) + ", \"" + this.f48718g.toString() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public final String b(C9970vk0 c9970vk0) {
        short s10 = this.f48717f;
        return b("v" + ((int) s10) + ", \"" + this.f48718g.toString() + JavadocConstants.ANCHOR_PREFIX_END);
    }

    @Override
    public final C8312lo f() {
        return this;
    }

    @Override
    public final boolean l() {
        return true;
    }

    @Override
    public final String t() {
        return "ConstStringJumbo";
    }

    @Override
    public final int v() {
        return 27;
    }

    @Override
    public final String z() {
        return "const-string/jumbo";
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8312lo(int i10, C5693Op c5693Op, C4785x5 c4785x5) {
        super(i10, c5693Op, c4785x5.f38377f);
        if (!C4785x5.f38371i && c4785x5.f38377f == null) {
            throw new AssertionError();
        }
    }

    @Override
    public final void a(C6382aB c6382aB) {
        short s10 = this.f48717f;
        c6382aB.a(new C9960vh(c6382aB.a(s10, 2, AbstractC8999pu0.a((C4798y<?>) c6382aB.f46457p, C8854p10.b())), this.f48718g));
    }
}
