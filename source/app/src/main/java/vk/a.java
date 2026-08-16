package Vk;

import b3.s;
import em.h;
import fi.C13227c;
import fi.C13228d;
import gi.e;
import hi.C13481E;
import hi.H;
import hi.O;
import hi.T;
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
import oh.E;
import org.bouncycastle.asn1.x509.NameConstraintValidatorException;
import org.bouncycastle.util.k;
import org.bouncycastle.util.w;
import org.openjdk.tools.doclint.DocLint;

public class a implements O {

    public Set f27140a = new HashSet();

    public Set f27141b = new HashSet();

    public Set f27142c = new HashSet();

    public Set f27143d = new HashSet();

    public Set f27144e = new HashSet();

    public Set f27145f = new HashSet();

    public Set f27146g;

    public Set f27147h;

    public Set f27148i;

    public Set f27149j;

    public Set f27150k;

    public Set f27151l;

    private byte[][] A(byte[] bArr, byte[] bArr2) {
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

    private String B(C13481E c13481e) {
        return AbstractC14536q.F(c13481e.x()).getString();
    }

    private int C(Collection collection) {
        int i10 = 0;
        if (collection == null) {
            return 0;
        }
        for (Object obj : collection) {
            i10 += obj instanceof byte[] ? org.bouncycastle.util.a.t0((byte[]) obj) : obj.hashCode();
        }
        return i10;
    }

    private Set D(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            E G10 = E.G(((H) it.next()).u().x().r());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    E e10 = (E) it2.next();
                    if (g0(G10, e10)) {
                        hashSet.add(G10);
                    } else if (g0(e10, G10)) {
                        hashSet.add(e10);
                    }
                }
            } else if (G10 != null) {
                hashSet.add(G10);
            }
        }
        return hashSet;
    }

    private Set E(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String B10 = B(((H) it.next()).u());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    if (h0(str, B10)) {
                        hashSet.add(str);
                    } else if (h0(B10, str)) {
                        hashSet.add(B10);
                    }
                }
            } else if (B10 != null) {
                hashSet.add(B10);
            }
        }
        return hashSet;
    }

    private Set F(Set set, Set set2) {
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

    private void G(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!h0(substring, str2)) {
                    return;
                }
            } else if (!substring.equalsIgnoreCase(str2)) {
                return;
            }
        } else {
            if (str.startsWith(".")) {
                if (str2.indexOf(64) != -1) {
                    if (!h0(str2.substring(str.indexOf(64) + 1), str)) {
                        return;
                    }
                } else if (str2.startsWith(".")) {
                    if (!h0(str, str2) && !str.equalsIgnoreCase(str2)) {
                        if (!h0(str2, str)) {
                            return;
                        }
                    }
                } else if (!h0(str2, str)) {
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
                if (!h0(str, str2)) {
                    return;
                }
            } else if (!str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        set.add(str);
    }

    private Set H(Set set, Set set2) {
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

    private Set I(byte[] bArr, byte[] bArr2) {
        if (bArr.length != bArr2.length) {
            return Collections.EMPTY_SET;
        }
        byte[][] A10 = A(bArr, bArr2);
        byte[] bArr3 = A10[0];
        byte[] bArr4 = A10[1];
        byte[] bArr5 = A10[2];
        byte[] bArr6 = A10[3];
        byte[][] R10 = R(bArr3, bArr4, bArr5, bArr6);
        return w(P(R10[0], R10[2]), Q(R10[1], R10[3])) == 1 ? Collections.EMPTY_SET : Collections.singleton(M(S(R10[0], R10[2]), S(bArr4, bArr6)));
    }

    private Set J(Set set, Set set2) {
        HashSet hashSet = new HashSet(set);
        hashSet.retainAll(set2);
        return hashSet;
    }

    private Set K(Set set, Set set2) {
        HashSet hashSet = new HashSet();
        Iterator it = set2.iterator();
        while (it.hasNext()) {
            String B10 = B(((H) it.next()).u());
            if (set != null) {
                Iterator it2 = set.iterator();
                while (it2.hasNext()) {
                    L((String) it2.next(), B10, hashSet);
                }
            } else if (B10 != null) {
                hashSet.add(B10);
            }
        }
        return hashSet;
    }

    private void L(String str, String str2, Set set) {
        if (str.indexOf(64) != -1) {
            String substring = str.substring(str.indexOf(64) + 1);
            if (str2.indexOf(64) != -1) {
                if (!str.equalsIgnoreCase(str2)) {
                    return;
                }
            } else if (str2.startsWith(".")) {
                if (!h0(substring, str2)) {
                    return;
                }
            } else if (!substring.equalsIgnoreCase(str2)) {
                return;
            }
        } else {
            if (str.startsWith(".")) {
                if (str2.indexOf(64) != -1) {
                    if (!h0(str2.substring(str.indexOf(64) + 1), str)) {
                        return;
                    }
                } else if (str2.startsWith(".")) {
                    if (!h0(str, str2) && !str.equalsIgnoreCase(str2)) {
                        if (!h0(str2, str)) {
                            return;
                        }
                    }
                } else if (!h0(str2, str)) {
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
                if (!h0(str, str2)) {
                    return;
                }
            } else if (!str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        set.add(str);
    }

    private byte[] M(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length * 2];
        System.arraycopy(bArr, 0, bArr3, 0, length);
        System.arraycopy(bArr2, 0, bArr3, length, length);
        return bArr3;
    }

    private boolean N(byte[] bArr, byte[] bArr2) {
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

    private boolean O(String str, String str2) {
        String z10 = z(str);
        return !str2.startsWith(".") ? z10.equalsIgnoreCase(str2) : h0(z10, str2);
    }

    private static byte[] P(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if ((bArr[i10] & 65535) > (65535 & bArr2[i10])) {
                return bArr;
            }
        }
        return bArr2;
    }

    private static byte[] Q(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr.length; i10++) {
            if ((bArr[i10] & 65535) < (65535 & bArr2[i10])) {
                return bArr;
            }
        }
        return bArr2;
    }

    private byte[][] R(byte[] bArr, byte[] bArr2, byte[] bArr3, byte[] bArr4) {
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

    private static byte[] S(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int i10 = 0; i10 < bArr.length; i10++) {
            bArr3[i10] = (byte) (bArr[i10] | bArr2[i10]);
        }
        return bArr3;
    }

    private boolean T(T t10, T t11) {
        return t11.equals(t10);
    }

    private String U(byte[] bArr) {
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

    private String V(Set set) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (sb2.length() > 1) {
                sb2.append(DocLint.SEPARATOR);
            }
            sb2.append(U((byte[]) it.next()));
        }
        sb2.append("]");
        return sb2.toString();
    }

    private String W(Set set) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("[");
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (sb2.length() > 1) {
                sb2.append(DocLint.SEPARATOR);
            }
            T u10 = T.u(it.next());
            sb2.append(u10.v().J());
            sb2.append(s.f32937c);
            try {
                sb2.append(h.j(u10.x().r().getEncoded()));
            } catch (IOException e10) {
                sb2.append(e10.toString());
            }
        }
        sb2.append("]");
        return sb2.toString();
    }

    private Set X(Set set, E e10) {
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
            E e11 = (E) it.next();
            if (g0(e10, e11)) {
                hashSet.add(e11);
            } else {
                if (!g0(e11, e10)) {
                    hashSet.add(e11);
                }
                hashSet.add(e10);
            }
        }
        return hashSet;
    }

    private Set Y(Set set, String str) {
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
            if (!h0(str2, str)) {
                boolean h02 = h0(str, str2);
                hashSet.add(str2);
                if (h02) {
                }
            }
            hashSet.add(str);
        }
        return hashSet;
    }

    private Set Z(Set set, String str) {
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
            a0((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006c, code lost:
    
        r7.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (h0(r6.substring(r5.indexOf(64) + 1), r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        if (h0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (h0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0092, code lost:
    
        if (r6.substring(r5.indexOf(64) + 1).equalsIgnoreCase(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009f, code lost:
    
        if (h0(r5, r6) != false) goto L35;
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
    private void a0(String str, String str2, Set set) {
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
                if (!h0(str, str2) && !str.equalsIgnoreCase(str2)) {
                }
            }
        }
        set.add(str2);
    }

    private Set b0(Set set, byte[] bArr) {
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
            hashSet.addAll(c0((byte[]) it.next(), bArr));
        }
        return hashSet;
    }

    private Set c0(byte[] bArr, byte[] bArr2) {
        HashSet hashSet = new HashSet();
        boolean g10 = org.bouncycastle.util.a.g(bArr, bArr2);
        hashSet.add(bArr);
        if (!g10) {
            hashSet.add(bArr2);
        }
        return hashSet;
    }

    private Set d0(Set set, T t10) {
        HashSet hashSet = new HashSet(set);
        hashSet.add(t10);
        return hashSet;
    }

    private Set e0(Set set, String str) {
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
            f0((String) it.next(), str, hashSet);
        }
        return hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x006c, code lost:
    
        r7.add(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x00a9, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0050, code lost:
    
        if (h0(r6.substring(r5.indexOf(64) + 1), r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x006a, code lost:
    
        if (h0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007b, code lost:
    
        if (h0(r6, r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0092, code lost:
    
        if (r6.substring(r5.indexOf(64) + 1).equalsIgnoreCase(r5) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009f, code lost:
    
        if (h0(r5, r6) != false) goto L35;
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
    private void f0(String str, String str2, Set set) {
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
                if (!h0(str, str2) && !str.equalsIgnoreCase(str2)) {
                }
            }
        }
        set.add(str2);
    }

    private final void g(StringBuilder sb2, String str) {
        sb2.append(str);
        sb2.append(w.f());
    }

    private static boolean g0(E e10, E e11) {
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
            if (C13227c.y(e10.I(i10)).equals(y10)) {
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
            if (y11.size() == 1 && y11.x().v().A(e.f89981G)) {
                if (!y12.x().x().toString().startsWith(y11.x().x().toString())) {
                    return false;
                }
            } else if (!gi.d.p(y11, y12)) {
                return false;
            }
        }
        return true;
    }

    private boolean h0(String str, String str2) {
        if (str2.startsWith(".")) {
            str2 = str2.substring(1);
        }
        String[] h10 = w.h(str2, '.');
        String[] h11 = w.h(str, '.');
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

    private void i(Set set, E e10) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (g0(e10, (E) it.next())) {
                throw new NameConstraintValidatorException("Subject distinguished name is from an excluded subtree");
            }
        }
    }

    private void j(Set set, String str) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (h0(str, str2) || str.equalsIgnoreCase(str2)) {
                throw new NameConstraintValidatorException("DNS is from an excluded subtree.");
            }
        }
    }

    private void k(Set set, String str) throws NameConstraintValidatorException {
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

    private void l(Set set, byte[] bArr) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (N(bArr, (byte[]) it.next())) {
                throw new NameConstraintValidatorException("IP is from an excluded subtree.");
            }
        }
    }

    private void m(Set set, T t10) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (T(t10, T.u(it.next()))) {
                throw new NameConstraintValidatorException("OtherName is from an excluded subtree.");
            }
        }
    }

    private void n(Set set, String str) throws NameConstraintValidatorException {
        if (set.isEmpty()) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (O(str, (String) it.next())) {
                throw new NameConstraintValidatorException("URI is from an excluded subtree.");
            }
        }
    }

    private void p(Set set, E e10) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        if (set.isEmpty() && e10.size() == 0) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (g0(e10, (E) it.next())) {
                return;
            }
        }
        throw new NameConstraintValidatorException("Subject distinguished name is not from a permitted subtree");
    }

    private void q(Set set, String str) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            if (h0(str, str2) || str.equalsIgnoreCase(str2)) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("DNS is not from a permitted subtree.");
        }
    }

    private void r(Set set, String str) throws NameConstraintValidatorException {
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

    private void s(Set set, byte[] bArr) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (N(bArr, (byte[]) it.next())) {
                return;
            }
        }
        if (bArr.length != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("IP is not from a permitted subtree.");
        }
    }

    private void t(Set set, T t10) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (T(t10, (T) it.next())) {
                return;
            }
        }
        throw new NameConstraintValidatorException("Subject OtherName is not from a permitted subtree.");
    }

    private void u(Set set, String str) throws NameConstraintValidatorException {
        if (set == null) {
            return;
        }
        Iterator it = set.iterator();
        while (it.hasNext()) {
            if (O(str, (String) it.next())) {
                return;
            }
        }
        if (str.length() != 0 || set.size() != 0) {
            throw new NameConstraintValidatorException("URI is not from a permitted subtree.");
        }
    }

    private boolean v(Collection collection, Collection collection2) {
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

    private static int w(byte[] bArr, byte[] bArr2) {
        if (org.bouncycastle.util.a.g(bArr, bArr2)) {
            return 0;
        }
        return org.bouncycastle.util.a.g(P(bArr, bArr2), bArr) ? 1 : -1;
    }

    private boolean x(String str, String str2) {
        String substring = str.substring(str.indexOf(64) + 1);
        if (str2.indexOf(64) != -1) {
            if (str.equalsIgnoreCase(str2) || substring.equalsIgnoreCase(str2.substring(1))) {
                return true;
            }
        } else if (str2.charAt(0) != '.') {
            if (substring.equalsIgnoreCase(str2)) {
                return true;
            }
        } else if (h0(substring, str2)) {
            return true;
        }
        return false;
    }

    private boolean y(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? org.bouncycastle.util.a.g((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }

    private static String z(String str) {
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

    @Override
    public void a(H h10) {
        b(new H[]{h10});
    }

    @Override
    public void b(H[] hArr) {
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 != hArr.length; i10++) {
            H h10 = hArr[i10];
            Integer j10 = k.j(h10.u().g());
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
                this.f27151l = J(this.f27151l, (Set) entry.getValue());
            } else if (intValue == 1) {
                this.f27148i = F(this.f27148i, (Set) entry.getValue());
            } else if (intValue == 2) {
                this.f27147h = E(this.f27147h, (Set) entry.getValue());
            } else if (intValue == 4) {
                this.f27146g = D(this.f27146g, (Set) entry.getValue());
            } else if (intValue == 6) {
                this.f27149j = K(this.f27149j, (Set) entry.getValue());
            } else {
                if (intValue != 7) {
                    throw new IllegalStateException("Unknown tag encountered: " + intValue);
                }
                this.f27150k = H(this.f27150k, (Set) entry.getValue());
            }
        }
    }

    @Override
    public void c(int i10) {
        if (i10 == 0) {
            this.f27151l = new HashSet();
            return;
        }
        if (i10 == 1) {
            this.f27148i = new HashSet();
            return;
        }
        if (i10 == 2) {
            this.f27147h = new HashSet();
            return;
        }
        if (i10 == 4) {
            this.f27146g = new HashSet();
            return;
        }
        if (i10 == 6) {
            this.f27149j = new HashSet();
        } else {
            if (i10 == 7) {
                this.f27150k = new HashSet();
                return;
            }
            throw new IllegalStateException("Unknown tag encountered: " + i10);
        }
    }

    @Override
    public void d(C13481E c13481e) throws NameConstraintValidatorException {
        int g10 = c13481e.g();
        if (g10 == 0) {
            m(this.f27145f, T.u(c13481e.x()));
            return;
        }
        if (g10 == 1) {
            k(this.f27142c, B(c13481e));
            return;
        }
        if (g10 == 2) {
            j(this.f27141b, AbstractC14536q.F(c13481e.x()).getString());
            return;
        }
        if (g10 == 4) {
            h(C13228d.x(c13481e.x()));
            return;
        }
        if (g10 == 6) {
            n(this.f27143d, AbstractC14536q.F(c13481e.x()).getString());
        } else {
            if (g10 != 7) {
                return;
            }
            l(this.f27144e, AbstractC14551y.F(c13481e.x()).H());
        }
    }

    @Override
    public void e(H h10) {
        C13481E u10 = h10.u();
        int g10 = u10.g();
        if (g10 == 0) {
            this.f27145f = d0(this.f27145f, T.u(u10.x()));
            return;
        }
        if (g10 == 1) {
            this.f27142c = Z(this.f27142c, B(u10));
            return;
        }
        if (g10 == 2) {
            this.f27141b = Y(this.f27141b, B(u10));
            return;
        }
        if (g10 == 4) {
            this.f27140a = X(this.f27140a, (E) u10.x().r());
            return;
        }
        if (g10 == 6) {
            this.f27143d = e0(this.f27143d, B(u10));
        } else {
            if (g10 == 7) {
                this.f27144e = b0(this.f27144e, AbstractC14551y.F(u10.x()).H());
                return;
            }
            throw new IllegalStateException("Unknown tag encountered: " + u10.g());
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return v(aVar.f27140a, this.f27140a) && v(aVar.f27141b, this.f27141b) && v(aVar.f27142c, this.f27142c) && v(aVar.f27144e, this.f27144e) && v(aVar.f27143d, this.f27143d) && v(aVar.f27145f, this.f27145f) && v(aVar.f27146g, this.f27146g) && v(aVar.f27147h, this.f27147h) && v(aVar.f27148i, this.f27148i) && v(aVar.f27150k, this.f27150k) && v(aVar.f27149j, this.f27149j) && v(aVar.f27151l, this.f27151l);
    }

    @Override
    public void f(C13481E c13481e) throws NameConstraintValidatorException {
        int g10 = c13481e.g();
        if (g10 == 0) {
            t(this.f27151l, T.u(c13481e.x()));
            return;
        }
        if (g10 == 1) {
            r(this.f27148i, B(c13481e));
            return;
        }
        if (g10 == 2) {
            q(this.f27147h, AbstractC14536q.F(c13481e.x()).getString());
            return;
        }
        if (g10 == 4) {
            o(C13228d.x(c13481e.x()));
            return;
        }
        if (g10 == 6) {
            u(this.f27149j, AbstractC14536q.F(c13481e.x()).getString());
        } else {
            if (g10 != 7) {
                return;
            }
            s(this.f27150k, AbstractC14551y.F(c13481e.x()).H());
        }
    }

    public void h(C13228d c13228d) throws NameConstraintValidatorException {
        i(this.f27140a, E.G(c13228d));
    }

    public int hashCode() {
        return C(this.f27140a) + C(this.f27141b) + C(this.f27142c) + C(this.f27144e) + C(this.f27143d) + C(this.f27145f) + C(this.f27146g) + C(this.f27147h) + C(this.f27148i) + C(this.f27150k) + C(this.f27149j) + C(this.f27151l);
    }

    public void o(C13228d c13228d) throws NameConstraintValidatorException {
        p(this.f27146g, E.G(c13228d.r()));
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        g(sb2, "permitted:");
        if (this.f27146g != null) {
            g(sb2, "DN:");
            g(sb2, this.f27146g.toString());
        }
        if (this.f27147h != null) {
            g(sb2, "DNS:");
            g(sb2, this.f27147h.toString());
        }
        if (this.f27148i != null) {
            g(sb2, "Email:");
            g(sb2, this.f27148i.toString());
        }
        if (this.f27149j != null) {
            g(sb2, "URI:");
            g(sb2, this.f27149j.toString());
        }
        if (this.f27150k != null) {
            g(sb2, "IP:");
            g(sb2, V(this.f27150k));
        }
        if (this.f27151l != null) {
            g(sb2, "OtherName:");
            g(sb2, W(this.f27151l));
        }
        g(sb2, "excluded:");
        if (!this.f27140a.isEmpty()) {
            g(sb2, "DN:");
            g(sb2, this.f27140a.toString());
        }
        if (!this.f27141b.isEmpty()) {
            g(sb2, "DNS:");
            g(sb2, this.f27141b.toString());
        }
        if (!this.f27142c.isEmpty()) {
            g(sb2, "Email:");
            g(sb2, this.f27142c.toString());
        }
        if (!this.f27143d.isEmpty()) {
            g(sb2, "URI:");
            g(sb2, this.f27143d.toString());
        }
        if (!this.f27144e.isEmpty()) {
            g(sb2, "IP:");
            g(sb2, V(this.f27144e));
        }
        if (!this.f27145f.isEmpty()) {
            g(sb2, "OtherName:");
            g(sb2, W(this.f27145f));
        }
        return sb2.toString();
    }
}
