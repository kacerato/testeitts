package com.android.tools.r8.dex;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.errors.StartupClassesNonStartupFractionDiagnostic;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.internal.AT;
import com.android.tools.r8.internal.AbstractC9148qo0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C6570bJ;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9691u20;
import com.android.tools.r8.internal.EY;
import com.android.tools.r8.internal.IH;
import com.android.tools.r8.internal.JK;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.function.Consumer;

public final class q0 {

    public static final boolean f35918g = true;

    public final p0 f35919a;

    public final IdentityHashMap f35920b;

    public final C4724u1 f35921c;

    public final C8570nJ f35922d;

    public final r0 f35923e;

    public final AbstractC9148qo0 f35924f;

    public q0(ArrayList arrayList, List list, C4798y c4798y, Collection collection, IdentityHashMap identityHashMap, AbstractC9148qo0 abstractC9148qo0, IH ih2) {
        this.f35919a = p0.a(collection, identityHashMap, abstractC9148qo0);
        this.f35920b = identityHashMap;
        this.f35921c = c4798y.b();
        this.f35922d = c4798y.E();
        this.f35923e = new r0(arrayList, list, c4798y, ih2);
        this.f35924f = abstractC9148qo0;
    }

    public final t0 a(r0 r0Var) {
        t0 t0Var = null;
        while (r0Var.f35931f.hasNext()) {
            t0Var = (t0) r0Var.f35931f.next();
            if (!a(t0Var, this.f35922d)) {
                break;
            }
        }
        if (t0Var != null && !a(t0Var, this.f35922d)) {
            return t0Var;
        }
        t0 t0Var2 = new t0(r0Var.f35929d.b(), r0Var.f35928c, null, r0Var.f35932g, AbstractC9148qo0.b());
        r0Var.f35926a.add(t0Var2);
        r0Var.f35927b.add(t0Var2);
        r0Var.f35930e = JK.a(r0Var.f35927b);
        r0Var.a();
        return t0Var2;
    }

