package Oi;

import Bi.C2371c;
import Bi.EnumC2383o;
import Bi.InterfaceC2372d;
import Xi.C3335c;
import Xi.C3367s0;
import Xi.C3369t0;
import Xi.u0;
import android.view.KeyEvent;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.PrintStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.security.SecureRandom;
import java.util.Vector;
import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

public class E implements InterfaceC2372d {

    public static int[] f20131h = {3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, KeyEvent.KEYCODE_SYSTEM_NAVIGATION_DOWN, KeyEvent.KEYCODE_SYSTEM_NAVIGATION_RIGHT, 293, 307, 311, 313, TypedValues.AttributesType.TYPE_EASING, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, ParserBasicInformation.NUM_NON_TERMINALS, 401, HttpURLConnection.HTTP_CONFLICT, 419, TypedValues.CycleType.TYPE_WAVE_SHAPE, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557};

    public static final BigInteger f20132i = BigInteger.valueOf(1);

    public C3367s0 f20133g;

    public static Vector c(int i10) {
        Vector vector = new Vector(i10);
        for (int i11 = 0; i11 != i10; i11++) {
            vector.addElement(BigInteger.valueOf(f20131h[i11]));
        }
        return vector;
    }

    public static BigInteger d(int i10, int i11, SecureRandom secureRandom) {
        BigInteger h10;
        do {
            h10 = org.bouncycastle.util.b.h(i10, i11, secureRandom);
        } while (h10.bitLength() != i10);
        return h10;
    }

    public static int e(SecureRandom secureRandom, int i10) {
        int nextInt;
        int i11;
        if (((-i10) & i10) == i10) {
            return (int) ((i10 * (secureRandom.nextInt() & Integer.MAX_VALUE)) >> 31);
        }
        do {
            nextInt = secureRandom.nextInt() & Integer.MAX_VALUE;
            i11 = nextInt % i10;
        } while ((nextInt - i11) + (i10 - 1) < 0);
        return i11;
    }

