package Vh;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.B;
import oh.C14522j;

public class h extends AbstractC14545v {

    public static final int f27040c = 0;

    public static final int f27041d = 1;

    public static final int f27042e = 2;

    public static final int f27043f = 3;

    public static final int f27044g = 5;

    public static final int f27045h = 6;

    public C14522j f27046b;

    public h(int i10) {
        this(new C14522j(i10));
    }

    public static h u(Object obj) {
        if (obj instanceof h) {
            return (h) obj;
        }
        if (obj != null) {
            return new h(C14522j.F(obj));
        }
        return null;
    }

    @Override
    public B r() {
        return this.f27046b;
    }

    public int v() {
        return this.f27046b.L();
    }

    public BigInteger x() {
        return this.f27046b.H();
    }

    public h(C14522j c14522j) {
        this.f27046b = c14522j;
    }
}
