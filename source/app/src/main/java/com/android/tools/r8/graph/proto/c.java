package com.android.tools.r8.graph.proto;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.proto.c;
import com.android.tools.r8.internal.AbstractC5308Hz;
import com.android.tools.r8.internal.C7561hF;
import com.android.tools.r8.internal.C7731iG;
import com.android.tools.r8.internal.C8704o7;
import com.android.tools.r8.internal.C9693u3;
import com.android.tools.r8.internal.EF;
import com.android.tools.r8.internal.InterfaceC7896jG;
import com.android.tools.r8.internal.InterfaceC9861v30;
import com.android.tools.r8.internal.K;
import com.android.tools.r8.internal.ME;
import com.android.tools.r8.internal.SF;
import com.android.tools.r8.internal.UF;
import com.android.tools.r8.internal.VF;
import com.android.tools.r8.internal.ZH;
import java.util.Objects;

public class c {

    public static final C7731iG f37601e = new C7731iG();

    public static final c f37602f = new c();

    public static final boolean f37603g = true;

    public final C7731iG f37604a;

    public final int f37605b;

    public final d f37606c;

    public final boolean f37607d;

    public static class a {

        public final C7731iG f37608a = new C7731iG();

        public int f37609b = -1;

        public d f37610c = f.f37614a;

        public boolean f37611d;

        public a a(int i10, b bVar) {
            this.f37608a.a(i10, bVar);
            return this;
        }

        public final a a(c cVar) {
            cVar.a(new ZH() {
                @Override
                public final void a(int i10, Object obj) {
                    c.a.this.a(i10, (b) obj);
                }
            });
            return this;
        }

        public c a() {
            if (this.f37608a.isEmpty()) {
                d dVar = this.f37610c;
                dVar.getClass();
                if ((dVar instanceof f) && !this.f37611d) {
                    return c.f37602f;
                }
            }
            return new c(this.f37608a.isEmpty() ? c.f37601e : this.f37608a, this.f37609b, this.f37610c, this.f37611d);
        }

        public a a(int i10) {
            this.f37609b = i10;
            return this;
        }
    }

    public c() {
        this.f37604a = f37601e;
        this.f37605b = -1;
        this.f37606c = f.f37614a;
        this.f37607d = false;
    }

    public final void a(ZH zh2) {
        VF vf2 = new VF(((SF) this.f37604a.b()).f44166c);
        while (vf2.hasNext()) {
            UF a10 = vf2.a();
            zh2.a(a10.a(), (b) a10.getValue());
        }
    }

    public final boolean b() {
        return this == f37602f;
    }

    public int c() {
        if (f37603g || !b()) {
            return this.f37605b;
        }
        throw new AssertionError();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            c cVar = (c) obj;
            if (this.f37604a.equals(cVar.f37604a) && this.f37606c.equals(cVar.f37606c) && this.f37605b == cVar.f37605b && this.f37607d == cVar.f37607d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.f37604a, this.f37606c, Integer.valueOf(this.f37605b), Boolean.valueOf(this.f37607d));
    }

    public final int b(int i10) {
        return this.f37606c.a(i10 - a(i10, this.f37604a));
    }

    public c(C7731iG c7731iG, int i10, d dVar, boolean z10) {
        boolean z11 = f37603g;
        if (!z11 && c7731iG == null) {
            throw new AssertionError();
        }
        if (!z11 && dVar == null) {
            throw new AssertionError();
        }
        if (!z11 && c7731iG.isEmpty() && c7731iG != f37601e) {
            throw new AssertionError();
        }
        if (!z11 && c7731iG.isEmpty()) {
            dVar.getClass();
            if ((dVar instanceof f) && !z10) {
                throw new AssertionError((Object) "should use empty.");
            }
        }
        if (!z11 && i10 < 0) {
            throw new AssertionError();
        }
        this.f37604a = c7731iG;
        this.f37605b = i10;
        this.f37606c = dVar;
        this.f37607d = z10;
    }

