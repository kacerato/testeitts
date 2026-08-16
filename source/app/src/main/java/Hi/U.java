package hi;

import fi.C13227c;
import fi.C13228d;
import java.io.IOException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import oh.AbstractC14536q;
import oh.AbstractC14551y;
import org.bouncycastle.asn1.x509.NameConstraintValidatorException;
import org.openjdk.tools.doclint.DocLint;

public class U implements O {

    public Set f90731a = new HashSet();

    public Set f90732b = new HashSet();

    public Set f90733c = new HashSet();

    public Set f90734d = new HashSet();

    public Set f90735e = new HashSet();

    public Set f90736f = new HashSet();

    public Set f90737g;

    public Set f90738h;

    public Set f90739i;

    public Set f90740j;

    public Set f90741k;

    public Set f90742l;

    public static byte[] Q(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if ((bArr[i10] & 65535) > (65535 & bArr2[i10])) {
                return bArr;
            }
        }
        return bArr2;
    }

    public static byte[] R(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if ((bArr[i10] & 65535) < (65535 & bArr2[i10])) {
                return bArr;
            }
        }
        return bArr2;
    }

    public static byte[] T(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr3[i10] = (byte) (bArr[i10] | bArr2[i10]);
        }
        return bArr3;
    }

    public static boolean h0(oh.E e10, oh.E e11) {
        if (e11.size() < 1 || e11.size() > e10.size()) {
            return false;
        }
        C13227c y10 = C13227c.y(e11.I(0));
        int i10 = 0;
        int i11 = 0;
        while (true) {
            if (i10 >= e10.size()) {
                i10 = i11;
                break;
            }
            if (gi.d.p(y10, C13227c.y(e10.I(i10)))) {
                break;
            }
            i11 = i10;
            i10++;
        }
        if (e11.size() > e10.size() - i10) {
            return false;
        }
        for (int i12 = 0; i12 < e11.size(); i12++) {
            C13227c y11 = C13227c.y(e11.I(i12));
            C13227c y12 = C13227c.y(e10.I(i10 + i12));
            if (y11.size() != y12.size() || !y11.x().v().A(y12.x().v())) {
                return false;
            }
            if (y11.size() == 1 && y11.x().v().A(gi.e.f89981G)) {
                if (!y12.x().x().toString().startsWith(y11.x().x().toString())) {
                    return false;
                }
            } else if (!gi.d.p(y11, y12)) {
                return false;
            }
        }
        return true;
    }

    public static int w(byte[] bArr, byte[] bArr2) {
        if (org.bouncycastle.util.a.g(bArr, bArr2)) {
            return 0;
        }
        return org.bouncycastle.util.a.g(Q(bArr, bArr2), bArr) ? 1 : -1;
    }

    public static String z(String str) {
        String substring = str.substring(str.indexOf(58) + 1);
        if (substring.indexOf("//") != -1) {
            substring = substring.substring(substring.indexOf("//") + 2);
        }
        if (substring.lastIndexOf(58) != -1) {
            substring = substring.substring(0, substring.lastIndexOf(58));
        }
        String substring2 = substring.substring(substring.indexOf(58) + 1);
        String substring3 = substring2.substring(substring2.indexOf(64) + 1);
        return substring3.indexOf(47) != -1 ? substring3.substring(0, substring3.indexOf(47)) : substring3;
    }

    public final byte[][] A(byte[] bArr, byte[] bArr2) {
        int length = bArr.length / 2;
        byte[] bArr3 = new byte[length];
        byte[] bArr4 = new byte[length];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr, length, bArr4, 0, length);
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        System.arraycopy(bArr2, 0, bArr5, 0, length);
        System.arraycopy(bArr2, length, bArr6, 0, length);
        return new byte[][]{bArr3, bArr4, bArr5, bArr6};
    }

    public final String B(C13481E c13481e) {
        return AbstractC14536q.F(c13481e.x()).getString();
    }

    public final int C(Collection collection) {
        int i10 = 0;
        if (collection == null) {
            return 0;
        }
        for (Object obj : collection) {
            i10 += obj instanceof byte[] ? org.bouncycastle.util.a.t0((byte[]) obj) : obj.hashCode();
        }
        return i10;
    }

    public final Set D(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            oh.E G10 = oh.E.G(((H) it.next()).u().x().r());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    oh.E e10 = (oh.E) it2.next();
                    if (h0(G10, e10)) {
                        hashSet.add(G10);
                    } else if (h0(e10, G10)) {
                        hashSet.add(e10);
                    }
                }
            } else if (G10 != null) {
                hashSet.add(G10);
            }
        }
        return hashSet;
    }

    public final Set E(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String B10 = B(((H) it.next()).u());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    if (i0(str, B10)) {
                        hashSet.add(str);
                    } else if (i0(B10, str)) {
                        hashSet.add(B10);
                    }
                }
            } else if (B10 != null) {
                hashSet.add(B10);
            }
        }
        return hashSet;
    }

    public final Set F(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String B10 = B(((H) it.next()).u());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    G(B10, (String) it2.next(), hashSet);
                }
            } else if (B10 != null) {
                hashSet.add(B10);
            }
        }
        return hashSet;
    }

    public final void G(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!i0(substring, str2)) {
                    return;
                }
            } else if (!substring.equalsIgnoreCase(str2)) {
                return;
            }
        } else {
            if (str.startsWith(".")) {
                if (str2.indexOf(64) != -1) {
                    if (!i0(str2.substring(str.indexOf(64) + 1), str)) {
                        return;
                    }
                } else if (str2.startsWith(".")) {
                    if (!i0(str, str2) && !str.equalsIgnoreCase(str2)) {
                        if (!i0(str2, str)) {
                            return;
                        }
                    }
                } else if (!i0(str2, str)) {
                    return;
                }
                set.add(str2);
                return;
            }
            if (str2.indexOf(64) != -1) {
                if (!str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                    return;
                }
                set.add(str2);
                return;
            } else if (str2.startsWith(".")) {
                if (!i0(str, str2)) {
                    return;
                }
            } else if (!str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        set.add(str);
    }

    public final Set H(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            byte[] H10 = AbstractC14551y.F(((H) it.next()).u().x()).H();
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    hashSet.addAll(I((byte[]) it2.next(), H10));
                }
            } else if (H10 != null) {
                hashSet.add(H10);
            }
        }
        return hashSet;
    }

    public final Set I(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return Collections.EMPTY_SET;
        }
        byte[][] A10 = A(bArr, bArr2);
        byte[] bArr3 = A10[0];
        byte[] bArr4 = A10[1];
        byte[] bArr5 = A10[2];
        byte[] bArr6 = A10[3];
        byte[][] S10 = S(bArr3, bArr4, bArr5, bArr6);
        return w(Q(S10[0], S10[2]), R(S10[1], S10[3])) == 1 ? Collections.EMPTY_SET : Collections.singleton(N(T(S10[0], S10[2]), T(bArr4, bArr6)));
    }

    public final Set J(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            T u10 = T.u(((H) it.next()).u().x());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    K(u10, T.u(it2.next()), hashSet);
                }
            } else if (u10 != null) {
                hashSet.add(u10);
            }
        }
        return hashSet;
    }

    public final void K(T t10, T t11, Set set) {
        if (t10.equals(t11)) {
            set.add(t10);
        }
    }

    public final Set L(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String B10 = B(((H) it.next()).u());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    M((String) it2.next(), B10, hashSet);
                }
            } else if (B10 != null) {
                hashSet.add(B10);
            }
        }
        return hashSet;
    }

    public final void M(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!i0(substring, str2)) {
                    return;
                }
            } else if (!substring.equalsIgnoreCase(str2)) {
                return;
            }
        } else {
            if (str.startsWith(".")) {
                if (str2.indexOf(64) != -1) {
                    if (!i0(str2.substring(str.indexOf(64) + 1), str)) {
                        return;
                    }
                } else if (str2.startsWith(".")) {
                    if (!i0(str, str2) && !str.equalsIgnoreCase(str2)) {
                        if (!i0(str2, str)) {
                            return;
                        }
                    }
                } else if (!i0(str2, str)) {
                    return;
                }
                set.add(str2);
                return;
            }
            if (str2.indexOf(64) != -1) {
                if (!str2.substring(str2.indexOf(64) + 1).equalsIgnoreCase(str)) {
                    return;
                }
                set.add(str2);
                return;
            } else if (str2.startsWith(".")) {
                if (!i0(str, str2)) {
                    return;
                }
            } else if (!str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        set.add(str);
    }

    public final byte[] N(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length * 2];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr2, 0, bArr3, length, length);
        return bArr3;
    }

    public final boolean O(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length != bArr2.length / 2) {
            return false;
        }
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr2, length, bArr3, 0, length);
        byte[] bArr4 = new byte[length];
        byte[] bArr5 = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr4[i10] = (byte) (bArr2[i10] & bArr3[i10]);
            bArr5[i10] = (byte) (bArr[i10] & bArr3[i10]);
        }
        return org.bouncycastle.util.a.g(bArr4, bArr5);
    }

    public final boolean P(String str, String str2) {
        String z10 = z(str);
        return !str2.startsWith(".") ? z10.equalsIgnoreCase(str2) : i0(z10, str2);
    }

    public final byte[][] S(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
        int length = bArr.length;
        byte[] bArr5 = new byte[length];
        byte[] bArr6 = new byte[length];
        byte[] bArr7 = new byte[length];
        byte[] bArr8 = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr5[i10] = (byte) (bArr[i10] & bArr2[i10]);
            byte b10 = bArr[i10];
            byte b11 = bArr2[i10];
            bArr6[i10] = (byte) ((b10 & b11) | (~b11));
            bArr7[i10] = (byte) (bArr3[i10] & bArr4[i10]);
            byte b12 = bArr3[i10];
            byte b13 = bArr4[i10];
            bArr8[i10] = (byte) ((b12 & b13) | (~b13));
        }
        return new byte[][]{bArr5, bArr6, bArr7, bArr8};
    }

    public final boolean U(T t10, T t11) {
        return t11.equals(t10);
    }

    public final String V(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < bArr.length / 2; i10++) {
            if (sb2.length() > 0) {
                sb2.append(".");
            }
            sb2.append(Integer.toString(bArr[i10] & 255));
        }
        sb2.append("/");
        boolean z10 = true;
        for (int length = bArr.length / 2; length < bArr.length; length++) {
            if (z10) {
                z10 = false;
            } else {
                sb2.append(".");
            }
            sb2.append(Integer.toString(bArr[length] & 255));
        }
        return sb2.toString();
    }

    public final String W(Set set) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (sb2.length() > 1) {
                sb2.append(DocLint.SEPARATOR);
            }
            sb2.append(V((byte[]) it.next()));
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final String X(Set set) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (sb2.length() > 1) {
                sb2.append(DocLint.SEPARATOR);
            }
            T u10 = T.u(it.next());
            sb2.append(u10.v().J());
            sb2.append(b3.s.f32937c);
            try {
                sb2.append(em.h.j(u10.x().r().getEncoded()));
            } catch (IOException e10) {
                sb2.append(e10.toString());
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    public final Set Y(Set set, oh.E e10) {
        if (set.isEmpty()) {
            if (e10 == null) {
                return set;
            }
            set.add(e10);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            oh.E G10 = oh.E.G(it.next());
            if (h0(e10, G10)) {
                hashSet.add(G10);
            } else {
                if (!h0(G10, e10)) {
                    hashSet.add(G10);
                }
                hashSet.add(e10);
            }
        }
        return hashSet;
    }

    public final Set Z(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (!i0(str2, str)) {
                boolean i02 = i0(str, str2);
                hashSet.add(str2);
                if (i02) {
                }
            }
            hashSet.add(str);
        }
        return hashSet;
    }

    @Override
    public void a(H h10) {
        b(new H[]{h10});
    }

    public final Set a0(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            b0((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    @Override
    public void b(H[] hArr) {
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 != hArr.length; i10++) {
            H h10 = hArr[i10];
            Integer j10 = org.bouncycastle.util.k.j(h10.u().g());
            if (hashMap.get(j10) == 0) {
                hashMap.put(j10, new HashSet());
            }
            ((Set) hashMap.get(j10)).add(h10);
        }
        Iterator it = hashMap.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            int intValue = ((Integer) entry.getKey()).intValue();
            if (intValue == 0) {
                this.f90742l = J(this.f90742l, (Set) entry.getValue());
            } else if (intValue == 1) {
                this.f90739i = F(this.f90739i, (Set) entry.getValue());
            } else if (intValue == 2) {
                this.f90738h = E(this.f90738h, (Set) entry.getValue());
            } else if (intValue == 4) {
                this.f90737g = D(this.f90737g, (Set) entry.getValue());
            } else if (intValue == 6) {
                this.f90740j = L(this.f90740j, (Set) entry.getValue());
            } else {
                if (intValue != 7) {
                    throw new IllegalStateException("Unknown tag encountered: " + intValue);
                }
                this.f90741k = H(this.f90741k, (Set) entry.getValue());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006c, code lost:
    
        r7.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (i0(r6.substring(r5.indexOf(64) + 1), r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        if (i0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (i0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0092, code lost:
    
        if (r6.substring(r5.indexOf(64) + 1).equalsIgnoreCase(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009f, code lost:
    
        if (i0(r5, r6) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a6, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b0(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) == -1) {
                if (!str2.startsWith(".")) {
                }
            }
            set.add(str);
            set.add(str2);
        }
        if (!str.startsWith(".")) {
            if (str2.indexOf(64) == -1) {
                if (str2.startsWith(".")) {
                }
                set.add(str);
            }
            set.add(str2);
        }
        if (str2.indexOf(64) == -1) {
            if (str2.startsWith(".")) {
                if (!i0(str, str2) && !str.equalsIgnoreCase(str2)) {
                }
            }
        }
        set.add(str2);
    }

    @Override
    public void c(int i10) {
        if (i10 == 0) {
            this.f90742l = new HashSet();
            return;
        }
        if (i10 == 1) {
            this.f90739i = new HashSet();
            return;
        }
        if (i10 == 2) {
            this.f90738h = new HashSet();
            return;
        }
        if (i10 == 4) {
            this.f90737g = new HashSet();
            return;
        }
        if (i10 == 6) {
            this.f90740j = new HashSet();
        } else {
            if (i10 == 7) {
                this.f90741k = new HashSet();
                return;
            }
            throw new IllegalStateException("Unknown tag encountered: " + i10);
        }
    }

    public final Set c0(Set set, byte[] bArr) {
        if (set.isEmpty()) {
            if (bArr == null) {
                return set;
            }
            set.add(bArr);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.addAll(d0((byte[]) it.next(), bArr));
        }
        return hashSet;
    }

    @Override
    public void d(C13481E c13481e) throws NameConstraintValidatorException {
        int g10 = c13481e.g();
        if (g10 == 0) {
            m(this.f90736f, T.u(c13481e.x()));
            return;
        }
        if (g10 == 1) {
            k(this.f90733c, B(c13481e));
            return;
        }
        if (g10 == 2) {
            j(this.f90732b, B(c13481e));
            return;
        }
        if (g10 == 4) {
            h(C13228d.x(c13481e.x()));
        } else if (g10 == 6) {
            n(this.f90734d, B(c13481e));
        } else {
            if (g10 != 7) {
                return;
            }
            l(this.f90735e, AbstractC14551y.F(c13481e.x()).H());
        }
    }

    public final Set d0(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        boolean g10 = org.bouncycastle.util.a.g(bArr, bArr2);
        hashSet.add(bArr);
        if (!g10) {
            hashSet.add(bArr2);
        }
        return hashSet;
    }

    @Override
    public void e(H h10) {
        C13481E u10 = h10.u();
        int g10 = u10.g();
        if (g10 == 0) {
            this.f90736f = e0(this.f90736f, T.u(u10.x()));
            return;
        }
        if (g10 == 1) {
            this.f90733c = a0(this.f90733c, B(u10));
            return;
        }
        if (g10 == 2) {
            this.f90732b = Z(this.f90732b, B(u10));
            return;
        }
        if (g10 == 4) {
            this.f90731a = Y(this.f90731a, (oh.E) u10.x().r());
            return;
        }
        if (g10 == 6) {
            this.f90734d = f0(this.f90734d, B(u10));
        } else {
            if (g10 == 7) {
                this.f90735e = c0(this.f90735e, AbstractC14551y.F(u10.x()).H());
                return;
            }
            throw new IllegalStateException("Unknown tag encountered: " + u10.g());
        }
    }

    public final Set e0(Set set, T t10) {
        HashSet hashSet = set != null ? new HashSet(set) : new HashSet();
        hashSet.add(t10);
        return hashSet;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof U)) {
            return false;
        }
        U u10 = (U) obj;
        return v(u10.f90731a, this.f90731a) && v(u10.f90732b, this.f90732b) && v(u10.f90733c, this.f90733c) && v(u10.f90735e, this.f90735e) && v(u10.f90734d, this.f90734d) && v(u10.f90736f, this.f90736f) && v(u10.f90737g, this.f90737g) && v(u10.f90738h, this.f90738h) && v(u10.f90739i, this.f90739i) && v(u10.f90741k, this.f90741k) && v(u10.f90740j, this.f90740j) && v(u10.f90742l, this.f90742l);
    }

    @Override
    public void f(C13481E c13481e) throws NameConstraintValidatorException {
        int g10 = c13481e.g();
        if (g10 == 0) {
            t(this.f90742l, T.u(c13481e.x()));
            return;
        }
        if (g10 == 1) {
            r(this.f90739i, B(c13481e));
            return;
        }
        if (g10 == 2) {
            q(this.f90738h, B(c13481e));
            return;
        }
        if (g10 == 4) {
            o(C13228d.x(c13481e.x()));
        } else if (g10 == 6) {
            u(this.f90740j, B(c13481e));
        } else {
            if (g10 != 7) {
                return;
            }
            s(this.f90741k, AbstractC14551y.F(c13481e.x()).H());
        }
    }

    public final Set f0(Set set, String str) {
        if (set.isEmpty()) {
            if (str == null) {
                return set;
            }
            set.add(str);
            return set;
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            g0((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    public final void g(StringBuilder sb2, String str) {
        sb2.append(str);
        sb2.append(org.bouncycastle.util.w.f());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006c, code lost:
    
        r7.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (i0(r6.substring(r5.indexOf(64) + 1), r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        if (i0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (i0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0092, code lost:
    
        if (r6.substring(r5.indexOf(64) + 1).equalsIgnoreCase(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009f, code lost:
    
        if (i0(r5, r6) != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00a6, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
    
        if (r5.equalsIgnoreCase(r6) != false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g0(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) == -1) {
                if (!str2.startsWith(".")) {
                }
            }
            set.add(str);
            set.add(str2);
        }
        if (!str.startsWith(".")) {
            if (str2.indexOf(64) == -1) {
                if (str2.startsWith(".")) {
                }
                set.add(str);
            }
            set.add(str2);
        }
        if (str2.indexOf(64) == -1) {
            if (str2.startsWith(".")) {
                if (!i0(str, str2) && !str.equalsIgnoreCase(str2)) {
                }
            }
        }
        set.add(str2);
    }

    public void h(C13228d c13228d) throws NameConstraintValidatorException {
        i(this.f90731a, oh.E.G(c13228d));
    }

    public int hashCode() {
        return C(this.f90731a) + C(this.f90732b) + C(this.f90733c) + C(this.f90735e) + C(this.f90734d) + C(this.f90736f) + C(this.f90737g) + C(this.f90738h) + C(this.f90739i) + C(this.f90741k) + C(this.f90740j) + C(this.f90742l);
    }

    public final void i(Set set, oh.E e10) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (h0(e10, (oh.E) it.next())) {
                throw new NameConstraintValidatorException("Subject distinguished name is from an excluded subtree");
            }
        }
    }

    public final boolean i0(String str, String str2) {
        if (str2.startsWith(".")) {
            str2 = str2.substring(1);
        }
        String[] h10 = org.bouncycastle.util.w.h(str2, '.');
        String[] h11 = org.bouncycastle.util.w.h(str, '.');
        if (h11.length <= h10.length) {
            return false;
        }
        int length = h11.length - h10.length;
        for (int i10 = -1; i10 < h10.length; i10++) {
            if (i10 == -1) {
                if (h11[i10 + length].equals("")) {
                    return false;
                }
            } else if (!h10[i10].equalsIgnoreCase(h11[i10 + length])) {
                return false;
            }
        }
        return true;
    }

    public final void j(Set set, String str) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (i0(str, str2) || str.equalsIgnoreCase(str2)) {
                throw new NameConstraintValidatorException("DNS is from an excluded subtree.");
            }
        }
    }

    public final void k(Set set, String str) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (x(str, (String) it.next())) {
                throw new NameConstraintValidatorException("Email address is from an excluded subtree.");
            }
        }
    }

    public final void l(Set set, byte[] bArr) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (O(bArr, (byte[]) it.next())) {
                throw new NameConstraintValidatorException("IP is from an excluded subtree.");
            }
        }
    }

    public final void m(Set set, T t10) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (U(t10, T.u(it.next()))) {
                throw new NameConstraintValidatorException("OtherName is from an excluded subtree.");
            }
        }
    }

    public final void n(Set set, String str) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (P(str, (String) it.next())) {
                throw new NameConstraintValidatorException("URI is from an excluded subtree.");
            }
        }
    }

    public void o(C13228d c13228d) throws NameConstraintValidatorException {
        p(this.f90737g, oh.E.G(c13228d.r()));
    }

    public final void p(Set set, oh.E e10) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        if (set.isEmpty() && e10.size() == 0) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (h0(e10, (oh.E) it.next())) {
                return;
            }
        }
        throw new NameConstraintValidatorException("Subject distinguished name is not from a permitted subtree");
    }

    public final void q(Set set, String str) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (i0(str, str2) || str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("DNS is not from a permitted subtree.");
        }
    }

    public final void r(Set set, String str) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (x(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("Subject email address is not from a permitted subtree.");
        }
    }

    public final void s(Set set, byte[] bArr) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (O(bArr, (byte[]) it.next())) {
                return;
            }
        }
        if (bArr.length != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("IP is not from a permitted subtree.");
        }
    }

    public final void t(Set set, T t10) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (U(t10, T.u(it.next()))) {
                return;
            }
        }
        throw new NameConstraintValidatorException("Subject OtherName is not from a permitted subtree.");
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        g(sb2, "permitted:");
        if (this.f90737g != null) {
            g(sb2, "DN:");
            g(sb2, this.f90737g.toString());
        }
        if (this.f90738h != null) {
            g(sb2, "DNS:");
            g(sb2, this.f90738h.toString());
        }
        if (this.f90739i != null) {
            g(sb2, "Email:");
            g(sb2, this.f90739i.toString());
        }
        if (this.f90740j != null) {
            g(sb2, "URI:");
            g(sb2, this.f90740j.toString());
        }
        if (this.f90741k != null) {
            g(sb2, "IP:");
            g(sb2, W(this.f90741k));
        }
        if (this.f90742l != null) {
            g(sb2, "OtherName:");
            g(sb2, X(this.f90742l));
        }
        g(sb2, "excluded:");
        if (!this.f90731a.isEmpty()) {
            g(sb2, "DN:");
            g(sb2, this.f90731a.toString());
        }
        if (!this.f90732b.isEmpty()) {
            g(sb2, "DNS:");
            g(sb2, this.f90732b.toString());
        }
        if (!this.f90733c.isEmpty()) {
            g(sb2, "Email:");
            g(sb2, this.f90733c.toString());
        }
        if (!this.f90734d.isEmpty()) {
            g(sb2, "URI:");
            g(sb2, this.f90734d.toString());
        }
        if (!this.f90735e.isEmpty()) {
            g(sb2, "IP:");
            g(sb2, W(this.f90735e));
        }
        if (!this.f90736f.isEmpty()) {
            g(sb2, "OtherName:");
            g(sb2, X(this.f90736f));
        }
        return sb2.toString();
    }

    public final void u(Set set, String str) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (P(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("URI is not from a permitted subtree.");
        }
    }

    public final boolean v(Collection collection, Collection collection2) {
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        for (Object obj : collection) {
            Iterator it = collection2.iterator();
            while (it.hasNext()) {
                if (y(obj, it.next())) {
                    break;
                }
            }
            return false;
        }
        return true;
    }

    public final boolean x(String str, String str2) {
        String substring = str.substring(str.indexOf(64) + 1);
        if (str2.indexOf(64) != -1) {
            if (str.equalsIgnoreCase(str2) || substring.equalsIgnoreCase(str2.substring(1))) {
                return true;
            }
        } else if (str2.charAt(0) != '.') {
            if (substring.equalsIgnoreCase(str2)) {
                return true;
            }
        } else if (i0(substring, str2)) {
            return true;
        }
        return false;
    }

    public final boolean y(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? org.bouncycastle.util.a.g((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }
}
