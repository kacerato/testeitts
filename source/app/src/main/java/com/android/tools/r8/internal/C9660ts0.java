package com.android.tools.r8.internal;

import java.util.Iterator;
import java.util.function.BiConsumer;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class C9660ts0 implements BiConsumer {

    public final AbstractC5963Tf0 f52710a;

    public C9660ts0(AbstractC5963Tf0 abstractC5963Tf0) {
        this.f52710a = abstractC5963Tf0;
    }

    @Override
    public final void accept(Object obj, Object obj2) {
        String str = (String) obj;
        String str2 = (String) obj2;
        if (str == null) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode == -1354971316) {
            if (str.equals("shrinkMode") && str2 != null && str2.hashCode() == -891986231 && str2.equals("strict")) {
                this.f52710a.f44525b.f49018h = false;
                return;
            }
            return;
        }
        if (hashCode != 3287941) {
            if (hashCode != 1671366814 || !str.equals("discard")) {
                return;
            }
            C7789ig0 c7789ig0 = this.f52710a.f44525b;
            GJ.b(str2, "value");
            c7789ig0.getClass();
            C10647zn0 c10647zn0 = new C10647zn0(new C5776Qb(IIndexConstants.PARAMETER_SEPARATOR));
            C6008Ub c6008Ub = C6008Ub.f44798c;
            C6066Vb c6066Vb = C6066Vb.f45100d;
            c6066Vb.getClass();
            Iterator a10 = c10647zn0.a(new C5111En0(c10647zn0, true, c6066Vb, Integer.MAX_VALUE), str2);
            while (true) {
                AbstractC4995Cn0 abstractC4995Cn0 = (AbstractC4995Cn0) a10;
                if (!abstractC4995Cn0.hasNext()) {
                    return;
                }
                c7789ig0.f49017g.add((String) abstractC4995Cn0.next());
            }
        } else {
            if (!str.equals("keep")) {
                return;
            }
            C7789ig0 c7789ig02 = this.f52710a.f44525b;
            GJ.b(str2, "value");
            c7789ig02.getClass();
            C10647zn0 c10647zn02 = new C10647zn0(new C5776Qb(IIndexConstants.PARAMETER_SEPARATOR));
            C6008Ub c6008Ub2 = C6008Ub.f44798c;
            C6066Vb c6066Vb2 = C6066Vb.f45100d;
            c6066Vb2.getClass();
            Iterator a11 = c10647zn02.a(new C5111En0(c10647zn02, true, c6066Vb2, Integer.MAX_VALUE), str2);
            while (true) {
                AbstractC4995Cn0 abstractC4995Cn02 = (AbstractC4995Cn0) a11;
                if (!abstractC4995Cn02.hasNext()) {
                    return;
                }
                c7789ig02.f49016f.add((String) abstractC4995Cn02.next());
            }
        }
    }
}
