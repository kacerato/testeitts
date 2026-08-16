package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.internal.AbstractC4895Av0;
import com.android.tools.r8.internal.AbstractC7552hC;
import com.android.tools.r8.internal.AbstractC9907vK;
import com.android.tools.r8.internal.C10656zq0;
import com.android.tools.r8.internal.C5094Ef0;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.V60;
import com.android.tools.r8.naming.C11016w;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.shaking.C11130b3;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

public class C11350o3 {

    public final AbstractC7552hC f57586A;

    public final AbstractC7552hC f57587B;

    public final boolean f57588C;

    public final C11130b3 f57589D;

    public final C11148c4 f57590E;

    public final C11148c4 f57591F;

    public final C11148c4 f57592G;

    public final boolean f57593H;

    public final boolean f57594I;

    public final boolean f57595J;

    public final int f57596K;

    public final String f57597a;

    public final C4724u1 f57598b;

    public final AbstractC7552hC f57599c;

    public final C8570nJ.m f57600d;

    public final String f57601e;

    public final boolean f57602f;

    public final boolean f57603g;

    public final boolean f57604h;

    public final boolean f57605i;

    public final boolean f57606j;

    public final boolean f57607k;

    public final Path f57608l;

    public final boolean f57609m;

    public final Path f57610n;

    public final boolean f57611o;

    public final Path f57612p;

    public final Path f57613q;

    public final String f57614r;

    public final I3 f57615s;

    public C11130b3 f57616t;

    public final C11130b3 f57617u;

    public final C11130b3 f57618v;

    public final AbstractC7552hC f57619w;

    public final boolean f57620x;

    public final Path f57621y;

    public final AbstractC7552hC f57622z;

    public static class a {

        public static final boolean f57623Q = true;

        public Path f57624A;

        public Path f57625B;

        public Path f57626C;

        public Path f57627D;

        public boolean f57628E;

        public Origin f57629F;

        public Position f57630G;

        public final C11131b4 f57632I;

        public final C11131b4 f57633J;

        public final C11131b4 f57634K;

        public boolean f57635L;

        public boolean f57636M;

        public boolean f57637N;

        public boolean f57638O;

        public int f57639P;

        public final C5094Ef0 f57643d;

        public boolean f57646g;

        public boolean f57647h;

        public boolean f57651l;

        public Path f57652m;

        public boolean f57653n;

        public Path f57654o;

        public boolean f57655p;

        public Path f57656q;

        public Path f57657r;

        public String f57658s;

        public final C4724u1 f57664y;

        public boolean f57665z;

        public final ArrayList f57640a = new ArrayList();

        public final ArrayList f57641b = new ArrayList();

        public final ArrayList f57642c = new ArrayList();

        public C8570nJ.m f57644e = C8570nJ.m.f50793b;

        public String f57645f = "";

        public boolean f57648i = true;

        public boolean f57649j = true;

        public boolean f57650k = true;

        public final ArrayList f57659t = new ArrayList();

        public final C11130b3.a f57660u = C11130b3.a();

        public final C11130b3.a f57661v = C11130b3.a();

        public final C11130b3.a f57662w = C11130b3.a();

        public final LinkedHashSet f57663x = new LinkedHashSet();

        public final C11130b3.a f57631H = C11130b3.a();

        public a(C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
            boolean z10 = C11148c4.f57211c;
            C11131b4 c11131b4 = new C11131b4();
            int i10 = AbstractC7552hC.f48487c;
            Object[] objArr = new Object[4];
            objArr[0] = new C11182e4("META-INF/services/*", false);
            AbstractC7552hC b10 = AbstractC7552hC.b(1, objArr);
            c11131b4.f57192b.a(b10.size() > 0 ? new C11199f4(b10) : new C11165d4());
            this.f57632I = c11131b4;
            C11131b4 c11131b42 = new C11131b4();
            Object[] objArr2 = new Object[4];
            objArr2[0] = new C11182e4("META-INF/services/*", false);
            AbstractC7552hC b11 = AbstractC7552hC.b(1, objArr2);
            c11131b42.f57192b.a(b11.size() > 0 ? new C11199f4(b11) : new C11165d4());
            this.f57633J = c11131b42;
            C11131b4 c11131b43 = new C11131b4();
            c11131b43.f57191a = false;
            this.f57634K = c11131b43;
            this.f57635L = false;
            this.f57636M = false;
            this.f57637N = false;
            this.f57638O = false;
            this.f57639P = 0;
            this.f57664y = c4724u1;
            this.f57643d = c5094Ef0;
        }

        public void a(boolean z10) {
            this.f57647h = z10;
        }

