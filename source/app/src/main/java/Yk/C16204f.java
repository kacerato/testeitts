package yk;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import oh.C14539s;
import oh.InterfaceC14516g;

public class C16204f {

    public static final BigInteger[] f130438a = {new BigInteger("256"), new BigInteger("65536"), new BigInteger("4294967296"), new BigInteger("18446744073709551616")};

    public static final BigInteger[][] f130439b = {new BigInteger[]{new BigInteger("-128"), new BigInteger("127")}, new BigInteger[]{new BigInteger("-32768"), new BigInteger("32767")}, new BigInteger[]{new BigInteger("-2147483648"), new BigInteger("2147483647")}, new BigInteger[]{new BigInteger("-9223372036854775808"), new BigInteger("9223372036854775807")}};

    public enum a {
        SEQ,
        SEQ_OF,
        CHOICE,
        ENUM,
        INT,
        OCTET_STRING,
        OPAQUE,
        UTF8_STRING,
        BIT_STRING,
        NULL,
        EXTENSION,
        ENUM_ITEM,
        BOOLEAN,
        IS0646String,
        PrintableString,
        NumericString,
        BMPString,
        UniversalString,
        IA5String,
        VisibleString,
        Switch,
        Supplier
    }

    public static class b {

        public final a f130440a;

        public String f130443d;

        public String f130444e;

        public BigInteger f130445f;

        public BigInteger f130446g;

        public BigInteger f130447h;

        public InterfaceC14516g f130448i;

        public b f130449j;

        public Boolean f130450k;

        public k f130451l;

        public InterfaceC16202d f130453n;

        public boolean f130454o;

        public int f130456q;

        public ArrayList<b> f130441b = new ArrayList<>();

        public boolean f130442c = true;

        public ArrayList<InterfaceC14516g> f130452m = new ArrayList<>();

        public Map<String, InterfaceC16202d> f130455p = new HashMap();

        public final d f130457r = new a();

        public class a implements d {
            public a() {
            }

            @Override
            public b a(int i10, b bVar) {
                return bVar.h(b.this.f130457r);
            }
        }

        public class C2226b implements d {

            public final int f130459a;

            public final b f130460b;

            public C2226b(int i10, b bVar) {
                this.f130459a = i10;
                this.f130460b = bVar;
            }

            @Override
            public b a(int i10, b bVar) {
                return this.f130459a == i10 ? this.f130460b : bVar;
            }
        }

        public b(a aVar) {
            this.f130440a = aVar;
        }

        public b A() {
            b g10 = g();
            g10.f130446g = null;
            g10.f130445f = null;
            return g10;
        }

        public b B(InterfaceC14516g... interfaceC14516gArr) {
            b g10 = g();
            g10.f130452m.addAll(Arrays.asList(interfaceC14516gArr));
            return g10;
        }

        public b C(boolean z10, Object obj) {
            if (obj instanceof b) {
                return ((b) obj).m(z10);
            }
            if (obj instanceof a) {
                return new b((a) obj).m(z10);
            }
            if (obj instanceof String) {
                return C16204f.f((String) obj);
            }
            throw new IllegalStateException("Unable to wrap item in builder");
        }

        public void c(b bVar, c cVar) {
            if (cVar.isEmpty()) {
                b bVar2 = new b(a.EXTENSION);
                bVar2.f130456q = cVar.f130462b;
                bVar.f130441b.add(bVar2);
                return;
            }
            for (Object obj : cVar) {
                if (obj instanceof C2227f) {
                    d(bVar, cVar.f130462b, (C2227f) obj);
                } else {
                    b C10 = C(true, obj);
                    C10.f130456q = cVar.f130462b;
                    bVar.f130441b.add(C10);
                }
            }
        }

        public void d(b bVar, int i10, C2227f c2227f) {
            for (Object obj : c2227f) {
                if (obj instanceof c) {
                    c(bVar, (c) obj);
                } else {
                    b C10 = C(false, obj);
                    C10.f130456q = i10;
                    bVar.f130441b.add(C10);
                }
            }
        }

        public b e(int i10) {
            b g10 = g();
            g10.f130456q = i10;
            return g10;
        }

