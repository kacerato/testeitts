package qk;

import com.bumptech.glide.load.engine.GlideException;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
import jk.AbstractC13875e;
import jk.C13873c;
import jk.InterfaceC13874d;
import jk.f;
import jk.i;
import ki.e;
import ki.l;
import w2.C15883c;

public class C15116a {

    public static final int f108211a = 16;

    public static void A(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger[] i10 = i(bigInteger, bigInteger2);
        BigInteger[] bigIntegerArr = {i10[2], i10[3].negate()};
        BigInteger[] c10 = c(new BigInteger[]{i10[0], i10[1].negate()}, new BigInteger[]{i10[4], i10[5].negate()});
        if (!p(c10, bigInteger) && a(bigIntegerArr[0], bigIntegerArr[1])) {
            BigInteger bigInteger3 = bigIntegerArr[0];
            BigInteger bigInteger4 = bigIntegerArr[1];
            BigInteger divide = bigInteger3.add(bigInteger4.multiply(bigInteger2)).divide(bigInteger);
            BigInteger[] h10 = h(new BigInteger[]{divide.abs(), bigInteger4.abs()});
            if (h10 != null) {
                BigInteger bigInteger5 = h10[0];
                BigInteger bigInteger6 = h10[1];
                if (divide.signum() < 0) {
                    bigInteger5 = bigInteger5.negate();
                }
                if (bigInteger4.signum() > 0) {
                    bigInteger6 = bigInteger6.negate();
                }
                BigInteger subtract = divide.multiply(bigInteger5).subtract(bigInteger4.multiply(bigInteger6));
                BigInteger bigInteger7 = InterfaceC13874d.f93854b;
                if (!subtract.equals(bigInteger7)) {
                    throw new IllegalStateException();
                }
                BigInteger subtract2 = bigInteger6.multiply(bigInteger).subtract(bigInteger5.multiply(bigInteger2));
                BigInteger negate = bigInteger5.negate();
                BigInteger negate2 = subtract2.negate();
                BigInteger add = q(bigInteger.subtract(bigInteger7)).add(bigInteger7);
                BigInteger[] m10 = m(b(negate, add, bigInteger4), b(negate2, add, bigInteger3));
                if (m10 != null) {
                    for (BigInteger bigInteger8 = m10[0]; bigInteger8.compareTo(m10[1]) <= 0; bigInteger8 = bigInteger8.add(InterfaceC13874d.f93854b)) {
                        BigInteger[] bigIntegerArr2 = {subtract2.add(bigInteger8.multiply(bigInteger3)), bigInteger5.add(bigInteger8.multiply(bigInteger4))};
                        if (o(bigIntegerArr2, c10)) {
                            c10 = bigIntegerArr2;
                        }
                    }
                }
            }
        }
        BigInteger subtract3 = bigIntegerArr[0].multiply(c10[1]).subtract(bigIntegerArr[1].multiply(c10[0]));
        int bitLength = (bigInteger.bitLength() + 16) - (bigInteger.bitLength() & 7);
        BigInteger B10 = B(c10[1].shiftLeft(bitLength), subtract3);
        BigInteger negate3 = B(bigIntegerArr[1].shiftLeft(bitLength), subtract3).negate();
        z(g3.c.f88110m, "{ " + bigIntegerArr[0].toString(16) + ", " + bigIntegerArr[1].toString(16) + " }");
        z("v2", "{ " + c10[0].toString(16) + ", " + c10[1].toString(16) + " }");
        z("d", subtract3.toString(16));
        z("(OPT) g1", B10.toString(16));
        z("(OPT) g2", negate3.toString(16));
        z("(OPT) bits", Integer.toString(bitLength));
    }

    public static BigInteger B(BigInteger bigInteger, BigInteger bigInteger2) {
        boolean z10 = bigInteger.signum() != bigInteger2.signum();
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        BigInteger divide = abs.add(abs2.shiftRight(1)).divide(abs2);
        return z10 ? divide.negate() : divide;
    }

    public static BigInteger[] C(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        BigInteger s10 = s(bigInteger3.multiply(bigInteger3).subtract(bigInteger2.multiply(bigInteger4).shiftLeft(2)).mod(bigInteger), bigInteger);
        if (s10 == null) {
            throw new IllegalStateException("Solving quadratic equation failed unexpectedly");
        }
        BigInteger modInverse = bigInteger2.shiftLeft(1).modInverse(bigInteger);
        return new BigInteger[]{s10.subtract(bigInteger3).multiply(modInverse).mod(bigInteger), s10.negate().subtract(bigInteger3).multiply(modInverse).mod(bigInteger)};
    }

