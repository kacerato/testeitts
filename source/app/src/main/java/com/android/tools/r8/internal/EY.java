package com.android.tools.r8.internal;

import java.util.ArrayList;

public abstract class EY {

    public static final boolean f39941b = true;

    public final AbstractC9148qo0 f39942a;

    public EY(AbstractC9148qo0 abstractC9148qo0) {
        this.f39942a = abstractC9148qo0;
    }

    public static void a(ArrayList arrayList, com.android.tools.r8.dex.t0 t0Var, com.android.tools.r8.dex.r0 r0Var) {
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            com.android.tools.r8.graph.H2 h22 = (com.android.tools.r8.graph.H2) obj;
            t0Var.a(h22);
            if (!t0Var.a(65536)) {
                t0Var.f35957c.a();
            } else {
                t0Var.a();
                r0Var.getClass();
                t0Var = new com.android.tools.r8.dex.t0(r0Var.f35929d.b(), r0Var.f35928c, null, r0Var.f35932g, AbstractC9148qo0.b());
                r0Var.f35926a.add(t0Var);
                r0Var.f35927b.add(t0Var);
                r0Var.f35930e = JK.a(r0Var.f35927b);
                r0Var.a();
                t0Var.a(h22);
                if (!f39941b && t0Var.a(65536)) {
                    throw new AssertionError();
                }
                t0Var.f35957c.a();
            }
        }
    }

    public abstract void a(ArrayList arrayList, com.android.tools.r8.dex.q0 q0Var, com.android.tools.r8.dex.t0 t0Var, com.android.tools.r8.dex.r0 r0Var);

    public static EY a(C8570nJ c8570nJ, AbstractC9148qo0 abstractC9148qo0) {
        String str = c8570nJ.E().f51624g;
        if (str == null) {
            return new CY(abstractC9148qo0);
        }
        char c10 = '\uffff';
        switch (str.hashCode()) {
            case -1878015900:
                if (str.equals("classByNumberOfStartupMethods")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1246805710:
                if (str.equals("packageByNumberOfStartupMethods")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1235447014:
                if (str.equals("classByName")) {
                    c10 = 2;
                    break;
                }
                break;
            case 754063990:
                if (str.equals("classByNumberOfStartupMethodsMinusNumberOfNonStartupMethods")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1116752744:
                if (str.equals("packageByName")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return new C10603zY(abstractC9148qo0);
            case 1:
                throw new C6501av0();
            case 2:
                return new CY(abstractC9148qo0);
            case 3:
                return new AY(abstractC9148qo0);
            case 4:
                return new DY(abstractC9148qo0);
            default:
                throw new IllegalArgumentException("Unexpected multi startup dex distribution strategy: " + str);
        }
    }
}