        public C16201c f() {
            ArrayList arrayList = new ArrayList();
            boolean z10 = false;
            if (this.f130440a == a.ENUM) {
                HashSet hashSet = new HashSet();
                int i10 = 0;
                for (int i11 = 0; i11 < this.f130441b.size(); i11++) {
                    b bVar = this.f130441b.get(i11);
                    if (bVar.f130447h == null) {
                        bVar.f130447h = BigInteger.valueOf(i10);
                        i10++;
                    }
                    if (hashSet.contains(bVar.f130447h)) {
                        throw new IllegalStateException("duplicate enum value at index " + i11);
                    }
                    hashSet.add(bVar.f130447h);
                }
            }
            Iterator<b> it = this.f130441b.iterator();
            boolean z11 = false;
            int i12 = 0;
            boolean z12 = false;
            while (it.hasNext()) {
                b next = it.next();
                if (!z11 && next.f130456q > 0) {
                    z11 = true;
                }
                if (!next.f130442c) {
                    i12++;
                }
                if (!z12 && next.f130448i != null) {
                    z12 = true;
                }
                arrayList.add(next.f());
            }
            a aVar = this.f130440a;
            InterfaceC14516g interfaceC14516g = this.f130448i;
            if (interfaceC14516g == null && this.f130442c) {
                z10 = true;
            }
            return new C16201c(aVar, arrayList, z10, this.f130444e, this.f130446g, this.f130445f, z11, this.f130447h, interfaceC14516g, this.f130451l, this.f130452m.isEmpty() ? null : this.f130452m, this.f130453n, this.f130454o, this.f130443d, this.f130455p.isEmpty() ? null : this.f130455p, this.f130456q, i12, z12);
        }

        public b g() {
            return h(this.f130457r);
        }

        public final b h(d dVar) {
            b bVar = new b(this.f130440a);
            Iterator<b> it = this.f130441b.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                bVar.f130441b.add(dVar.a(i10, it.next()));
                i10++;
            }
            bVar.f130442c = this.f130442c;
            bVar.f130444e = this.f130444e;
            bVar.f130445f = this.f130445f;
            bVar.f130446g = this.f130446g;
            bVar.f130448i = this.f130448i;
            bVar.f130447h = this.f130447h;
            bVar.f130450k = this.f130450k;
            bVar.f130451l = this.f130451l;
            bVar.f130452m = new ArrayList<>(this.f130452m);
            bVar.f130453n = this.f130453n;
            bVar.f130454o = this.f130454o;
            bVar.f130443d = this.f130443d;
            bVar.f130455p = new HashMap(this.f130455p);
            bVar.f130456q = this.f130456q;
            return bVar;
        }

        public b i(k kVar) {
            b g10 = g();
            g10.f130451l = kVar;
            return g10;
        }

        public b j(InterfaceC14516g interfaceC14516g) {
            b g10 = g();
            g10.f130448i = interfaceC14516g;
            return g10;
        }

        public b k(InterfaceC16202d interfaceC16202d) {
            b g10 = g();
            g10.f130453n = interfaceC16202d;
            return g10;
        }

        public b l(BigInteger bigInteger) {
            b g10 = g();
            this.f130447h = bigInteger;
            return g10;
        }

        public b m(boolean z10) {
            b g10 = g();
            g10.f130442c = z10;
            return g10;
        }

        public b n(long j10) {
            b g10 = g();
            g10.f130445f = BigInteger.valueOf(j10);
            g10.f130446g = BigInteger.valueOf(j10);
            return g10;
        }

        public b o(boolean z10) {
            b g10 = g();
            g10.f130450k = Boolean.valueOf(z10);
            return g10;
        }