    public static void D(BigInteger[] bigIntegerArr) {
        BigInteger bigInteger = bigIntegerArr[0];
        bigIntegerArr[0] = bigIntegerArr[1];
        bigIntegerArr[1] = bigInteger;
    }

    public static boolean a(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.gcd(bigInteger2).equals(InterfaceC13874d.f93854b);
    }

    public static BigInteger[] b(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        return u(bigInteger.subtract(bigInteger2).divide(bigInteger3), bigInteger.add(bigInteger2).divide(bigInteger3));
    }

    public static BigInteger[] c(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        return o(bigIntegerArr, bigIntegerArr2) ? bigIntegerArr : bigIntegerArr2;
    }

    public static void d(String str) {
        l j10 = Ji.a.j(str);
        if (j10 != null || (j10 = e.b(str)) != null) {
            f(j10, str);
            return;
        }
        System.err.println("Unknown curve: " + str);
    }

    public static void e(l lVar) {
        if (lVar == null) {
            throw new NullPointerException("x9");
        }
        f(lVar, "<UNKNOWN>");
    }

    public static void f(l lVar, String str) {
        AbstractC13875e v10 = lVar.v();
        if (C13873c.o(v10)) {
            BigInteger b10 = v10.v().b();
            if (v10.r().j() && b10.mod(InterfaceC13874d.f93857e).equals(InterfaceC13874d.f93854b)) {
                System.out.println("Curve '" + str + "' has a 'GLV Type A' endomorphism with these parameters:");
                v(lVar);
            }
            if (v10.p().j() && b10.mod(InterfaceC13874d.f93856d).equals(InterfaceC13874d.f93854b)) {
                System.out.println("Curve '" + str + "' has a 'GLV Type B' endomorphism with these parameters:");
                x(lVar);
            }
        }
    }

