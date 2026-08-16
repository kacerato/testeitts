package yk;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import oh.InterfaceC14516g;
import yk.C16204f;

public class C16201c {

    public final C16204f.a f130418a;

    public final List<C16201c> f130419b;

    public final boolean f130420c;

    public final String f130421d;

    public final BigInteger f130422e;

    public final BigInteger f130423f;

    public final boolean f130424g;

    public final BigInteger f130425h;

    public final InterfaceC14516g f130426i;

    public final k f130427j;

    public final boolean f130428k;

    public List<C16201c> f130429l;

    public List<InterfaceC14516g> f130430m;

    public final InterfaceC16202d f130431n;

    public final boolean f130432o;

    public final String f130433p;

    public final Map<String, InterfaceC16202d> f130434q;

    public C16201c f130435r;

    public final int f130436s;

    public final int f130437t;

    public C16201c(C16201c c16201c, C16201c c16201c2) {
        this.f130418a = c16201c.f130418a;
        ArrayList arrayList = new ArrayList(c16201c.f130419b);
        this.f130419b = arrayList;
        this.f130420c = c16201c.f130420c;
        this.f130421d = c16201c.f130421d;
        this.f130422e = c16201c.f130422e;
        this.f130423f = c16201c.f130423f;
        this.f130424g = c16201c.f130424g;
        this.f130425h = c16201c.f130425h;
        this.f130426i = c16201c.f130426i;
        this.f130427j = c16201c.f130427j;
        this.f130430m = c16201c.f130430m;
        this.f130431n = c16201c.f130431n;
        this.f130432o = c16201c.f130432o;
        this.f130433p = c16201c.f130433p;
        this.f130434q = c16201c.f130434q;
        this.f130435r = c16201c2;
        this.f130437t = c16201c.f130437t;
        this.f130436s = c16201c.f130436s;
        this.f130428k = c16201c.f130428k;
        Iterator<E> it = arrayList.iterator();
        while (it.hasNext()) {
            ((C16201c) it.next()).f130435r = this;
        }
    }

    public static C16201c c(C16201c c16201c, C16201c c16201c2) {
        InterfaceC16202d interfaceC16202d = c16201c.f130431n;
        if (interfaceC16202d == null) {
            return c16201c;
        }
        C16201c build = interfaceC16202d.build();
        return build.p() != c16201c2 ? new C16201c(build, c16201c2) : build;
    }

    public boolean A() {
        return BigInteger.ZERO.equals(m());
    }

    public boolean B() {
        return this.f130432o;
    }

    public boolean C() {
        return r() == null && m() == null;
    }

    public boolean D() {
        return A() && r() != null && BigInteger.ZERO.compareTo(r()) < 0;
    }

