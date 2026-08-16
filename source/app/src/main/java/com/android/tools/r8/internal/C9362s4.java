package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4477h;
import com.android.tools.r8.graph.C4516j1;
import java.nio.charset.StandardCharsets;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.function.Function;

public class C9362s4 {

    public static final boolean f52265h = true;

    public List f52266a;

    public boolean f52267b;

    public boolean f52268c;

    public boolean f52269d;

    public boolean f52270e;

    public final C8570nJ f52271f;

    public String f52272g;

    public C9362s4(C8570nJ c8570nJ) {
        this.f52266a = Collections.EMPTY_LIST;
        this.f52267b = AbstractC9824ur0.a("com.android.tools.r8.artprofilerewritingcompletenesscheck", false);
        this.f52269d = false;
        this.f52270e = false;
        this.f52271f = c8570nJ;
    }

    public final List a() {
        AbstractC9109qb0 abstractC9109qb0;
        boolean z10 = f52265h;
        if (!z10 && this.f52269d && (!this.f52270e || !this.f52266a.isEmpty())) {
            throw new AssertionError();
        }
        if (!z10 && (abstractC9109qb0 = this.f52271f.f50596E1) != null && !(abstractC9109qb0 instanceof C8775ob0)) {
            throw new AssertionError();
        }
        this.f52269d = true;
        return AT.a((Collection) this.f52266a, (Function) new com.android.tools.r8.X0());
    }

    public boolean b() {
        if (!this.f52267b || this.f52271f.x().f45396a.f53764a || this.f52271f.E().f51621d) {
            return false;
        }
        HE v10 = this.f52271f.v();
        return !v10.f40717b && v10.f40716a.isEmpty();
    }

    public C9362s4(C8570nJ c8570nJ, C9362s4 c9362s4) {
        this(c8570nJ);
        this.f52266a = c9362s4.f52266a;
        this.f52267b = c9362s4.f52267b;
        this.f52268c = c9362s4.f52268c;
        this.f52269d = c9362s4.f52269d;
        this.f52270e = c9362s4.f52270e;
    }

    public C9362s4 a(boolean z10) {
        this.f52270e = z10;
        return this;
    }

    public static String a(C4477h c4477h) {
        int i10 = AbstractC8880pA.f51464a;
        InterfaceC8212lA a10 = AbstractC8713oA.f51183a.a();
        for (com.android.tools.r8.graph.H2 h22 : c4477h.e()) {
            String V02 = h22.getType().V0();
            F f10 = (F) a10;
            f10.a(V02.toString().getBytes(StandardCharsets.UTF_8));
            Iterator<C4516j1> it = h22.z1().iterator();
            while (it.hasNext()) {
                String i02 = it.next().getReference().i0();
                f10.a(i02.toString().getBytes(StandardCharsets.UTF_8));
            }
        }
        return ((C7429gW) a10).a().toString();
    }

    public C9362s4 b(boolean z10) {
        this.f52267b = z10;
        return this;
    }
}