        public b p(Object... objArr) {
            b g10 = g();
            for (int i10 = 0; i10 != objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof c) {
                    c(g10, (c) obj);
                } else if (obj instanceof C2227f) {
                    d(g10, g10.f130456q, (C2227f) obj);
                } else if (obj.getClass().isArray()) {
                    int i11 = 0;
                    while (true) {
                        Object[] objArr2 = (Object[]) obj;
                        if (i11 < objArr2.length) {
                            g10.f130441b.add(C(true, objArr2[i11]));
                            i11++;
                        }
                    }
                } else {
                    g10.f130441b.add(C(true, obj));
                }
            }
            return g10;
        }

        public b q(String str) {
            b g10 = g();
            g10.f130444e = str;
            return g10;
        }

        public b r(String str) {
            b g10 = g();
            g10.f130444e = str + " " + this.f130444e;
            return g10;
        }

        public b s(String... strArr) {
            b g10 = g();
            HashSet hashSet = new HashSet();
            hashSet.addAll(Arrays.asList(strArr));
            ArrayList<b> arrayList = new ArrayList<>();
            Iterator<b> it = this.f130441b.iterator();
            while (it.hasNext()) {
                b next = it.next();
                arrayList.add(next.g().o(hashSet.contains(next.f130444e)));
            }
            g10.f130441b = arrayList;
            return g10;
        }

        public b t(boolean z10) {
            b g10 = g();
            g10.f130454o = z10;
            return g10;
        }

        public b u(long j10, long j11, InterfaceC14516g interfaceC14516g) {
            b g10 = g();
            g10.f130446g = BigInteger.valueOf(j10);
            g10.f130445f = BigInteger.valueOf(j11);
            g10.f130448i = interfaceC14516g;
            return g10;
        }

        public b v(BigInteger bigInteger, BigInteger bigInteger2) {
            b g10 = g();
            g10.f130446g = bigInteger;
            g10.f130445f = bigInteger2;
            return g10;
        }

        public b w(long j10) {
            b g10 = g();
            g10.f130446g = BigInteger.valueOf(j10);
            g10.f130445f = null;
            return g10;
        }

        public b x(long j10) {
            b g10 = g();
            g10.f130445f = BigInteger.valueOf(j10);
            g10.f130446g = BigInteger.ZERO;
            return g10;
        }

        public b y(int i10, b bVar) {
            return h(new C2226b(i10, bVar));
        }

        public b z(String str) {
            b g10 = g();
            g10.f130443d = str;
            if (g10.f130444e == null) {
                g10.f130444e = str;
            }
            return g10;
        }
    }

    public static class c extends ArrayList<Object> {

        public final int f130462b;

        public c(int i10, List<Object> list) {
            this.f130462b = i10;
            addAll(list);
        }
    }

    public interface d {
        b a(int i10, b bVar);
    }

    public static class e extends b {

        public boolean f130463s;

        public e(a aVar) {
            super(aVar);
            this.f130463s = false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public e D(b... bVarArr) {
            if (this.f130463s) {
                throw new IllegalStateException("build cannot be modified and must be copied only");
            }
            for (int i10 = 0; i10 != bVarArr.length; i10++) {
                Object[] objArr = bVarArr[i10];
                if (objArr.getClass().isArray()) {
                    for (Object obj : objArr) {
                        this.f130441b.add(C(true, obj));
                    }
                } else {
                    this.f130441b.add(C(true, objArr));
                }
            }
            this.f130463s = true;
            return this;
        }

        @Override
        public e q(String str) {
            this.f130444e = str;
            return this;
        }
    }

    public static class C2227f extends ArrayList<Object> {
        public C2227f(List<Object> list) {
            addAll(list);
        }
    }

    public static b A() {
        return new b(a.UTF8_STRING);
    }

    public static b B(int i10) {
        return new b(a.UTF8_STRING).w(i10);
    }

    public static b C(int i10, int i11) {
        return new b(a.UTF8_STRING).v(BigInteger.valueOf(i10), BigInteger.valueOf(i11));
    }

    public static b a(k kVar) {
        return new b(a.Switch).i(kVar);
    }

    public static b b(long j10) {
        return new b(a.BIT_STRING).n(j10);
    }

    public static b c() {
        return new b(a.BOOLEAN);
    }

    public static b d(Object... objArr) {
        return new b(a.CHOICE).p(objArr);
    }

    public static b e(InterfaceC16202d interfaceC16202d) {
        return new b(a.Supplier).k(interfaceC16202d);
    }

    public static b f(String str) {
        return new b(a.ENUM_ITEM).q(str);
    }

    public static b g(String str, BigInteger bigInteger) {
        return new b(a.ENUM_ITEM).l(bigInteger).q(str);
    }

    public static b h(Object... objArr) {
        return new b(a.ENUM).p(objArr);
    }

    public static c i(int i10, Object... objArr) {
        return new c(i10, Arrays.asList(objArr));
    }

    public static c j(Object... objArr) {
        return new c(1, Arrays.asList(objArr));
    }

    public static b k() {
        return new b(a.IA5String);
    }

    public static b l() {
        return new b(a.INT);
    }

    public static b m(long j10) {
        return new b(a.INT).j(new C14539s(j10));
    }

    public static b n(long j10, long j11) {
        return new b(a.INT).v(BigInteger.valueOf(j10), BigInteger.valueOf(j11));
    }

    public static b o(long j10, long j11, InterfaceC14516g interfaceC14516g) {
        return new b(a.INT).u(j10, j11, interfaceC14516g);
    }

    public static b p(BigInteger bigInteger, BigInteger bigInteger2) {
        return new b(a.INT).v(bigInteger, bigInteger2);
    }

    public static b q() {
        return new b(a.NULL);
    }

    public static b r() {
        return new b(a.OCTET_STRING).A();
    }

    public static b s(int i10) {
        return new b(a.OCTET_STRING).n(i10);
    }

    public static b t(int i10, int i11) {
        return new b(a.OCTET_STRING).v(BigInteger.valueOf(i10), BigInteger.valueOf(i11));
    }

    public static b u() {
        return new b(a.OPAQUE);
    }

    public static List<Object> v(Object... objArr) {
        return new C2227f(Arrays.asList(objArr));
    }

    public static b w() {
        return new b(null);
    }

    public static b x() {
        return new b(a.SEQ);
    }

    public static b y(Object... objArr) {
        return new b(a.SEQ).p(objArr);
    }

    public static b z(Object... objArr) {
        return new b(a.SEQ_OF).p(objArr);
    }
}