    public static Vector f(Vector vector, SecureRandom secureRandom) {
        Vector vector2 = new Vector();
        Vector vector3 = new Vector();
        for (int i10 = 0; i10 < vector.size(); i10++) {
            vector3.addElement(vector.elementAt(i10));
        }
        vector2.addElement(vector3.elementAt(0));
        while (true) {
            vector3.removeElementAt(0);
            if (vector3.size() == 0) {
                return vector2;
            }
            vector2.insertElementAt(vector3.elementAt(0), e(secureRandom, vector2.size() + 1));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0206, code lost:
    
        r21 = r0;
        r11 = r25;
        r3 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x020c, code lost:
    
        r25 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x020e, code lost:
    
        r1 = r24;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public C2371c a() {
        long j10;
        BigInteger d10;
        BigInteger add;
        BigInteger d11;
        BigInteger bigInteger;
        BigInteger bigInteger2;
        BigInteger add2;
        BigInteger bigInteger3;
        BigInteger multiply;
        BigInteger bigInteger4;
        BigInteger bigInteger5;
        BigInteger bigInteger6;
        BigInteger bigInteger7;
        BigInteger bigInteger8;
        BigInteger bigInteger9;
        BigInteger bigInteger10;
        int i10;
        BigInteger bigInteger11;
        BigInteger bigInteger12;
        BigInteger bigInteger13;
        PrintStream printStream;
        StringBuilder sb2;
        String str;
        long j11;
        BigInteger h10;
        SecureRandom secureRandom;
        SecureRandom secureRandom2;
        int i11;
        BigInteger bigInteger14;
        BigInteger bigInteger15;
        int i12;
        int b10 = this.f20133g.b();
        SecureRandom a10 = this.f20133g.a();
        int c10 = this.f20133g.c();
        boolean e10 = this.f20133g.e();
        if (e10) {
            System.out.println("Fetching first " + this.f20133g.d() + " primes.");
        }
        Vector f10 = f(c(this.f20133g.d()), a10);
        BigInteger bigInteger16 = f20132i;
        BigInteger bigInteger17 = bigInteger16;
        for (int i13 = 0; i13 < f10.size() / 2; i13++) {
            bigInteger17 = bigInteger17.multiply((BigInteger) f10.elementAt(i13));
        }
        for (int size = f10.size() / 2; size < f10.size(); size++) {
            bigInteger16 = bigInteger16.multiply((BigInteger) f10.elementAt(size));
        }
        BigInteger multiply2 = bigInteger17.multiply(bigInteger16);
        int bitLength = (((b10 - multiply2.bitLength()) - 48) / 2) + 1;
        BigInteger d12 = d(bitLength, c10, a10);
        BigInteger d13 = d(bitLength, c10, a10);
        if (e10) {
            System.out.println("generating p and q");
        }
        BigInteger shiftLeft = d12.multiply(bigInteger17).shiftLeft(1);
        BigInteger shiftLeft2 = d13.multiply(bigInteger16).shiftLeft(1);
        long j12 = 0;
        while (true) {
            j10 = j12 + 1;
            d10 = d(24, c10, a10);
            add = d10.multiply(shiftLeft).add(f20132i);
            if (add.isProbablePrime(c10)) {
                while (true) {
                    do {
                        d11 = d(24, c10, a10);
                    } while (d10.equals(d11));
                    BigInteger multiply3 = d11.multiply(shiftLeft2);
                    bigInteger = shiftLeft2;
                    bigInteger2 = f20132i;
                    add2 = multiply3.add(bigInteger2);
                    if (add2.isProbablePrime(c10)) {
                        break;
                    }
                    shiftLeft2 = bigInteger;
                    shiftLeft = shiftLeft;
                }
                bigInteger3 = shiftLeft;
                if (org.bouncycastle.util.b.p(d10.multiply(d11), multiply2)) {
                    multiply = add.multiply(add2);
                    bigInteger4 = d13;
                    if (multiply.bitLength() >= b10) {
                        break;
                    }
                    int i14 = b10;
                    secureRandom2 = a10;
                    i11 = c10;
                    bigInteger14 = d12;
                    bigInteger15 = bigInteger4;
                    if (e10) {
                        PrintStream printStream2 = System.out;
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("key size too small. Should be ");
                        i12 = i14;
                        sb3.append(i12);
                        sb3.append(" but is actually ");
                        sb3.append(add.multiply(add2).bitLength());
                        printStream2.println(sb3.toString());
                    } else {
                        i12 = i14;
                    }
                } else {
                    i12 = b10;
                    secureRandom2 = a10;
                    i11 = c10;
                    bigInteger15 = d13;
                    bigInteger14 = d12;
                }
            } else {
                secureRandom2 = a10;
                i11 = c10;
                bigInteger = shiftLeft2;
                bigInteger3 = shiftLeft;
                bigInteger14 = d12;
                i12 = b10;
                bigInteger15 = d13;
            }
            d13 = bigInteger15;
            b10 = i12;
            d12 = bigInteger14;
            j12 = j10;
            shiftLeft2 = bigInteger;
            shiftLeft = bigInteger3;
            a10 = secureRandom2;
            c10 = i11;
        }
        if (e10) {
            bigInteger6 = d12;
            bigInteger5 = d11;
            System.out.println("needed " + j10 + " tries to generate p and q.");
        } else {
            bigInteger5 = d11;
            bigInteger6 = d12;
        }
        BigInteger multiply4 = add.subtract(bigInteger2).multiply(add2.subtract(bigInteger2));
        if (e10) {
            System.out.println("generating g");
        }
        long j13 = 0;
        while (true) {
            Vector vector = new Vector();
            bigInteger7 = add2;
            int i15 = 0;
            while (i15 != f10.size()) {
                BigInteger divide = multiply4.divide((BigInteger) f10.elementAt(i15));
                while (true) {
                    j11 = j13 + 1;
                    h10 = org.bouncycastle.util.b.h(b10, c10, a10);
                    secureRandom = a10;
                    if (h10.modPow(divide, multiply).equals(f20132i)) {
                        j13 = j11;
                        a10 = secureRandom;
                    }
                }
                vector.addElement(h10);
                i15++;
                j13 = j11;
                a10 = secureRandom;
            }
            SecureRandom secureRandom3 = a10;
            bigInteger8 = f20132i;
            int i16 = 0;
            while (i16 < f10.size()) {
                bigInteger8 = bigInteger8.multiply(((BigInteger) vector.elementAt(i16)).modPow(multiply2.divide((BigInteger) f10.elementAt(i16)), multiply)).mod(multiply);
                i16++;
                c10 = c10;
            }
            int i17 = c10;
            int i18 = 0;
            while (true) {
                if (i18 >= f10.size()) {
                    BigInteger modPow = bigInteger8.modPow(multiply4.divide(BigInteger.valueOf(4L)), multiply);
                    BigInteger bigInteger18 = f20132i;
                    if (!modPow.equals(bigInteger18)) {
                        if (!bigInteger8.modPow(multiply4.divide(d10), multiply).equals(bigInteger18)) {
                            bigInteger9 = bigInteger5;
                            if (!bigInteger8.modPow(multiply4.divide(bigInteger9), multiply).equals(bigInteger18)) {
                                bigInteger10 = bigInteger6;
                                if (!bigInteger8.modPow(multiply4.divide(bigInteger10), multiply).equals(bigInteger18)) {
                                    i10 = b10;
                                    bigInteger11 = bigInteger4;
                                    if (!bigInteger8.modPow(multiply4.divide(bigInteger11), multiply).equals(bigInteger18)) {
                                        break;
                                    }
                                    if (e10) {
                                        PrintStream printStream3 = System.out;
                                        StringBuilder sb4 = new StringBuilder();
                                        bigInteger13 = multiply4;
                                        sb4.append("g has order phi(n)/b\n g: ");
                                        sb4.append((Object) bigInteger8);
                                        printStream3.println(sb4.toString());
                                    } else {
                                        bigInteger13 = multiply4;
                                    }
                                } else {
                                    if (e10) {
                                        PrintStream printStream4 = System.out;
                                        StringBuilder sb5 = new StringBuilder();
                                        i10 = b10;
                                        sb5.append("g has order phi(n)/a\n g: ");
                                        sb5.append((Object) bigInteger8);
                                        printStream4.println(sb5.toString());
                                    } else {
                                        i10 = b10;
                                    }
                                    bigInteger13 = multiply4;
                                }
                            } else {
                                if (e10) {
                                    System.out.println("g has order phi(n)/q'\n g: " + ((Object) bigInteger8));
                                }
                                bigInteger13 = multiply4;
                                bigInteger10 = bigInteger6;
                            }
                        } else if (e10) {
                            printStream = System.out;
                            sb2 = new StringBuilder();
                            str = "g has order phi(n)/p'\n g: ";
                            sb2.append(str);
                            sb2.append((Object) bigInteger8);
                            printStream.println(sb2.toString());
                        }
                    } else if (e10) {
                        printStream = System.out;
                        sb2 = new StringBuilder();
                        str = "g has order phi(n)/4\n g:";
                        sb2.append(str);
                        sb2.append((Object) bigInteger8);
                        printStream.println(sb2.toString());
                    }
                } else if (!bigInteger8.modPow(multiply4.divide((BigInteger) f10.elementAt(i18)), multiply).equals(f20132i)) {
                    i18++;
                } else if (e10) {
                    System.out.println("g has order phi(n)/" + f10.elementAt(i18) + "\n g: " + ((Object) bigInteger8));
                }
            }
            bigInteger4 = bigInteger11;
            bigInteger5 = bigInteger9;
            multiply4 = bigInteger13;
            b10 = i10;
            a10 = secureRandom3;
            c10 = i17;
            bigInteger6 = bigInteger10;
            add2 = bigInteger7;
        }
        BigInteger bigInteger19 = multiply4;
        if (e10) {
            PrintStream printStream5 = System.out;
            printStream5.println("needed " + j13 + " tries to generate g");
            printStream5.println();
            printStream5.println("found new NaccacheStern cipher variables:");
            printStream5.println("smallPrimes: " + ((Object) f10));
            printStream5.println("sigma:...... " + ((Object) multiply2) + " (" + multiply2.bitLength() + " bits)");
            StringBuilder sb6 = new StringBuilder();
            sb6.append("a:.......... ");
            sb6.append((Object) bigInteger10);
            printStream5.println(sb6.toString());
            printStream5.println("b:.......... " + ((Object) bigInteger11));
            printStream5.println("p':......... " + ((Object) d10));
            printStream5.println("q':......... " + ((Object) bigInteger9));
            printStream5.println("p:.......... " + ((Object) add));
            printStream5.println("q:.......... " + ((Object) bigInteger7));
            printStream5.println("n:.......... " + ((Object) multiply));
            StringBuilder sb7 = new StringBuilder();
            sb7.append("phi(n):..... ");
            bigInteger12 = bigInteger19;
            sb7.append((Object) bigInteger12);
            printStream5.println(sb7.toString());
            printStream5.println("g:.......... " + ((Object) bigInteger8));
            printStream5.println();
        } else {
            bigInteger12 = bigInteger19;
        }
        return new C2371c((C3335c) new C3369t0(false, bigInteger8, multiply, multiply2.bitLength()), (C3335c) new u0(bigInteger8, multiply, multiply2.bitLength(), f10, bigInteger12));
    }

    @Override
    public void b(Bi.G g10) {
        this.f20133g = (C3367s0) g10;
        Bi.r.a(new Hi.c("NaccacheStern KeyGen", Hi.b.c(g10.b()), g10, EnumC2383o.KEYGEN));
    }
}