    public static int a(int i10, InterfaceC7896jG interfaceC7896jG) {
        InterfaceC9861v30 it = interfaceC7896jG.b().iterator();
        int i11 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            EF ef2 = (EF) it.next();
            int a10 = ef2.a();
            b bVar = (b) ef2.getValue();
            if (a10 >= i10) {
                if (!f37603g && a10 <= i10 && bVar.c()) {
                    throw new AssertionError();
                }
            } else if (bVar.c()) {
                i11++;
            }
        }
        return i11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b a(int i10) {
        return (b) this.f37604a.getOrDefault(Integer.valueOf(i10), b.f37600a);
    }

    public final c a(final C4798y c4798y, final C9693u3 c9693u3, final AbstractC5308Hz abstractC5308Hz) {
        if (b()) {
            return this;
        }
        final a a10 = a();
        a(new ZH() {
            @Override
            public final void a(int i10, Object obj) {
                c.a(C4798y.this, c9693u3, abstractC5308Hz, a10, i10, (b) obj);
            }
        });
        if (a10.f37608a.isEmpty()) {
            d dVar = a10.f37610c;
            dVar.getClass();
            if ((dVar instanceof f) && !a10.f37611d) {
                return this;
            }
        }
        a(new ZH() {
            @Override
            public final void a(int i10, Object obj) {
                c.a(c.a.this, i10, (b) obj);
            }
        });
        a a11 = a10.a(this.f37605b);
        a11.f37611d = this.f37607d;
        return a11.a();
    }

    public static void a(C4798y c4798y, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, a aVar, int i10, b bVar) {
        b a10 = bVar.a(c4798y, abstractC5308Hz, abstractC5308Hz2);
        if (a10 != bVar) {
            aVar.a(i10, a10);
        }
    }

    public static a a() {
        return new a();
    }

    public static void a(a aVar, int i10, b bVar) {
        if (aVar.f37608a.a(i10)) {
            return;
        }
        aVar.a(i10, bVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x005b, code lost:
    
        r7 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public c a(c cVar) {
        K c7561hF;
        d eVar;
        int b10;
        EF ef2;
        if (b()) {
            return cVar;
        }
        if (cVar.b()) {
            return this;
        }
        a a10 = a().a(this);
        VF vf2 = new VF(((SF) this.f37604a.b()).f44166c);
        VF vf3 = new VF(((SF) cVar.f37604a.b()).f44166c);
        int i10 = 0;
        while (vf3.hasNext()) {
            UF a11 = vf3.a();
            int a12 = a11.a();
            b bVar = (b) a11.getValue();
            if (vf2.hasNext()) {
                ef2 = (EF) vf2.next();
                vf2.previous();
                while (ef2 != null && ef2.a() <= a12 + i10) {
                    if (((b) vf2.a().getValue()).c()) {
                        i10++;
                    }
                    if (vf2.hasNext()) {
                        ef2 = vf2.a();
                        vf2.b();
                    }
                }
                if (ef2 != null && ef2.a() == a12 + i10) {
                    b bVar2 = (b) ef2.getValue();
                    if (!f37603g && bVar2.c()) {
                        throw new AssertionError();
                    }
                    bVar = bVar2.a(bVar);
                }
                a10.a(a12 + i10, bVar);
            }
            ef2 = null;
        }
        if (this.f37605b <= 30) {
            c7561hF = new ME();
        } else {
            c7561hF = new C7561hF(16);
        }
        c7561hF.f41547b = -1;
        for (int i11 = 0; i11 < this.f37605b; i11++) {
            if (!a(i11).c()) {
                int b11 = b(i11);
                if (!cVar.a(b11).c() && (b10 = cVar.b(b11)) != i11 - a(i11, a10.f37608a)) {
                    if (i11 != b10) {
                        c7561hF.b(i11, b10);
                    } else {
                        c7561hF.remove(i11);
                    }
                }
            }
        }
        if (!f37603g) {
            if (C8704o7.a(cVar.f37607d) + C8704o7.a(this.f37607d) > 1) {
                throw new AssertionError();
            }
        }
        a a13 = a10.a(this.f37605b);
        if (c7561hF.isEmpty()) {
            eVar = f.f37614a;
        } else {
            eVar = new e(c7561hF);
        }
        a13.f37610c = eVar;
        a13.f37611d = this.f37607d || cVar.f37607d;
        return a13.a();
    }
}
