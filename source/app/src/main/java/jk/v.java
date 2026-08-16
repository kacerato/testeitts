package jk;

import java.math.BigInteger;

public class v {

    public static final long f93940c = 1;

    public final BigInteger f93941a;

    public final int f93942b;

    public v(BigInteger bigInteger, int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("scale may not be negative");
        }
        this.f93941a = bigInteger;
        this.f93942b = i10;
    }

    public static v j(BigInteger bigInteger, int i10) {
        return new v(bigInteger.shiftLeft(i10), i10);
    }

    public v a(BigInteger bigInteger) {
        return new v(this.f93941a.add(bigInteger.shiftLeft(this.f93942b)), this.f93942b);
    }

    public v b(v vVar) {
        d(vVar);
        return new v(this.f93941a.add(vVar.f93941a), this.f93942b);
    }

    public v c(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("scale may not be negative");
        }
        int i11 = this.f93942b;
        return i10 == i11 ? this : new v(this.f93941a.shiftLeft(i10 - i11), i10);
    }

    public final void d(v vVar) {
        if (this.f93942b != vVar.f93942b) {
            throw new IllegalArgumentException("Only SimpleBigDecimal of same scale allowed in arithmetic operations");
        }
    }

    public int e(BigInteger bigInteger) {
        return this.f93941a.compareTo(bigInteger.shiftLeft(this.f93942b));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        return this.f93941a.equals(vVar.f93941a) && this.f93942b == vVar.f93942b;
    }

    public int f(v vVar) {
        d(vVar);
        return this.f93941a.compareTo(vVar.f93941a);
    }

    public v g(BigInteger bigInteger) {
        return new v(this.f93941a.divide(bigInteger), this.f93942b);
    }

    public v h(v vVar) {
        d(vVar);
        return new v(this.f93941a.shiftLeft(this.f93942b).divide(vVar.f93941a), this.f93942b);
    }

    public int hashCode() {
        return this.f93941a.hashCode() ^ this.f93942b;
    }

    public BigInteger i() {
        return this.f93941a.shiftRight(this.f93942b);
    }

    public int k() {
        return this.f93942b;
    }

    public int l() {
        return i().intValue();
    }

    public long m() {
        return i().longValue();
    }

    public v n(BigInteger bigInteger) {
        return new v(this.f93941a.multiply(bigInteger), this.f93942b);
    }

    public v o(v vVar) {
        d(vVar);
        BigInteger multiply = this.f93941a.multiply(vVar.f93941a);
        int i10 = this.f93942b;
        return new v(multiply, i10 + i10);
    }

    public v p() {
        return new v(this.f93941a.negate(), this.f93942b);
    }

    public BigInteger q() {
        return b(new v(InterfaceC13874d.f93854b, 1).c(this.f93942b)).i();
    }

    public v r(int i10) {
        return new v(this.f93941a.shiftLeft(i10), this.f93942b);
    }

    public v s(BigInteger bigInteger) {
        return new v(this.f93941a.subtract(bigInteger.shiftLeft(this.f93942b)), this.f93942b);
    }

    public v t(v vVar) {
        return b(vVar.p());
    }

    public String toString() {
        if (this.f93942b == 0) {
            return this.f93941a.toString();
        }
        BigInteger i10 = i();
        BigInteger subtract = this.f93941a.subtract(i10.shiftLeft(this.f93942b));
        if (this.f93941a.signum() == -1) {
            subtract = InterfaceC13874d.f93854b.shiftLeft(this.f93942b).subtract(subtract);
        }
        if (i10.signum() == -1 && !subtract.equals(InterfaceC13874d.f93853a)) {
            i10 = i10.add(InterfaceC13874d.f93854b);
        }
        String bigInteger = i10.toString();
        char[] cArr = new char[this.f93942b];
        String bigInteger2 = subtract.toString(2);
        int length = bigInteger2.length();
        int i11 = this.f93942b - length;
        for (int i12 = 0; i12 < i11; i12++) {
            cArr[i12] = '0';
        }
        for (int i13 = 0; i13 < length; i13++) {
            cArr[i11 + i13] = bigInteger2.charAt(i13);
        }
        String str = new String(cArr);
        StringBuffer stringBuffer = new StringBuffer(bigInteger);
        stringBuffer.append(".");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }
}
