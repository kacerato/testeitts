package com.android.tools.r8.internal;

import android.provider.ContactsContract;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.G;
import com.android.tools.r8.internal.C4907Bb;
import com.android.tools.r8.naming.AbstractC10992r0;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class C6063Va {

    public static final boolean f45089i = true;

    public final String f45090a;

    public final List f45091b;

    public final C9115qd0 f45092c;

    public final List f45093d;

    public final StringBuilder f45094e;

    public final C9970vk0 f45095f;

    public int f45096g;

    public final int f45097h;

    public C6063Va() {
        this.f45094e = new StringBuilder();
        this.f45096g = 0;
        this.f45090a = "";
        this.f45092c = null;
        this.f45095f = C9970vk0.f53318b;
        this.f45097h = 0;
        List list = Collections.EMPTY_LIST;
        this.f45091b = list;
        this.f45093d = list;
    }

    public final void a(C6120Wa c6120Wa) {
        String m22;
        C4554l1[] c4554l1Arr = c6120Wa.f45472c;
        if (c4554l1Arr.length == 0) {
            m22 = "empty";
        } else {
            m22 = c4554l1Arr[0].f38297f.toString();
        }
        a();
        this.f45094e.append("record_field_values(" + m22 + ")");
    }

    public final int b(G.a aVar, G.a aVar2) {
        int compare = Integer.compare(this.f45092c.b(aVar.d()), this.f45092c.b(aVar2.d()));
        if (compare != 0) {
            return compare;
        }
        int compare2 = Integer.compare(this.f45092c.b(aVar2.a()), this.f45092c.b(aVar.a()));
        return compare2 != 0 ? compare2 : Integer.compare(aVar.b(), aVar2.b());
    }

    public final void c() {
        if (this.f45094e.length() > 0) {
            this.f45094e.append('\n');
        }
    }

    public void d() {
        a();
        this.f45094e.append("nop");
    }

    public void e() {
        a();
        this.f45094e.append("athrow");
    }

    public void f() {
        a();
        this.f45094e.append("aconst_null");
    }

    public void g() {
        a();
        this.f45094e.append("return");
    }

    public void h() {
        a();
        this.f45094e.append("arraylength");
    }

    public String toString() {
        return this.f45094e.toString();
    }

    public void b(C8103ka c8103ka) {
        c();
        b();
        StringBuilder sb2 = this.f45094e;
        sb2.append(a(c8103ka));
        sb2.append(':');
        C9115qd0 c9115qd0 = this.f45092c;
        if (c9115qd0 != null) {
            String str = "locals: " + String.join(", ", (Iterable<? extends CharSequence>) ((List) this.f45093d.get(c9115qd0.b(c8103ka))).stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    return ((G.a) obj).toString();
                }
            }).collect(Collectors.toList()));
            StringBuilder sb3 = this.f45094e;
            sb3.append(" ; ");
            sb3.append(str);
        }
    }

    public void a(C9271ra c9271ra) {
        String f10 = C10656zq0.f(E70.f39760c[C9271ra.a(c9271ra.f52066c, c9271ra.f52067d)]);
        a();
        this.f45094e.append(f10);
    }

    public C6063Va(com.android.tools.r8.graph.G g10, C4516j1 c4516j1, C9970vk0 c9970vk0) {
        this.f45094e = new StringBuilder();
        this.f45096g = 0;
        this.f45095f = c9970vk0;
        this.f45090a = GlideException.a.f59088e;
        int size = g10.E0().size();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(size);
        this.f45097h = sb2.toString().length();
        this.f45092c = new C9115qd0();
        this.f45091b = new ArrayList();
        for (W9 w92 : g10.E0()) {
            if (w92 instanceof C8103ka) {
                C8103ka c8103ka = (C8103ka) w92;
                this.f45092c.b(this.f45091b.size(), c8103ka);
                this.f45091b.add(c8103ka);
            }
        }
        if (c4516j1 != null) {
            this.f45094e.append(".method ");
            this.f45094e.append(this.f45095f.b(c4516j1.getReference()));
            c();
        }
        StringBuilder sb3 = this.f45094e;
        sb3.append(".limit stack ");
        sb3.append(g10.f36304g);
        c();
        StringBuilder sb4 = this.f45094e;
        sb4.append(".limit locals ");
        sb4.append(g10.G0());
        ArrayList a10 = a(g10);
        this.f45093d = a(a10);
        int size2 = a10.size();
        int i10 = 0;
        while (i10 < size2) {
            Object obj = a10.get(i10);
            i10++;
            G.a aVar = (G.a) obj;
            C4515j0 c10 = aVar.c();
            c();
            StringBuilder sb5 = this.f45094e;
            sb5.append(".var ");
            sb5.append(aVar.b());
            sb5.append(" is ");
            sb5.append((Object) c10.f37307b);
            sb5.append(" ");
            sb5.append(c10.f37308c.V0());
            sb5.append(" from ");
            sb5.append(a(aVar.d()));
            sb5.append(" to ");
            sb5.append(a(aVar.a()));
            com.android.tools.r8.graph.L2 l22 = c10.f37309d;
            if (l22 != null) {
                String l23 = l22.toString();
                StringBuilder sb6 = this.f45094e;
                sb6.append(" ; ");
                sb6.append(l23);
            }
        }
        for (C5023Db c5023Db : g10.I0()) {
            for (int i11 = 0; i11 < c5023Db.f39558c.size(); i11++) {
                c();
                com.android.tools.r8.graph.M2 m22 = c5023Db.f39558c.get(i11);
                if (!f45089i && m22 == null) {
                    throw new AssertionError();
                }
                StringBuilder sb7 = this.f45094e;
                sb7.append(".catch ");
                sb7.append(m22.w0());
                sb7.append(" from ");
                sb7.append(a(c5023Db.f39556a));
                sb7.append(" to ");
                sb7.append(a(c5023Db.f39557b));
                sb7.append(" using ");
                sb7.append(a(c5023Db.f39559d.get(i11)));
            }
        }
        Iterator<W9> it = g10.E0().iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
        c();
        if (c4516j1 != null) {
            this.f45094e.append(".end method");
            c();
        }
    }

    public void a(C10443yb c10443yb) {
        EnumC5477Kw0 enumC5477Kw0 = c10443yb.f54051d;
        int i10 = c10443yb.f54050c;
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(a(enumC5477Kw0));
        sb2.append("store");
        sb2.append(C15883c.f126249O);
        sb2.append(i10);
    }

    public final void b() {
        int i10 = this.f45097h;
        if (i10 > 0) {
            StringBuilder sb2 = this.f45094e;
            String str = ve.j.f121589a + i10 + "d: ";
            int i11 = this.f45096g;
            this.f45096g = i11 + 1;
            sb2.append(String.format(str, Integer.valueOf(i11)));
        }
    }

    public void a(C8938pa c8938pa) {
        EnumC5477Kw0 enumC5477Kw0 = c8938pa.f51555d;
        int i10 = c8938pa.f51554c;
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(a(enumC5477Kw0));
        sb2.append("load");
        sb2.append(C15883c.f126249O);
        sb2.append(i10);
    }

    public final void b(com.android.tools.r8.graph.M2 m22) {
        if (!m22.E0() && !m22.I0()) {
            this.f45094e.append(this.f45095f.a(m22));
        } else {
            a(m22);
        }
    }

    public final ArrayList a(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList(this.f45091b.size());
        HashSet hashSet = new HashSet();
        ListIterator listIterator = arrayList.listIterator();
        Iterator it = this.f45091b.iterator();
        while (it.hasNext()) {
            final int b10 = this.f45092c.b((C8103ka) it.next());
            hashSet.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return C6063Va.this.a(b10, (G.a) obj);
                }
            });
            while (true) {
                if (listIterator.hasNext()) {
                    G.a aVar = (G.a) listIterator.next();
                    int b11 = this.f45092c.b(aVar.d());
                    int b12 = this.f45092c.b(aVar.a());
                    if (b11 > b10) {
                        listIterator.previous();
                        break;
                    }
                    if (b10 < b12) {
                        hashSet.add(aVar);
                    }
                }
            }
            ArrayList arrayList3 = new ArrayList(hashSet);
            arrayList3.sort(new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int compare;
                    compare = Integer.compare(((G.a) obj).b(), ((G.a) obj2).b());
                    return compare;
                }
            });
            arrayList2.add(arrayList3);
        }
        return arrayList2;
    }

    public final boolean a(int i10, G.a aVar) {
        return this.f45092c.b(aVar.a()) <= i10;
    }

    public final ArrayList a(com.android.tools.r8.graph.G g10) {
        ArrayList arrayList = new ArrayList(g10.F0());
        arrayList.sort(new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return C6063Va.this.b((G.a) obj, (G.a) obj2);
            }
        });
        return arrayList;
    }

    public void a(C8106kb c8106kb) {
        switch (AbstractC6005Ua.f44794a[c8106kb.V().ordinal()]) {
            case 1:
                a();
                this.f45094e.append("pop");
                return;
            case 2:
                a();
                this.f45094e.append("pop2");
                return;
            case 3:
                a();
                this.f45094e.append("dup");
                return;
            case 4:
                a();
                this.f45094e.append("dup_x1");
                return;
            case 5:
                a();
                this.f45094e.append("dup_x2");
                return;
            case 6:
                a();
                this.f45094e.append("dup2");
                return;
            case 7:
                a();
                this.f45094e.append("dup2_x1");
                return;
            case 8:
                a();
                this.f45094e.append("dup2_x2");
                return;
            case 9:
                a();
                this.f45094e.append("swap");
                return;
            default:
                throw new C5417Jv0("Invalid instruction for CfStackInstruction");
        }
    }

    public void a(C10546z9 c10546z9) {
        a();
        int i10 = AbstractC6005Ua.f44795b[c10546z9.f54295d.ordinal()];
        if (i10 == 1) {
            StringBuilder sb2 = this.f45094e;
            sb2.append("ldc ");
            if (!C10546z9.f54293e && c10546z9.f54295d != EnumC5477Kw0.f41825c) {
                throw new AssertionError();
            }
            sb2.append((int) c10546z9.f54294c);
            return;
        }
        if (i10 == 2) {
            StringBuilder sb3 = this.f45094e;
            sb3.append("ldc ");
            if (!C10546z9.f54293e && c10546z9.f54295d != EnumC5477Kw0.f41826d) {
                throw new AssertionError();
            }
            sb3.append(Float.intBitsToFloat((int) c10546z9.f54294c));
            return;
        }
        if (i10 == 3) {
            StringBuilder sb4 = this.f45094e;
            sb4.append("ldc_w ");
            if (!C10546z9.f54293e && c10546z9.f54295d != EnumC5477Kw0.f41827e) {
                throw new AssertionError();
            }
            sb4.append(c10546z9.f54294c);
            return;
        }
        if (i10 == 4) {
            StringBuilder sb5 = this.f45094e;
            sb5.append("ldc_w ");
            if (!C10546z9.f54293e && c10546z9.f54295d != EnumC5477Kw0.f41828f) {
                throw new AssertionError();
            }
            sb5.append(Double.longBitsToDouble(c10546z9.f54294c));
            return;
        }
        throw new C5417Jv0("Unexpected const-number type: " + ((Object) c10546z9.f54295d));
    }

    public void a(C9544t9 c9544t9) {
        a();
        this.f45094e.append("ldc ");
        b(c9544t9.getType());
    }

    public void a(C9711u9 c9711u9) {
        a();
        this.f45094e.append("ldc <dynamic> ");
        b(c9711u9.f52798c.f38688d);
    }

    public void a(C6440ab c6440ab) {
        String str = a(c6440ab.W()) + "return";
        a();
        this.f45094e.append(str);
    }

    public void a(C9438sa c9438sa) {
        String str = c9438sa.V() == XX.f45732b ? "monitorenter" : "monitorexit";
        a();
        this.f45094e.append(str);
    }

    public void a(V8 v82) {
        String f10 = C10656zq0.f(E70.f39760c[v82.B()]);
        a();
        this.f45094e.append(f10);
    }

    public void a(C9044q9 c9044q9) {
        String f10 = C10656zq0.f(E70.f39760c[c9044q9.B()]);
        a();
        this.f45094e.append(f10);
    }

    public void a(C9939va c9939va) {
        String f10 = C10656zq0.f(E70.f39760c[c9939va.B()]);
        a();
        this.f45094e.append(f10);
    }

    public void a(C4904Ba c4904Ba) {
        String f10 = C10656zq0.f(E70.f39760c[c4904Ba.B()]);
        a();
        this.f45094e.append(f10);
    }

    public void a(A9 a92) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append("ldc ");
        sb2.append((Object) a92.V());
    }

    public void a(E9 e92) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append("ldc* ");
        sb2.append(e92.f39769c.toString());
    }

    public void a(X8 x82) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(a(x82.f45936c));
        sb2.append("aload");
    }

    public void a(Z8 z82) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(a(z82.f45936c));
        sb2.append("astore");
    }

    public void a(C7437ga c7437ga) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(C10656zq0.f(E70.f39760c[c7437ga.W()]));
        sb2.append(C15883c.f126249O);
        this.f45094e.append(this.f45095f.b(c7437ga.V()));
    }

    public void a(C7604ha c7604ha) {
        com.android.tools.r8.graph.X2 z02;
        a();
        com.android.tools.r8.graph.D0 V10 = c7604ha.V();
        com.android.tools.r8.graph.C2 c22 = V10.f36214g;
        StringBuilder sb2 = this.f45094e;
        sb2.append(C10656zq0.f(E70.f39760c[186]));
        sb2.append(C15883c.f126249O);
        this.f45094e.append((Object) V10.f36212e);
        StringBuilder sb3 = this.f45094e;
        com.android.tools.r8.graph.I2 i22 = V10.f36213f;
        i22.getClass();
        sb3.append(i22.a(AbstractC10992r0.a()));
        if (V10.f36215h.size() > 1 && (z02 = ((com.android.tools.r8.graph.R2) V10.f36215h.get(1)).z0()) != null) {
            com.android.tools.r8.graph.C2 c23 = (com.android.tools.r8.graph.C2) z02.W0();
            this.f45094e.append(", handle:");
            this.f45094e.append(c23.j0());
            StringBuilder sb4 = this.f45094e;
            sb4.append(", itf: ");
            sb4.append(c23.f36192g);
        }
        this.f45094e.append(", bsm:");
        this.f45094e.append(this.f45095f.b(c22.m0()));
    }

    public void a(G9 g92) {
        a();
        this.f45094e.append("; frame: [");
        if (!g92.f40404c.isEmpty()) {
            final int a10 = g92.f40404c.a();
            ZH zh2 = new ZH() {
                @Override
                public final void a(int i10, Object obj) {
                    C6063Va.this.a(a10, i10, (InterfaceC8008jy) obj);
                }
            };
            InterfaceC9861v30 it = g92.f40404c.b().iterator();
            while (it.hasNext()) {
                EF ef2 = (EF) it.next();
                zh2.a(ef2.a(), (InterfaceC8008jy) ef2.getValue());
            }
        }
        this.f45094e.append("] [");
        String str = "";
        for (S60 s60 : g92.f40405d) {
            this.f45094e.append(str);
            a(s60);
            str = ", ";
        }
        this.f45094e.append(JavaElement.JEM_TYPE_PARAMETER);
    }

    public final void a(int i10, int i11, InterfaceC8008jy interfaceC8008jy) {
        String str = i11 == i10 ? "" : ", ";
        StringBuilder sb2 = this.f45094e;
        sb2.append(str);
        sb2.append(i11);
        sb2.append(':');
        a(interfaceC8008jy);
    }

    public final void a(InterfaceC8008jy interfaceC8008jy) {
        if (interfaceC8008jy.F()) {
            if (interfaceC8008jy.d()) {
                this.f45094e.append("null");
                return;
            }
            if (interfaceC8008jy.B()) {
                this.f45094e.append((Object) interfaceC8008jy.p().f39161c);
                return;
            } else {
                if (!f45089i && !interfaceC8008jy.m()) {
                    throw new AssertionError();
                }
                b(interfaceC8008jy.b().f39470c);
                return;
            }
        }
        if (interfaceC8008jy.y()) {
            StringBuilder sb2 = this.f45094e;
            sb2.append("uninitialized ");
            sb2.append(a(interfaceC8008jy.H()));
            return;
        }
        this.f45094e.append((Object) interfaceC8008jy);
    }

    public void a(V9 v92) {
        a();
        this.f45094e.append("instanceof ");
        a(v92.getType());
    }

    public void a(C7710i9 c7710i9) {
        a();
        this.f45094e.append("checkcast ");
        a(c7710i9.getType());
    }

    public void a(F9 f92) {
        a();
        switch (f92.B()) {
            case 178:
                this.f45094e.append("getstatic ");
                break;
            case 179:
                this.f45094e.append("putstatic ");
                break;
            case 180:
                this.f45094e.append("getfield ");
                break;
            case 181:
                this.f45094e.append("putfield ");
                break;
            default:
                throw new C5417Jv0("Unexpected field-instruction opcode " + f92.B());
        }
        this.f45094e.append(this.f45095f.c(f92.getField()));
        this.f45094e.append(C15883c.f126249O);
        this.f45094e.append(this.f45095f.a(f92.getField().f37449i));
    }

    public void a(C10106wa c10106wa) {
        a();
        this.f45094e.append("new ");
        a(c10106wa.getType());
    }

    public void a(C10273xa c10273xa) {
        a();
        String substring = c10273xa.f53775c.V0().substring(1);
        if (c10273xa.f53775c.O0()) {
            this.f45094e.append("newarray ");
            this.f45094e.append(C4932Bl.b(substring));
            return;
        }
        this.f45094e.append("anewarray ");
        if (substring.charAt(0) == '[') {
            this.f45094e.append(substring);
            return;
        }
        StringBuilder sb2 = this.f45094e;
        C9663tt0 a10 = C9663tt0.a(substring, 0, substring.length());
        sb2.append(a10.f52723b.substring(a10.f52724c, a10.f52725d));
    }

    public void a(C9605ta c9605ta) {
        a();
        this.f45094e.append("multianewarray ");
        a(c9605ta.f52630c);
        StringBuilder sb2 = this.f45094e;
        sb2.append(C15883c.f126249O);
        sb2.append(c9605ta.f52631d);
    }

    public void a(C5541Ma c5541Ma) {
        B60 V10 = c5541Ma.V();
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(".line ");
        sb2.append(V10.f());
        if (V10.k() || V10.l()) {
            String b60 = V10.toString();
            StringBuilder sb3 = this.f45094e;
            sb3.append(" ; ");
            sb3.append(b60);
        }
    }

    public void a(M9 m92) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append("goto ");
        sb2.append(a(m92.f42195c));
    }

    public void a(O9 o92) {
        a();
        if (o92.f52293d.a()) {
            StringBuilder sb2 = this.f45094e;
            sb2.append("if");
            sb2.append(o92.f52292c == NB.f42527b ? "null" : "nonnull");
        } else {
            StringBuilder sb3 = this.f45094e;
            sb3.append("if");
            sb3.append(C10656zq0.f(o92.f52292c.toString()));
        }
        StringBuilder sb4 = this.f45094e;
        sb4.append(C15883c.f126249O);
        sb4.append(a(o92.f52294e));
    }

    public void a(Q9 q92) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append(q92.f52293d.a() ? "if_acmp" : "if_icmp");
        sb2.append(C10656zq0.f(q92.f52292c.toString()));
        sb2.append(C15883c.f126249O);
        sb2.append(a(q92.f52294e));
    }

    public void a(C4907Bb c4907Bb) {
        a();
        C4907Bb.a Y10 = c4907Bb.Y();
        StringBuilder sb2 = this.f45094e;
        sb2.append(Y10 == C4907Bb.a.f38947b ? ContactsContract.ContactsColumns.LOOKUP_KEY : "table");
        sb2.append("switch");
        TH th2 = (TH) c4907Bb.X();
        ArrayList arrayList = c4907Bb.f38946f;
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            a();
            int c10 = Y10 == C4907Bb.a.f38947b ? th2.c(i10) : th2.c(0) + i10;
            StringBuilder sb3 = this.f45094e;
            sb3.append(GlideException.a.f59088e);
            sb3.append(c10);
            sb3.append(": ");
            sb3.append(a((C8103ka) arrayList.get(i10)));
        }
        a();
        StringBuilder sb4 = this.f45094e;
        sb4.append("  default: ");
        sb4.append(a(c4907Bb.f38944d));
    }

    public void a(R9 r92) {
        a();
        StringBuilder sb2 = this.f45094e;
        sb2.append("iinc ");
        sb2.append(r92.f43819c);
        sb2.append(C15883c.f126249O);
        sb2.append(r92.f43820d);
    }

    public static char a(EnumC5477Kw0 enumC5477Kw0) {
        int i10 = AbstractC6005Ua.f44795b[enumC5477Kw0.ordinal()];
        if (i10 == 1) {
            return 'i';
        }
        if (i10 == 2) {
            return 'f';
        }
        if (i10 == 3) {
            return 'l';
        }
        if (i10 == 4) {
            return 'd';
        }
        if (i10 == 5) {
            return 'a';
        }
        throw new C5417Jv0("Unexpected type for prefix: " + ((Object) enumC5477Kw0));
    }

    public static char a(YV yv) {
        switch (yv) {
            case f45995b:
                return 'a';
            case f45996c:
                return 'b';
            case f45997d:
                return 'c';
            case f45998e:
                return 's';
            case f45999f:
                return 'i';
            case f46000g:
                return 'f';
            case f46001h:
                return 'l';
            case f46002i:
                return 'd';
            default:
                throw new C5417Jv0("Unexpected member type for prefix: " + ((Object) yv));
        }
    }

    public void a(C9878v9 c9878v9) {
        a();
        this.f45094e.append("ldc ");
        this.f45094e.append(c9878v9.f53024c.toString());
    }

    public void a(C10045w9 c10045w9) {
        a();
        this.f45094e.append("ldc ");
        this.f45094e.append(c10045w9.f53427c.toString());
    }

    public final String a(C8103ka c8103ka) {
        C9115qd0 c9115qd0 = this.f45092c;
        if (c9115qd0 == null) {
            return "L?";
        }
        return "L" + c9115qd0.b(c8103ka);
    }

    public final void a() {
        c();
        b();
        this.f45094e.append(this.f45090a);
    }

    public final void a(com.android.tools.r8.graph.M2 m22) {
        if (!f45089i && !m22.E0() && !m22.I0()) {
            throw new AssertionError();
        }
        if (m22 == C4724u1.f37808E6) {
            this.f45094e.append("NULL");
        } else {
            this.f45094e.append(this.f45095f.a(m22));
        }
    }
}
