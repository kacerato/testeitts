package th;

import java.math.BigInteger;
import oh.AbstractC14545v;
import oh.C14539s;

public class K extends AbstractC14545v {

    public static final int f117508c = 0;

    public static final int f117509d = 1;

    public static final int f117510e = 2;

    public static final int f117511f = 3;

    public static final int f117512g = 4;

    public static final int f117513h = 5;

    public static final int f117514i = 6;

    public static final K f117515j = new K(0);

    public static final K f117516k = new K(1);

    public static final K f117517l = new K(2);

    public static final K f117518m = new K(3);

    public static final K f117519n = new K(4);

    public static final K f117520o = new K(5);

    public static final K f117521p = new K(6);

    public final C14539s f117522b;

    public K(int i10) {
        this(new C14539s(i10));
    }

    public static K u(Object obj) {
        if (obj instanceof K) {
            return (K) obj;
        }
        if (obj != null) {
            return new K(C14539s.F(obj));
        }
        return null;
    }

    @Override
    public oh.B r() {
        return this.f117522b;
    }

    public BigInteger v() {
        return this.f117522b.I();
    }

    public K(C14539s c14539s) {
        this.f117522b = c14539s;
    }
}