    public final void a() {
        Collection collection;
        if (this.f35919a.f35916a.isEmpty()) {
            return;
        }
        if (!f35918g && ((collection = this.f35922d.E().f51625h) == null || collection.isEmpty())) {
            throw new AssertionError();
        }
        t0 t0Var = (t0) this.f35923e.f35931f.next();
        ArrayList arrayList = this.f35919a.f35916a;
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            t0Var.a((H2) obj);
        }
        boolean a10 = a(t0Var, this.f35922d);
        if (!a10) {
            t0Var.f35957c.a();
            t0Var.f35962h = true;
        } else {
            t0Var.a();
            EY.a(this.f35922d, this.f35924f).a(this.f35919a.f35916a, this, t0Var, this.f35923e);
            this.f35923e.f35927b.forEach(new Consumer() {
                @Override
                public final void accept(Object obj2) {
                    ((com.android.tools.r8.dex.t0) obj2).e();
                }
            });
            this.f35922d.f50691j.warning(com.android.tools.r8.errors.g.a(this.f35923e.f35927b.size()));
        }
        C5094Ef0 c5094Ef0 = this.f35922d.f50691j;
        StartupClassesNonStartupFractionDiagnostic a11 = com.android.tools.r8.errors.f.a(this.f35919a.f35916a, this.f35924f);
        synchronized (c5094Ef0) {
            c5094Ef0.a(DiagnosticsLevel.INFO, a11);
        }
        if (this.f35922d.E().f51619b) {
            t0 t0Var2 = (t0) AT.b(this.f35923e.f35927b);
            r0 r0Var = this.f35923e;
            r0Var.f35927b.clear();
            r0Var.f35930e = JK.a(r0Var.f35927b);
            r0Var.a();
            if (a10) {
                r0 r0Var2 = this.f35923e;
                r0Var2.f35927b.add(t0Var2);
                r0Var2.f35930e = JK.a(r0Var2.f35927b);
                r0Var2.a();
                return;
            }
            return;
        }
        this.f35923e.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fe  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(ArrayList arrayList) {
        boolean z10;
        String a10;
        C9691u20 c9691u20 = new C9691u20();
        r0 r0Var = this.f35923e;
        if (r0Var.f35927b.isEmpty()) {
            t0 t0Var = new t0(r0Var.f35929d.b(), r0Var.f35928c, null, r0Var.f35932g, AbstractC9148qo0.b());
            r0Var.f35926a.add(t0Var);
            r0Var.f35927b.add(t0Var);
            r0Var.f35930e = JK.a(r0Var.f35927b);
            r0Var.a();
        }
        t0 t0Var2 = (t0) r0Var.f35931f.next();
        ArrayList arrayList2 = new ArrayList();
        int i10 = 0;
        int i11 = 0;
        String str = null;
        int i12 = 4;
        while (i10 < arrayList.size()) {
            H2 h22 = (H2) arrayList.get(i10);
            String str2 = (String) this.f35920b.get(h22);
            if (str != null) {
                if (str.endsWith(".*")) {
                    z10 = str2.startsWith(str.substring(0, str.length() - 2));
                } else if (str2.startsWith(str) && str2.lastIndexOf(46) == str.length()) {
                    z10 = true;
                }
                if (!z10) {
                    if (str != null) {
                        t0Var2.f35957c.a();
                        boolean z11 = f35918g;
                        if (!z11) {
                            if (!z11 && c9691u20.containsKey(str)) {
                                throw new AssertionError();
                            }
                            c9691u20.b(t0Var2.b(), str);
                        }
                        this.f35923e.a();
                        i12 = 3;
                    }
                    do {
                        i12++;
                        a10 = a(i12, str2, false);
                        if (str == null) {
                            break;
                        }
                    } while (str.startsWith(a10));
                    if (!a10.equals("")) {
                        str = a(i12, str2, true);
                    }
                    i11 = i10;
                }
                if (str != null) {
                    boolean z12 = f35918g;
                    if (!z12 && h22.f36247g == null) {
                        throw new AssertionError();
                    }
                    if (!z12 && !t0Var2.f35957c.b()) {
                        throw new AssertionError();
                    }
                    arrayList2.add(h22);
                } else {
                    if (!f35918g && h22.f36247g == null && h22.f36245e != this.f35921c.f38068i2) {
                        throw new AssertionError();
                    }
                    t0Var2.a(h22);
                    if (a(t0Var2, this.f35922d)) {
                        int i13 = (i10 - i11) + 1;
                        n0 n0Var = t0Var2.f35957c;
                        int size = n0Var.f35899b.f35937c.size() + n0Var.f35901d.size();
                        t0Var2.a();
                        if (i13 <= size / 5 || i12 >= 7) {
                            if (!this.f35923e.f35931f.hasNext()) {
                                if (t0Var2.f35956b.f35937c.isEmpty()) {
                                    while (i11 <= i10) {
                                        arrayList2.add((H2) arrayList.get(i11));
                                        i11++;
                                    }
                                    i11 = i10 + 1;
                                }
                                r0 r0Var2 = this.f35923e;
                                r0Var2.getClass();
                                t0 t0Var3 = new t0(r0Var2.f35929d.b(), r0Var2.f35928c, null, r0Var2.f35932g, AbstractC9148qo0.b());
                                r0Var2.f35926a.add(t0Var3);
                                r0Var2.f35927b.add(t0Var3);
                                r0Var2.f35930e = JK.a(r0Var2.f35927b);
                                r0Var2.a();
                            }
                            i10 = i11 - 1;
                            t0Var2 = (t0) this.f35923e.f35931f.next();
                            str = null;
                            i12 = 4;
                        } else {
                            i10 = i11 - 1;
                            i12++;
                            str = null;
                        }
                    }
                }
                i10++;
            }
            z10 = false;
            if (!z10) {
            }
            if (str != null) {
            }
            i10++;
        }
        t0Var2.f35957c.a();
        boolean z13 = f35918g;
        if (!z13 && str != null) {
            if (!z13 && c9691u20.containsKey(str)) {
                throw new AssertionError();
            }
            c9691u20.b(t0Var2.b(), str);
        }
        a(this.f35923e, arrayList2);
    }

    public static String a(int i10, String str, boolean z10) {
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (true) {
            if (i11 == -1) {
                break;
            }
            int i14 = i12 + 1;
            if (i12 >= i10) {
                i12 = i14;
                break;
            }
            i13 = i11;
            i11 = str.indexOf(46, i11 + 1);
            i12 = i14;
        }
        String substring = str.substring(0, i13);
        if (!z10 || i12 < i10) {
            return substring;
        }
        return substring + ".*";
    }

    public static boolean a(t0 t0Var, C8570nJ c8570nJ) {
        if (c8570nJ.f50599F1.f50855Y0 > 0) {
            n0 n0Var = t0Var.f35957c;
            if (n0Var.f35899b.f35937c.size() + n0Var.f35901d.size() > c8570nJ.f50599F1.f50855Y0) {
                return true;
            }
        }
        return t0Var.a(65536);
    }

    public final void a(r0 r0Var, ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return;
        }
        r0Var.a();
        t0 t0Var = (t0) r0Var.f35931f.next();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj = arrayList.get(i10);
            i10++;
            H2 h22 = (H2) obj;
            if (t0Var.a(65536)) {
                t0Var = a(r0Var);
            }
            t0Var.a(h22);
            while (t0Var.a(65536)) {
                t0Var.a();
                t0Var = a(r0Var);
                boolean isEmpty = t0Var.f35956b.f35937c.isEmpty();
                t0Var.a(h22);
                if (isEmpty && t0Var.a(65536)) {
                    throw new C6570bJ("Class " + h22.f36245e.toString() + " does not fit into a single dex file.");
                }
            }
            t0Var.f35957c.a();
        }
    }
}
