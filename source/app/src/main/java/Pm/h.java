package Pm;

import Pm.c;
import Pm.i;
import Pm.j;
import Pm.k;
import Pm.l;
import Pm.p;
import Pm.t;
import Um.AbstractC3153b;
import Um.B;
import Um.C3154c;
import Um.x;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import w2.C15883c;

public class h implements Wm.h {

    public static final Set<Class<? extends AbstractC3153b>> f21774p = new LinkedHashSet(Arrays.asList(C3154c.class, Um.m.class, Um.k.class, Um.n.class, B.class, Um.t.class, Um.q.class));

    public static final Map<Class<? extends AbstractC3153b>, Wm.e> f21775q;

    public CharSequence f21776a;

    public boolean f21779d;

    public boolean f21783h;

    public final List<Wm.e> f21784i;

    public final Vm.c f21785j;

    public final List<Xm.a> f21786k;

    public final g f21787l;

    public int f21777b = 0;

    public int f21778c = 0;

    public int f21780e = 0;

    public int f21781f = 0;

    public int f21782g = 0;

    public final Map<String, Um.s> f21788m = new LinkedHashMap();

    public List<Wm.d> f21789n = new ArrayList();

    public Set<Wm.d> f21790o = new LinkedHashSet();

    public static class a implements Wm.g {

        public final Wm.d f21791a;

        public a(Wm.d dVar) {
            this.f21791a = dVar;
        }

        @Override
        public Wm.d a() {
            return this.f21791a;
        }

        @Override
        public CharSequence b() {
            Wm.d dVar = this.f21791a;
            if (!(dVar instanceof r)) {
                return null;
            }
            CharSequence h10 = ((r) dVar).h();
            if (h10.length() == 0) {
                return null;
            }
            return h10;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(C3154c.class, new c.a());
        hashMap.put(Um.m.class, new j.a());
        hashMap.put(Um.k.class, new i.a());
        hashMap.put(Um.n.class, new k.b());
        hashMap.put(B.class, new t.a());
        hashMap.put(Um.t.class, new p.a());
        hashMap.put(Um.q.class, new l.a());
        f21775q = Collections.unmodifiableMap(hashMap);
    }

    public h(List<Wm.e> list, Vm.c cVar, List<Xm.a> list2) {
        this.f21784i = list;
        this.f21785j = cVar;
        this.f21786k = list2;
        g gVar = new g();
        this.f21787l = gVar;
        f(gVar);
    }

    public static List<Wm.e> k(List<Wm.e> list, Set<Class<? extends AbstractC3153b>> set) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(list);
        Iterator<Class<? extends AbstractC3153b>> it = set.iterator();
        while (it.hasNext()) {
            arrayList.add(f21775q.get(it.next()));
        }
        return arrayList;
    }

    public static Set<Class<? extends AbstractC3153b>> r() {
        return f21774p;
    }

    @Override
    public boolean a() {
        return this.f21783h;
    }

    @Override
    public CharSequence b() {
        return this.f21776a;
    }

    @Override
    public int c() {
        return this.f21780e;
    }

    @Override
    public int d() {
        return this.f21782g;
    }

    @Override
    public Wm.d e() {
        return this.f21789n.get(r0.size() - 1);
    }

    public final void f(Wm.d dVar) {
        this.f21789n.add(dVar);
        this.f21790o.add(dVar);
    }

    public final <T extends Wm.d> T g(T t10) {
        while (!e().f(t10.getBlock())) {
            m(e());
        }
        e().getBlock().d(t10.getBlock());
        f(t10);
        return t10;
    }

    @Override
    public int getColumn() {
        return this.f21778c;
    }

    @Override
    public int getIndex() {
        return this.f21777b;
    }

    public final void h(r rVar) {
        for (Um.s sVar : rVar.i()) {
            rVar.getBlock().k(sVar);
            String q10 = sVar.q();
            if (!this.f21788m.containsKey(q10)) {
                this.f21788m.put(q10, sVar);
            }
        }
    }

    public final void i() {
        CharSequence subSequence;
        if (this.f21779d) {
            int i10 = this.f21777b + 1;
            CharSequence charSequence = this.f21776a;
            CharSequence subSequence2 = charSequence.subSequence(i10, charSequence.length());
            int a10 = Tm.d.a(this.f21778c);
            StringBuilder sb2 = new StringBuilder(subSequence2.length() + a10);
            for (int i11 = 0; i11 < a10; i11++) {
                sb2.append(C15883c.f126249O);
            }
            sb2.append(subSequence2);
            subSequence = sb2.toString();
        } else {
            CharSequence charSequence2 = this.f21776a;
            subSequence = charSequence2.subSequence(this.f21777b, charSequence2.length());
        }
        e().c(subSequence);
    }

    public final void j() {
        if (this.f21776a.charAt(this.f21777b) != '\t') {
            this.f21777b++;
            this.f21778c++;
        } else {
            this.f21777b++;
            int i10 = this.f21778c;
            this.f21778c = i10 + Tm.d.a(i10);
        }
    }

    public final void l() {
        this.f21789n.remove(r0.size() - 1);
    }

    public final void m(Wm.d dVar) {
        if (e() == dVar) {
            l();
        }
        if (dVar instanceof r) {
            h((r) dVar);
        }
        dVar.g();
    }

    public final Um.i n() {
        o(this.f21789n);
        w();
        return this.f21787l.getBlock();
    }