    public static List g(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    public static BigInteger[] h(BigInteger[] bigIntegerArr) {
        boolean z10 = bigIntegerArr[0].compareTo(bigIntegerArr[1]) < 0;
        if (z10) {
            D(bigIntegerArr);
        }
        BigInteger bigInteger = bigIntegerArr[0];
        BigInteger bigInteger2 = bigIntegerArr[1];
        BigInteger bigInteger3 = InterfaceC13874d.f93854b;
        BigInteger bigInteger4 = InterfaceC13874d.f93853a;
        BigInteger bigInteger5 = bigInteger3;
        BigInteger bigInteger6 = bigInteger4;
        BigInteger bigInteger7 = bigInteger2;
        BigInteger bigInteger8 = bigInteger;
        while (bigInteger7.compareTo(InterfaceC13874d.f93854b) > 0) {
            BigInteger[] divideAndRemainder = bigInteger8.divideAndRemainder(bigInteger7);
            BigInteger bigInteger9 = divideAndRemainder[0];
            BigInteger bigInteger10 = divideAndRemainder[1];
            BigInteger subtract = bigInteger3.subtract(bigInteger9.multiply(bigInteger4));
            BigInteger subtract2 = bigInteger6.subtract(bigInteger9.multiply(bigInteger5));
            BigInteger bigInteger11 = bigInteger7;
            bigInteger7 = bigInteger10;
            bigInteger8 = bigInteger11;
            BigInteger bigInteger12 = bigInteger4;
            bigInteger4 = subtract;
            bigInteger3 = bigInteger12;
            bigInteger6 = bigInteger5;
            bigInteger5 = subtract2;
        }
        if (bigInteger7.signum() <= 0) {
            return null;
        }
        BigInteger[] bigIntegerArr2 = {bigInteger4, bigInteger5};
        if (z10) {
            D(bigIntegerArr2);
        }
        return bigIntegerArr2;
    }

    public static BigInteger[] i(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger bigInteger3 = bigInteger;
        BigInteger bigInteger4 = bigInteger2;
        BigInteger bigInteger5 = InterfaceC13874d.f93853a;
        BigInteger bigInteger6 = InterfaceC13874d.f93854b;
        while (true) {
            BigInteger[] divideAndRemainder = bigInteger3.divideAndRemainder(bigInteger4);
            BigInteger bigInteger7 = divideAndRemainder[0];
            BigInteger bigInteger8 = divideAndRemainder[1];
            BigInteger subtract = bigInteger5.subtract(bigInteger7.multiply(bigInteger6));
            if (n(bigInteger4, bigInteger)) {
                return new BigInteger[]{bigInteger3, bigInteger5, bigInteger4, bigInteger6, bigInteger8, subtract};
            }
            bigInteger3 = bigInteger4;
            bigInteger5 = bigInteger6;
            bigInteger4 = bigInteger8;
            bigInteger6 = subtract;
        }
    }

    public static f[] j(AbstractC13875e abstractC13875e) {
        BigInteger modPow;
        BigInteger b10 = abstractC13875e.v().b();
        BigInteger divide = b10.divide(InterfaceC13874d.f93856d);
        SecureRandom secureRandom = new SecureRandom();
        do {
            BigInteger bigInteger = InterfaceC13874d.f93855c;
            modPow = org.bouncycastle.util.b.g(bigInteger, b10.subtract(bigInteger), secureRandom).modPow(divide, b10);
        } while (modPow.equals(InterfaceC13874d.f93854b));
        f o10 = abstractC13875e.o(modPow);
        return new f[]{o10, o10.p()};
    }

    public static f[] k(AbstractC13875e abstractC13875e) {
        f o10 = abstractC13875e.o(InterfaceC13874d.f93854b).n().o();
        if (o10 != null) {
            return new f[]{o10, o10.n()};
        }
        throw new IllegalStateException("Calculation of non-trivial order-4  field elements failed unexpectedly");
    }

    public static BigInteger l(BigInteger bigInteger, BigInteger bigInteger2) {
        for (int i10 = 2; i10 < 1000; i10++) {
            BigInteger valueOf = BigInteger.valueOf(i10);
            if (!valueOf.modPow(bigInteger2, bigInteger).equals(InterfaceC13874d.f93854b)) {
                return valueOf;
            }
        }
        throw new IllegalStateException();
    }

    public static BigInteger[] m(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        BigInteger max = bigIntegerArr[0].max(bigIntegerArr2[0]);
        BigInteger min = bigIntegerArr[1].min(bigIntegerArr2[1]);
        if (max.compareTo(min) > 0) {
            return null;
        }
        return new BigInteger[]{max, min};
    }

    public static boolean n(BigInteger bigInteger, BigInteger bigInteger2) {
        BigInteger abs = bigInteger.abs();
        BigInteger abs2 = bigInteger2.abs();
        int bitLength = abs2.bitLength();
        int bitLength2 = abs.bitLength() * 2;
        return bitLength2 + (-1) <= bitLength && (bitLength2 < bitLength || abs.multiply(abs).compareTo(abs2) < 0);
    }

    public static boolean o(BigInteger[] bigIntegerArr, BigInteger[] bigIntegerArr2) {
        BigInteger abs = bigIntegerArr[0].abs();
        BigInteger abs2 = bigIntegerArr[1].abs();
        BigInteger abs3 = bigIntegerArr2[0].abs();
        BigInteger abs4 = bigIntegerArr2[1].abs();
        boolean z10 = abs.compareTo(abs3) < 0;
        return z10 == (abs2.compareTo(abs4) < 0) ? z10 : abs.multiply(abs).add(abs2.multiply(abs2)).compareTo(abs3.multiply(abs3).add(abs4.multiply(abs4))) < 0;
    }

    public static boolean p(BigInteger[] bigIntegerArr, BigInteger bigInteger) {
        return n(bigIntegerArr[0].abs().max(bigIntegerArr[1].abs()), bigInteger);
    }

    public static BigInteger q(BigInteger bigInteger) {
        BigInteger shiftRight = bigInteger.shiftRight(bigInteger.bitLength() / 2);
        while (true) {
            BigInteger shiftRight2 = shiftRight.add(bigInteger.divide(shiftRight)).shiftRight(1);
            if (shiftRight2.equals(shiftRight)) {
                return shiftRight2;
            }
            shiftRight = shiftRight2;
        }
    }

    public static void r(String[] strArr) {
        if (strArr.length > 0) {
            for (String str : strArr) {
                d(str);
            }
            return;
        }
        TreeSet treeSet = new TreeSet(g(e.g()));
        treeSet.addAll(g(Ji.a.o()));
        Iterator<E> it = treeSet.iterator();
        while (it.hasNext()) {
            d((String) it.next());
        }
    }

    public static BigInteger s(BigInteger bigInteger, BigInteger bigInteger2) {
        if (!bigInteger2.testBit(0)) {
            throw new IllegalStateException();
        }
        BigInteger bigInteger3 = InterfaceC13874d.f93854b;
        BigInteger shiftRight = bigInteger2.subtract(bigInteger3).shiftRight(1);
        if (!bigInteger.modPow(shiftRight, bigInteger2).equals(bigInteger3)) {
            return null;
        }
        BigInteger bigInteger4 = shiftRight;
        while (!bigInteger4.testBit(0)) {
            bigInteger4 = bigInteger4.shiftRight(1);
            if (!bigInteger.modPow(bigInteger4, bigInteger2).equals(InterfaceC13874d.f93854b)) {
                return t(bigInteger, bigInteger4, bigInteger2, shiftRight);
            }
        }
        return bigInteger.modPow(bigInteger4.add(InterfaceC13874d.f93854b).shiftRight(1), bigInteger2);
    }

    public static BigInteger t(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        BigInteger l10 = l(bigInteger3, bigInteger4);
        BigInteger bigInteger5 = bigInteger4;
        while (!bigInteger2.testBit(0)) {
            bigInteger2 = bigInteger2.shiftRight(1);
            bigInteger5 = bigInteger5.shiftRight(1);
            if (!bigInteger.modPow(bigInteger2, bigInteger3).equals(l10.modPow(bigInteger5, bigInteger3))) {
                bigInteger5 = bigInteger5.add(bigInteger4);
            }
        }
        return bigInteger.modInverse(bigInteger3).modPow(bigInteger2.subtract(InterfaceC13874d.f93854b).shiftRight(1), bigInteger3).multiply(l10.modPow(bigInteger5.shiftRight(1), bigInteger3)).mod(bigInteger3);
    }

    public static BigInteger[] u(BigInteger bigInteger, BigInteger bigInteger2) {
        return bigInteger.compareTo(bigInteger2) <= 0 ? new BigInteger[]{bigInteger, bigInteger2} : new BigInteger[]{bigInteger2, bigInteger};
    }

    public static void v(l lVar) {
        BigInteger C10 = lVar.C();
        BigInteger bigInteger = InterfaceC13874d.f93854b;
        BigInteger[] C11 = C(C10, bigInteger, InterfaceC13874d.f93853a, bigInteger);
        f[] k10 = k(lVar.v());
        w(lVar, C11[0], k10);
        System.out.println("OR");
        w(lVar, C11[1], k10);
    }

    public static void w(l lVar, BigInteger bigInteger, f[] fVarArr) {
        i B10 = lVar.z().B();
        i B11 = B10.z(bigInteger).B();
        if (!B10.q().n().equals(B11.q())) {
            throw new IllegalStateException("Derivation of GLV Type A parameters failed unexpectedly");
        }
        f fVar = fVarArr[0];
        if (!B10.r().k(fVar).equals(B11.r())) {
            fVar = fVarArr[1];
            if (!B10.r().k(fVar).equals(B11.r())) {
                throw new IllegalStateException("Derivation of GLV Type A parameters failed unexpectedly");
            }
        }
        z("Point map", "lambda * (x, y) = (-x, i * y)");
        z("i", fVar.v().toString(16));
        z("lambda", bigInteger.toString(16));
        A(lVar.C(), bigInteger);
    }

    public static void x(l lVar) {
        BigInteger C10 = lVar.C();
        BigInteger bigInteger = InterfaceC13874d.f93854b;
        BigInteger[] C11 = C(C10, bigInteger, bigInteger, bigInteger);
        f[] j10 = j(lVar.v());
        y(lVar, C11[0], j10);
        System.out.println("OR");
        y(lVar, C11[1], j10);
    }

    public static void y(l lVar, BigInteger bigInteger, f[] fVarArr) {
        i B10 = lVar.z().B();
        i B11 = B10.z(bigInteger).B();
        if (!B10.r().equals(B11.r())) {
            throw new IllegalStateException("Derivation of GLV Type B parameters failed unexpectedly");
        }
        f fVar = fVarArr[0];
        if (!B10.q().k(fVar).equals(B11.q())) {
            fVar = fVarArr[1];
            if (!B10.q().k(fVar).equals(B11.q())) {
                throw new IllegalStateException("Derivation of GLV Type B parameters failed unexpectedly");
            }
        }
        z("Point map", "lambda * (x, y) = (beta * x, y)");
        z("beta", fVar.v().toString(16));
        z("lambda", bigInteger.toString(16));
        A(lVar.C(), bigInteger);
    }

    public static void z(String str, Object obj) {
        StringBuffer stringBuffer = new StringBuffer(GlideException.a.f59088e);
        stringBuffer.append(str);
        while (stringBuffer.length() < 20) {
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(": ");
        stringBuffer.append(obj.toString());
        System.out.println(stringBuffer.toString());
    }
}
