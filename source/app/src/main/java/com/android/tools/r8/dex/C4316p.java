package com.android.tools.r8.dex;

import com.android.tools.r8.graph.A2;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.C10404yI;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C6246Ye;
import com.android.tools.r8.internal.C8570nJ;
import ei.C13155a;
import java.util.Arrays;
import java.util.Comparator;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.commons.math3.geometry.VectorFormat;
import u.C1;

public final class C4316p extends r {

    public final C4798y f35914a;

    public final ConcurrentHashMap f35915b = new ConcurrentHashMap();

    public C4316p(C4798y c4798y) {
        this.f35914a = c4798y;
    }

    @Override
    public final boolean a() {
        return false;
    }

    public final void b(M2 m22) {
        C4724u1 b10 = this.f35914a.b();
        int y02 = m22.y0();
        if (y02 != 0) {
            L2 l22 = m22.f36592f;
            int i10 = l22.f36561e - y02;
            byte[] bArr = l22.f36562f;
            m22 = (M2) b10.f38025d.get((L2) b10.f38017c.get(new L2(i10, Arrays.copyOfRange(bArr, y02, bArr.length))));
        }
        if (m22.f36592f.toString().startsWith("L$-vivified-$/")) {
            return;
        }
        this.f35915b.putIfAbsent(m22, new C4315o());
    }

    public final boolean c(M2 m22) {
        C8570nJ E10 = this.f35914a.E();
        if (this.f35914a.s().e(m22) != null || E10.x().a().f53766c.a(m22) || E10.x().a().f53766c.b(m22)) {
            return true;
        }
        if (m22.V0().startsWith("L" + E10.x().a().f53765b.e())) {
            return true;
        }
        C5313Ib c5313Ib = C10404yI.f53988c;
        if (m22.f36592f.toString().endsWith("$-CC;")) {
            m22 = C10404yI.b(this.f35914a.b(), m22);
        }
        return E10.x().a().i().contains(m22);
    }

    @Override
    public final void a(A2 a22) {
        M2 a10 = a22.f38297f.a(this.f35914a.b());
        if (c(a10)) {
            b(a10);
            if (!a22.f38297f.E0() && !a10.f36592f.toString().startsWith("L$-vivified-$/")) {
                ((C4315o) this.f35915b.get(a22.f38297f)).f35912b.add(a22);
            }
        }
        if (c(a22.f36127i.f36440e)) {
            b(a22.f36127i.f36440e);
        }
        for (M2 m22 : a22.f36127i.f36441f.f36675b) {
            if (c(m22)) {
                b(m22);
            }
        }
    }

    public static Comparator b() {
        return new C1();
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        M2 a10 = c4554l1.f38297f.a(this.f35914a.b());
        if (c(a10)) {
            b(a10);
            if (!c4554l1.f38297f.E0() && !a10.f36592f.toString().startsWith("L$-vivified-$/")) {
                ((C4315o) this.f35915b.get(c4554l1.f38297f)).f35911a.add(c4554l1);
            }
        }
        if (c(c4554l1.f37449i)) {
            b(c4554l1.f37449i);
        }
    }

    @Override
    public final void a(M2 m22) {
        if (c(m22)) {
            b(m22);
        }
    }

    @Override
    public final void a(H2 h22) {
        M2 m22 = h22.f36247g;
        if (c(m22)) {
            b(m22);
            ((C4315o) this.f35915b.get(m22)).f35913c = true;
        }
        for (M2 m23 : h22.f36248h.f36675b) {
            if (c(m23)) {
                b(m23);
                ((C4315o) this.f35915b.get(m23)).f35913c = true;
            }
        }
    }

    @Override
    public final void a(C8570nJ c8570nJ) {
        StringBuilder sb2 = new StringBuilder();
        String lineSeparator = System.lineSeparator();
        for (M2 m22 : C6246Ye.a(this.f35915b.o(), b())) {
            C4315o c4315o = (C4315o) this.f35915b.get(m22);
            sb2.append("-keep class ");
            L2 e10 = this.f35914a.s().e(m22);
            if (e10 == null) {
                e10 = m22.f36592f;
            }
            sb2.append(C4932Bl.b(e10.toString()));
            if (c4315o.f35913c) {
                sb2.append(" { *; }");
                sb2.append(lineSeparator);
            } else if (c4315o.f35911a.isEmpty() && c4315o.f35912b.isEmpty()) {
                sb2.append(lineSeparator);
            } else {
                sb2.append(" {");
                sb2.append(lineSeparator);
                for (C4554l1 c4554l1 : C6246Ye.a(c4315o.f35911a, b())) {
                    sb2.append(C13155a.f85806a);
                    M2 m23 = c4554l1.f37449i;
                    L2 e11 = this.f35914a.s().e(m23);
                    if (e11 == null) {
                        e11 = m23.f36592f;
                    }
                    sb2.append(C4932Bl.b(e11.toString()));
                    sb2.append(" ");
                    sb2.append((Object) c4554l1.f38298g);
                    sb2.append(";");
                    sb2.append(lineSeparator);
                }
                for (A2 a22 : C6246Ye.a(c4315o.f35912b, b())) {
                    sb2.append(C13155a.f85806a);
                    M2 m24 = a22.f36127i.f36440e;
                    L2 e12 = this.f35914a.s().e(m24);
                    if (e12 == null) {
                        e12 = m24.f36592f;
                    }
                    sb2.append(C4932Bl.b(e12.toString()));
                    sb2.append(" ");
                    sb2.append((Object) a22.f38298g);
                    sb2.append("(");
                    for (int i10 = 0; i10 < a22.w0(); i10++) {
                        if (i10 != 0) {
                            sb2.append(", ");
                        }
                        M2 m25 = a22.f36127i.f36441f.f36675b[i10];
                        L2 e13 = this.f35914a.s().e(m25);
                        if (e13 == null) {
                            e13 = m25.f36592f;
                        }
                        sb2.append(C4932Bl.b(e13.toString()));
                    }
                    sb2.append(");");
                    sb2.append(lineSeparator);
                }
                sb2.append(VectorFormat.DEFAULT_SUFFIX);
                sb2.append(lineSeparator);
            }
        }
        c8570nJ.f50647V1.accept(sb2.toString(), c8570nJ.f50691j);
        c8570nJ.f50647V1.finished(c8570nJ.f50691j);
    }
}