        public void b(boolean z10) {
            this.f57655p = z10;
        }

        public a c() {
            this.f57649j = false;
            return this;
        }

        public a d() {
            this.f57648i = false;
            return this;
        }

        public a e() {
            this.f57650k = false;
            return this;
        }

        public void a(Path path) {
            if (!f57623Q && !this.f57655p) {
                throw new AssertionError();
            }
            this.f57656q = path;
        }

        public final void b(AbstractC11147c3 abstractC11147c3) {
            this.f57662w.a(abstractC11147c3);
        }

        public final void c(AbstractC11147c3 abstractC11147c3) {
            this.f57661v.a(abstractC11147c3);
        }

        public final void d(AbstractC11147c3 abstractC11147c3) {
            this.f57660u.a(abstractC11147c3);
        }

        public final a b(AbstractC11216g4 abstractC11216g4) {
            this.f57632I.f57192b.a(abstractC11216g4);
            return this;
        }

        public void c(boolean z10) {
            this.f57665z = z10;
        }

        public void a(String str) {
            this.f57658s = str;
        }

        public final void c(AbstractC11216g4 abstractC11216g4) {
            this.f57634K.f57192b.a(abstractC11216g4);
        }

        public a a(List<String> list) {
            this.f57659t.addAll(list);
            return this;
        }

        public void a(AbstractC11468v3 abstractC11468v3) {
            this.f57663x.add(abstractC11468v3);
        }

        public final C11350o3 b() {
            I3 a10 = I3.a(this.f57659t);
            if (this.f57635L && !this.f57649j) {
                a10.a();
            }
            String join = String.join(System.lineSeparator(), this.f57640a);
            C4724u1 c4724u1 = this.f57664y;
            ArrayList arrayList = this.f57641b;
            ArrayList arrayList2 = this.f57642c;
            C8570nJ.m mVar = this.f57644e;
            String str = this.f57645f;
            boolean z10 = this.f57646g;
            boolean z11 = this.f57647h;
            boolean z12 = this.f57648i;
            boolean z13 = this.f57649j;
            boolean z14 = this.f57650k;
            boolean z15 = this.f57651l;
            Path path = this.f57652m;
            boolean z16 = this.f57653n;
            Path path2 = this.f57654o;
            boolean z17 = this.f57655p;
            Path path3 = this.f57656q;
            Path path4 = this.f57657r;
            String str2 = this.f57658s;
            C11130b3 a11 = this.f57660u.a();
            C11130b3 a12 = this.f57661v.a();
            C11130b3 a13 = this.f57662w.a();
            LinkedHashSet linkedHashSet = this.f57663x;
            boolean z18 = this.f57665z;
            Path path5 = this.f57624A;
            AbstractC7552hC a14 = C11016w.a(this.f57643d, this.f57625B);
            AbstractC7552hC a15 = C11016w.a(this.f57643d, this.f57626C);
            AbstractC7552hC a16 = C11016w.a(this.f57643d, this.f57627D);
            boolean z19 = this.f57628E;
            C11130b3 a17 = this.f57631H.a();
            C11131b4 c11131b4 = this.f57632I;
            c11131b4.getClass();
            C11148c4 c11148c4 = new C11148c4(c11131b4.f57192b.a(), c11131b4.f57191a);
            C11131b4 c11131b42 = this.f57633J;
            c11131b42.getClass();
            C11148c4 c11148c42 = new C11148c4(c11131b42.f57192b.a(), c11131b42.f57191a);
            C11131b4 c11131b43 = this.f57634K;
            c11131b43.getClass();
            C11350o3 c11350o3 = new C11350o3(join, c4724u1, arrayList, arrayList2, mVar, str, z10, z11, z12, z13, z14, z15, path, z16, path2, z17, path3, path4, str2, a10, a11, a12, a13, linkedHashSet, z18, path5, a14, a15, a16, z19, a17, c11148c4, c11148c42, new C11148c4(c11131b43.f57192b.a(), c11131b43.f57191a), this.f57636M, this.f57637N, this.f57638O, this.f57639P);
            this.f57643d.a();
            return c11350o3;
        }

        public final void a(AbstractC11147c3 abstractC11147c3) {
            this.f57631H.a(abstractC11147c3);
        }

        public final void a(AbstractC11216g4 abstractC11216g4) {
            this.f57633J.f57192b.a(abstractC11216g4);
        }

        public C11350o3 a() {
            if (this.f57644e == C8570nJ.m.f50793b && this.f57649j) {
                this.f57644e = C8570nJ.m.f50794c;
            }
            return b();
        }
    }

