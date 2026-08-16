package com.android.tools.r8.graph;

import com.android.tools.r8.dex.C4303c;
import com.android.tools.r8.graph.J0;
import com.android.tools.r8.internal.AbstractC5004Cs;
import com.android.tools.r8.internal.AbstractC5635Np;
import com.android.tools.r8.internal.C10137wk0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C5325If;
import com.android.tools.r8.internal.C7093eV;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C8659ns0;
import com.android.tools.r8.internal.C9970vk0;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.android.tools.r8.naming.C10912b;
import com.android.tools.r8.utils.C11662i;
import com.bumptech.glide.load.engine.GlideException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;

public class U5 extends B0 {
    public U5(C4765w4 c4765w4, C8570nJ c8570nJ) {
        super(c4765w4, c8570nJ);
    }

    public static String a(C11662i c11662i, C8570nJ c8570nJ) {
        String byteArrayOutputStream;
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        try {
            PrintStream printStream = new PrintStream(byteArrayOutputStream2);
            try {
                new U5(new C4303c(c11662i, c8570nJ, C8659ns0.c()).a(), c8570nJ).b(printStream);
                printStream.close();
                byteArrayOutputStream = byteArrayOutputStream2.toString(StandardCharsets.UTF_8);
                return byteArrayOutputStream;
            } finally {
            }
        } catch (IOException e10) {
            throw new C5325If("Failed to generate smali sting", e10);
        }
    }

    @Override
    public final void a(PrintStream printStream, C4460g1 c4460g1) {
    }

    @Override
    public final void c(H2 h22, PrintStream printStream) {
        printStream.append(".class ");
        printStream.append((CharSequence) h22.f36246f.a(true));
        printStream.append(" ");
        printStream.append((CharSequence) h22.f36245e.i0());
        printStream.append("\n\n");
        if (h22.f36245e != this.f36143a.f38367e.f38068i2) {
            printStream.append(".super ");
            printStream.append((CharSequence) h22.f36247g.i0());
            printStream.append("\n");
            for (M2 m22 : h22.f36248h.f36675b) {
                printStream.append(".implements ");
                printStream.append((CharSequence) m22.i0());
                printStream.append("\n");
            }
        }
    }

    @Override
    public final void b(H2 h22, PrintStream printStream) {
        printStream.append("# End of class ");
        printStream.append((CharSequence) h22.f36245e.i0());
        printStream.append("\n");
    }

    @Override
    public final void a(PrintStream printStream, H5 h52) {
        C9970vk0 c9970vk0;
        printStream.append("\n");
        C4516j1 d10 = h52.d();
        C10912b g10 = this.f36143a.g();
        C5094Ef0 c5094Ef0 = this.f36143a.f38366d.f50691j;
        if (g10 == null) {
            c9970vk0 = C9970vk0.f53318b;
        } else {
            c9970vk0 = new C9970vk0(C10137wk0.a(C7093eV.a(g10), c5094Ef0));
        }
        d10.L0();
        StringBuilder sb2 = new StringBuilder(".method ");
        sb2.append(d10.f37314g.a(true));
        sb2.append(" ");
        sb2.append(d10.getReference().f38298g.toString());
        I2 i22 = d10.getReference().f36127i;
        i22.getClass();
        sb2.append(i22.a(AbstractC10992r0.a()));
        sb2.append("\n");
        AbstractC4497i0 abstractC4497i0 = d10.f37317j;
        if (abstractC4497i0 != null) {
            J0 C10 = abstractC4497i0.C();
            sb2.append("    .registers ");
            sb2.append(C10.f36458e);
            sb2.append("\n\n");
            StringBuilder sb3 = new StringBuilder();
            HashMap hashMap = new HashMap();
            HashSet hashSet = new HashSet();
            for (AbstractC5635Np abstractC5635Np : C10.f36463j) {
                int[] A10 = abstractC5635Np.A();
                AbstractC5635Np[] abstractC5635NpArr = AbstractC5635Np.f42702c;
                if (A10 != null && A10 != AbstractC5635Np.f42703d) {
                    if (!J0.f36457o && A10.length > 2) {
                        throw new AssertionError();
                    }
                    hashSet.add(Integer.valueOf(abstractC5635Np.u() + A10[0]));
                } else if (abstractC5635Np.B()) {
                    hashSet.add(Integer.valueOf(abstractC5635Np.w() + abstractC5635Np.u()));
                    hashMap.put(Integer.valueOf(abstractC5635Np.w() + abstractC5635Np.u()), abstractC5635Np);
                }
            }
            int i10 = 0;
            AbstractC5635Np[] abstractC5635NpArr2 = C10.f36463j;
            int length = abstractC5635NpArr2.length;
            int i11 = 0;
            while (i11 < length) {
                AbstractC5635Np abstractC5635Np2 = abstractC5635NpArr2[i11];
                if (abstractC5635Np2.N()) {
                    AbstractC5635Np abstractC5635Np3 = (AbstractC5635Np) hashMap.get(Integer.valueOf(abstractC5635Np2.u()));
                    if (abstractC5635Np2 instanceof AbstractC5004Cs) {
                        int[] P10 = ((AbstractC5004Cs) abstractC5635Np2).P();
                        int length2 = P10.length;
                        while (i10 < length2) {
                            hashSet.add(Integer.valueOf(abstractC5635Np3.u() + P10[i10]));
                            i10++;
                        }
                    }
                }
                i11++;
                i10 = 0;
            }
            for (AbstractC5635Np abstractC5635Np4 : C10.f36463j) {
                if (hashSet.contains(Integer.valueOf(abstractC5635Np4.u()))) {
                    sb3.append("  :label_");
                    sb3.append(abstractC5635Np4.u());
                    sb3.append("\n");
                }
                if (abstractC5635Np4.N()) {
                    sb3.append(abstractC5635Np4.a((AbstractC5635Np) hashMap.get(Integer.valueOf(abstractC5635Np4.u()))));
                    sb3.append('\n');
                } else {
                    sb3.append(abstractC5635Np4.a(c9970vk0));
                    sb3.append('\n');
                }
            }
            if (C10.f36461h.length > 0) {
                sb3.append("Tries (numbers are offsets)\n");
                for (J0.a aVar : C10.f36461h) {
                    sb3.append(GlideException.a.f59088e);
                    sb3.append(aVar.toString());
                    sb3.append('\n');
                }
                sb3.append("Handlers (numbers are offsets)\n");
                for (J0.b bVar : C10.f36462i) {
                    sb3.append(bVar.toString());
                    sb3.append('\n');
                }
            }
            sb2.append(sb3.toString());
        }
        sb2.append(".end method\n");
        printStream.append((CharSequence) sb2.toString());
        printStream.append("\n");
    }
}