    public List<C16201c> E() {
        List<C16201c> n10;
        synchronized (this) {
            try {
                if (n() == null) {
                    ArrayList arrayList = new ArrayList();
                    for (C16201c c16201c : f()) {
                        if (c16201c.x() && c16201c.g() == null) {
                        }
                        arrayList.add(c16201c);
                    }
                    this.f130429l = Collections.unmodifiableList(arrayList);
                }
                n10 = n();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return n10;
    }

    public String F() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        sb2.append(m() != null ? m().toString() : "MIN");
        sb2.append(" ... ");
        sb2.append(r() != null ? r().toString() : "MAX");
        sb2.append(")");
        return sb2.toString();
    }

    public InterfaceC16202d G() {
        if (this.f130434q.containsKey(this.f130421d)) {
            return this.f130434q.get(this.f130421d);
        }
        C16201c c16201c = this.f130435r;
        if (c16201c != null) {
            return c16201c.H(this.f130421d);
        }
        throw new IllegalStateException("unable to resolve: " + this.f130421d);
    }

    public InterfaceC16202d H(String str) {
        String str2 = this.f130421d + "." + str;
        if (this.f130434q.containsKey(str2)) {
            return this.f130434q.get(str2);
        }
        C16201c c16201c = this.f130435r;
        if (c16201c != null) {
            return c16201c.H(str2);
        }
        throw new IllegalStateException("unable to resolve: " + str2);
    }

    public String a(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        sb2.append(l() == null ? "" : l());
        sb2.append(x() ? " (E)" : "");
        sb2.append("] ");
        sb2.append(str);
        return sb2.toString();
    }

    public boolean b() {
        return m() != null && BigInteger.ZERO.compareTo(m()) > 0;
    }

    public C16204f.a d() {
        return this.f130418a;
    }

    public int e() {
        return this.f130437t;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C16201c c16201c = (C16201c) obj;
        if (this.f130420c != c16201c.f130420c || this.f130424g != c16201c.f130424g || this.f130428k != c16201c.f130428k || this.f130432o != c16201c.f130432o || this.f130436s != c16201c.f130436s || this.f130437t != c16201c.f130437t || this.f130418a != c16201c.f130418a) {
            return false;
        }
        List<C16201c> list = this.f130419b;
        if (list == null ? c16201c.f130419b != null : !list.equals(c16201c.f130419b)) {
            return false;
        }
        String str = this.f130421d;
        if (str == null ? c16201c.f130421d != null : !str.equals(c16201c.f130421d)) {
            return false;
        }
        BigInteger bigInteger = this.f130422e;
        if (bigInteger == null ? c16201c.f130422e != null : !bigInteger.equals(c16201c.f130422e)) {
            return false;
        }
        BigInteger bigInteger2 = this.f130423f;
        if (bigInteger2 == null ? c16201c.f130423f != null : !bigInteger2.equals(c16201c.f130423f)) {
            return false;
        }
        BigInteger bigInteger3 = this.f130425h;
        if (bigInteger3 == null ? c16201c.f130425h != null : !bigInteger3.equals(c16201c.f130425h)) {
            return false;
        }
        InterfaceC14516g interfaceC14516g = this.f130426i;
        if (interfaceC14516g == null ? c16201c.f130426i != null : !interfaceC14516g.equals(c16201c.f130426i)) {
            return false;
        }
        k kVar = this.f130427j;
        if (kVar == null ? c16201c.f130427j != null : !kVar.equals(c16201c.f130427j)) {
            return false;
        }
        List<C16201c> list2 = this.f130429l;
        if (list2 == null ? c16201c.f130429l != null : !list2.equals(c16201c.f130429l)) {
            return false;
        }
        List<InterfaceC14516g> list3 = this.f130430m;
        if (list3 == null ? c16201c.f130430m != null : !list3.equals(c16201c.f130430m)) {
            return false;
        }
        InterfaceC16202d interfaceC16202d = this.f130431n;
        if (interfaceC16202d == null ? c16201c.f130431n != null : !interfaceC16202d.equals(c16201c.f130431n)) {
            return false;
        }
        String str2 = this.f130433p;
        if (str2 == null ? c16201c.f130433p != null : !str2.equals(c16201c.f130433p)) {
            return false;
        }
        Map<String, InterfaceC16202d> map = this.f130434q;
        Map<String, InterfaceC16202d> map2 = c16201c.f130434q;
        if (map != null) {
            if (!map.equals(map2)) {
                return true;
            }
        } else if (map2 != null) {
            return true;
        }
        return false;
    }

    public List<C16201c> f() {
        return this.f130419b;
    }

    public InterfaceC14516g g() {
        return this.f130426i;
    }

    public String h() {
        String str = this.f130433p;
        return str != null ? str : this.f130418a.name();
    }

    public int hashCode() {
        C16204f.a aVar = this.f130418a;
        int hashCode = (aVar != null ? aVar.hashCode() : 0) * 31;
        List<C16201c> list = this.f130419b;
        int hashCode2 = (((hashCode + (list != null ? list.hashCode() : 0)) * 31) + (this.f130420c ? 1 : 0)) * 31;
        String str = this.f130421d;
        int hashCode3 = (hashCode2 + (str != null ? str.hashCode() : 0)) * 31;
        BigInteger bigInteger = this.f130422e;
        int hashCode4 = (hashCode3 + (bigInteger != null ? bigInteger.hashCode() : 0)) * 31;
        BigInteger bigInteger2 = this.f130423f;
        int hashCode5 = (((hashCode4 + (bigInteger2 != null ? bigInteger2.hashCode() : 0)) * 31) + (this.f130424g ? 1 : 0)) * 31;
        BigInteger bigInteger3 = this.f130425h;
        int hashCode6 = (hashCode5 + (bigInteger3 != null ? bigInteger3.hashCode() : 0)) * 31;
        InterfaceC14516g interfaceC14516g = this.f130426i;
        int hashCode7 = (hashCode6 + (interfaceC14516g != null ? interfaceC14516g.hashCode() : 0)) * 31;
        k kVar = this.f130427j;
        int hashCode8 = (((hashCode7 + (kVar != null ? kVar.hashCode() : 0)) * 31) + (this.f130428k ? 1 : 0)) * 31;
        List<C16201c> list2 = this.f130429l;
        int hashCode9 = (hashCode8 + (list2 != null ? list2.hashCode() : 0)) * 31;
        List<InterfaceC14516g> list3 = this.f130430m;
        int hashCode10 = (hashCode9 + (list3 != null ? list3.hashCode() : 0)) * 31;
        InterfaceC16202d interfaceC16202d = this.f130431n;
        int hashCode11 = (((hashCode10 + (interfaceC16202d != null ? interfaceC16202d.hashCode() : 0)) * 31) + (this.f130432o ? 1 : 0)) * 31;
        String str2 = this.f130433p;
        int hashCode12 = (hashCode11 + (str2 != null ? str2.hashCode() : 0)) * 31;
        Map<String, InterfaceC16202d> map = this.f130434q;
        return ((((hashCode12 + (map != null ? map.hashCode() : 0)) * 31) + this.f130436s) * 31) + this.f130437t;
    }

    public InterfaceC16202d i() {
        return this.f130431n;
    }

    public BigInteger j() {
        return this.f130425h;
    }

    public C16201c k() {
        return f().get(0);
    }

    public String l() {
        return this.f130421d;
    }

    public BigInteger m() {
        return this.f130422e;
    }

    public List<C16201c> n() {
        return this.f130429l;
    }

    public int o() {
        return this.f130436s;
    }

    public C16201c p() {
        return this.f130435r;
    }

    public String q() {
        return this.f130433p;
    }

    public BigInteger r() {
        return this.f130423f;
    }

    public List<InterfaceC14516g> s() {
        return this.f130430m;
    }

    public k t() {
        return this.f130427j;
    }

    public String toString() {
        return "[" + this.f130433p + " " + this.f130418a.name() + " '" + l() + "']";
    }

    public boolean u() {
        return this.f130428k;
    }

    public boolean v() {
        return this.f130424g;
    }

    public int w() {
        if (m() != null && r() != null) {
            int i10 = 1;
            if (!BigInteger.ZERO.equals(m())) {
                int i11 = 0;
                int i12 = 1;
                while (true) {
                    BigInteger[][] bigIntegerArr = C16204f.f130439b;
                    if (i11 >= bigIntegerArr.length) {
                        break;
                    }
                    if (m().compareTo(bigIntegerArr[i11][0]) >= 0 && r().compareTo(bigIntegerArr[i11][1]) < 0) {
                        return -i12;
                    }
                    i11++;
                    i12 *= 2;
                }
            } else {
                int i13 = 0;
                while (true) {
                    BigInteger[] bigIntegerArr2 = C16204f.f130438a;
                    if (i13 >= bigIntegerArr2.length) {
                        break;
                    }
                    if (r().compareTo(bigIntegerArr2[i13]) < 0) {
                        return i10;
                    }
                    i13++;
                    i10 *= 2;
                }
            }
        }
        return 0;
    }

    public boolean x() {
        return this.f130420c;
    }

    public boolean y() {
        return this.f130424g;
    }

    public boolean z() {
        return m() != null && m().equals(r());
    }

    public C16201c(C16204f.a aVar, List<C16201c> list, boolean z10, String str, BigInteger bigInteger, BigInteger bigInteger2, boolean z11, BigInteger bigInteger3, InterfaceC14516g interfaceC14516g, k kVar, List<InterfaceC14516g> list2, InterfaceC16202d interfaceC16202d, boolean z12, String str2, Map<String, InterfaceC16202d> map, int i10, int i11, boolean z13) {
        Map<String, InterfaceC16202d> map2 = map;
        this.f130418a = aVar;
        this.f130419b = list;
        this.f130420c = z10;
        this.f130421d = str;
        this.f130422e = bigInteger;
        this.f130423f = bigInteger2;
        this.f130424g = z11;
        this.f130425h = bigInteger3;
        this.f130426i = interfaceC14516g;
        this.f130427j = kVar;
        this.f130430m = list2 != null ? Collections.unmodifiableList(list2) : null;
        this.f130431n = interfaceC16202d;
        this.f130432o = z12;
        this.f130433p = str2;
        this.f130437t = i10;
        this.f130436s = i11;
        this.f130428k = z13;
        this.f130434q = map2 == null ? Collections.emptyMap() : map2;
        Iterator<C16201c> it = list.iterator();
        while (it.hasNext()) {
            it.next().f130435r = this;
        }
    }
}