    public final void o(List<Wm.d> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            m(list.get(size));
        }
    }

    public final d p(Wm.d dVar) {
        a aVar = new a(dVar);
        Iterator<Wm.e> it = this.f21784i.iterator();
        while (it.hasNext()) {
            Wm.f a10 = it.next().a(this, aVar);
            if (a10 instanceof d) {
                return (d) a10;
            }
        }
        return null;
    }

    public final void q() {
        int i10 = this.f21777b;
        int i11 = this.f21778c;
        this.f21783h = true;
        int length = this.f21776a.length();
        while (true) {
            if (i10 >= length) {
                break;
            }
            char charAt = this.f21776a.charAt(i10);
            if (charAt == '\t') {
                i10++;
                i11 += 4 - (i11 % 4);
            } else if (charAt != ' ') {
                this.f21783h = false;
                break;
            } else {
                i10++;
                i11++;
            }
        }
        this.f21780e = i10;
        this.f21781f = i11;
        this.f21782g = i11 - this.f21778c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x00f7, code lost:
    
        y(r10.f21780e);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void s(CharSequence charSequence) {
        this.f21776a = Tm.d.j(charSequence);
        this.f21777b = 0;
        this.f21778c = 0;
        this.f21779d = false;
        List<Wm.d> list = this.f21789n;
        int i10 = 1;
        for (Wm.d dVar : list.subList(1, list.size())) {
            q();
            Wm.c d10 = dVar.d(this);
            if (!(d10 instanceof b)) {
                break;
            }
            b bVar = (b) d10;
            if (bVar.g()) {
                m(dVar);
                return;
            }
            if (bVar.f() != -1) {
                y(bVar.f());
            } else if (bVar.e() != -1) {
                x(bVar.e());
            }
            i10++;
        }
        List<Wm.d> list2 = this.f21789n;
        ArrayList arrayList = new ArrayList(list2.subList(i10, list2.size()));
        Wm.d dVar2 = this.f21789n.get(i10 - 1);
        boolean isEmpty = arrayList.isEmpty();
        boolean z10 = (dVar2.getBlock() instanceof x) || dVar2.a();
        while (true) {
            if (!z10) {
                break;
            }
            q();
            if (a() || (this.f21782g < Tm.d.f25544k && Tm.d.h(this.f21776a, this.f21780e))) {
                break;
            }
            d p10 = p(dVar2);
            if (p10 == null) {
                y(this.f21780e);
                break;
            }
            if (!isEmpty) {
                o(arrayList);
                isEmpty = true;
            }
            if (p10.h() != -1) {
                y(p10.h());
            } else if (p10.g() != -1) {
                x(p10.g());
            }
            if (p10.i()) {
                v();
            }
            Wm.d[] f10 = p10.f();
            int length = f10.length;
            int i11 = 0;
            while (i11 < length) {
                Wm.d dVar3 = f10[i11];
                Wm.d g10 = g(dVar3);
                i11++;
                z10 = dVar3.a();
                dVar2 = g10;
            }
        }
        if (!isEmpty && !a() && e().b()) {
            i();
            return;
        }
        if (!isEmpty) {
            o(arrayList);
        }
        if (!dVar2.a()) {
            i();
        } else {
            if (a()) {
                return;
            }
            g(new r());
            i();
        }
    }

    public Um.i t(Reader reader) throws IOException {
        BufferedReader bufferedReader = reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                return n();
            }
            s(readLine);
        }
    }

    public Um.i u(String str) {
        int i10 = 0;
        while (true) {
            int c10 = Tm.d.c(str, i10);
            if (c10 == -1) {
                break;
            }
            s(str.substring(i10, c10));
            i10 = c10 + 1;
            if (i10 < str.length() && str.charAt(c10) == '\r' && str.charAt(i10) == '\n') {
                i10 = c10 + 2;
            }
        }
        if (str.length() > 0 && (i10 == 0 || i10 < str.length())) {
            s(str.substring(i10));
        }
        return n();
    }

    public final void v() {
        Wm.d e10 = e();
        l();
        this.f21790o.remove(e10);
        if (e10 instanceof r) {
            h((r) e10);
        }
        e10.getBlock().o();
    }

    public final void w() {
        Vm.a a10 = this.f21785j.a(new m(this.f21786k, this.f21788m));
        Iterator<Wm.d> it = this.f21790o.iterator();
        while (it.hasNext()) {
            it.next().e(a10);
        }
    }

    public final void x(int i10) {
        int i11;
        int i12 = this.f21781f;
        if (i10 >= i12) {
            this.f21777b = this.f21780e;
            this.f21778c = i12;
        }
        int length = this.f21776a.length();
        while (true) {
            i11 = this.f21778c;
            if (i11 >= i10 || this.f21777b == length) {
                break;
            } else {
                j();
            }
        }
        if (i11 <= i10) {
            this.f21779d = false;
            return;
        }
        this.f21777b--;
        this.f21778c = i10;
        this.f21779d = true;
    }

    public final void y(int i10) {
        int i11 = this.f21780e;
        if (i10 >= i11) {
            this.f21777b = i11;
            this.f21778c = this.f21781f;
        }
        int length = this.f21776a.length();
        while (true) {
            int i12 = this.f21777b;
            if (i12 >= i10 || i12 == length) {
                break;
            } else {
                j();
            }
        }
        this.f21779d = false;
    }
}