    public C11350o3(String str, C4724u1 c4724u1, ArrayList arrayList, ArrayList arrayList2, C8570nJ.m mVar, String str2, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, Path path, boolean z16, Path path2, boolean z17, Path path3, Path path4, String str3, I3 i32, C11130b3 c11130b3, C11130b3 c11130b32, C11130b3 c11130b33, LinkedHashSet linkedHashSet, boolean z18, Path path5, AbstractC7552hC abstractC7552hC, AbstractC7552hC abstractC7552hC2, AbstractC7552hC abstractC7552hC3, boolean z19, C11130b3 c11130b34, C11148c4 c11148c4, C11148c4 c11148c42, C11148c4 c11148c43, boolean z20, boolean z21, boolean z22, int i10) {
        this.f57597a = str;
        this.f57598b = c4724u1;
        AbstractC7552hC.a(arrayList);
        this.f57599c = AbstractC7552hC.a(arrayList2);
        this.f57600d = mVar;
        this.f57601e = str2;
        this.f57602f = z10;
        this.f57603g = z11;
        this.f57604h = z12;
        this.f57605i = z13;
        this.f57606j = z14;
        this.f57607k = z15;
        this.f57608l = path;
        this.f57609m = z16;
        this.f57610n = path2;
        this.f57611o = z17;
        this.f57612p = path3;
        this.f57613q = path4;
        this.f57614r = str3;
        this.f57615s = i32;
        this.f57616t = c11130b3;
        this.f57617u = c11130b32;
        this.f57618v = c11130b33;
        this.f57619w = AbstractC7552hC.a(linkedHashSet);
        this.f57620x = z18;
        this.f57621y = path5;
        this.f57622z = abstractC7552hC;
        this.f57586A = abstractC7552hC2;
        this.f57587B = abstractC7552hC3;
        this.f57588C = z19;
        this.f57589D = c11130b34;
        this.f57590E = c11148c4;
        this.f57591F = c11148c42;
        this.f57592G = c11148c43;
        this.f57593H = z20;
        this.f57594I = z21;
        this.f57595J = z22;
        this.f57596K = i10;
    }

    public static a a(C4724u1 c4724u1, C5094Ef0 c5094Ef0) {
        return new a(c4724u1, c5094Ef0);
    }

    public boolean A() {
        return this.f57606j;
    }

    public C11148c4 b() {
        return this.f57591F;
    }

    public C11148c4 c() {
        return this.f57590E;
    }

    public Path d() {
        return this.f57613q;
    }

    public C11130b3 e() {
        return this.f57618v;
    }

    public I3 f() {
        return this.f57615s;
    }

    public C11148c4 g() {
        return this.f57592G;
    }

    public List<P0> h() {
        return this.f57599c;
    }

    public int i() {
        return this.f57596K;
    }

    public C8570nJ.m j() {
        return this.f57600d;
    }

    public String k() {
        return this.f57601e;
    }

    public Path l() {
        return this.f57608l;
    }

    public Path m() {
        return this.f57612p;
    }

    public Path n() {
        return this.f57610n;
    }

    public String o() {
        return this.f57614r;
    }

    public List<AbstractC11468v3> p() {
        return this.f57619w;
    }

    public Path q() {
        return this.f57621y;
    }

    public boolean r() {
        return this.f57613q != null;
    }

    public final boolean s() {
        return AbstractC9907vK.b(this.f57619w, new V60() {
            @Override
            public final boolean apply(Object obj) {
                return ((AbstractC11468v3) obj).w();
            }
        });
    }

    public boolean t() {
        return this.f57593H;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        I3 i32 = this.f57615s;
        if (i32.f56569a || i32.f56570b || i32.f56571c || i32.f56572d || i32.f56573e || i32.f56574f || i32.f56577i || i32.f56578j || i32.f56579k || i32.f56580l || i32.f56581m || i32.f56582n || i32.f56583o || i32.f56584p || i32.f56585q || i32.f56586r || i32.f56587s) {
            i32.a(sb2);
            sb2.append(C10656zq0.f54547c);
        }
        AbstractC4895Av0 it = this.f57619w.iterator();
        while (it.hasNext()) {
            ((AbstractC11468v3) it.next()).a(sb2);
            sb2.append(C10656zq0.f54547c);
        }
        return sb2.toString();
    }

    public boolean u() {
        return this.f57588C;
    }

    public boolean v() {
        return this.f57605i;
    }

    public boolean w() {
        return this.f57604h;
    }

    public boolean x() {
        return this.f57607k;
    }

    public boolean y() {
        return this.f57620x;
    }

    public boolean z() {
        return this.f57609m;
    }

    public C11130b3 a() {
        return this.f57589D;
    }
}
