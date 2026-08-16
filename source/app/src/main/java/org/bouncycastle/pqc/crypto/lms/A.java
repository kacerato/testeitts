package org.bouncycastle.pqc.crypto.lms;

import java.util.HashMap;
import java.util.Map;
import oh.C14549x;

public class A {

    public static final A f102112e;

    public static final A f102113f;

    public static final A f102114g;

    public static final A f102115h;

    public static final A f102116i;

    public static final A f102117j;

    public static final A f102118k;

    public static final A f102119l;

    public static final A f102120m;

    public static final A f102121n;

    public static final A f102122o;

    public static final A f102123p;

    public static final A f102124q;

    public static final A f102125r;

    public static final A f102126s;

    public static final A f102127t;

    public static final A f102128u;

    public static final A f102129v;

    public static final A f102130w;

    public static final A f102131x;

    public static Map<Object, A> f102132y;

    public final int f102133a;

    public final int f102134b;

    public final int f102135c;

    public final C14549x f102136d;

    public class a extends HashMap<Object, A> {
        public a() {
            A a10 = A.f102112e;
            put(Integer.valueOf(a10.f102133a), a10);
            A a11 = A.f102113f;
            put(Integer.valueOf(a11.f102133a), a11);
            A a12 = A.f102114g;
            put(Integer.valueOf(a12.f102133a), a12);
            A a13 = A.f102115h;
            put(Integer.valueOf(a13.f102133a), a13);
            A a14 = A.f102116i;
            put(Integer.valueOf(a14.f102133a), a14);
            A a15 = A.f102117j;
            put(Integer.valueOf(a15.f102133a), a15);
            A a16 = A.f102118k;
            put(Integer.valueOf(a16.f102133a), a16);
            A a17 = A.f102119l;
            put(Integer.valueOf(a17.f102133a), a17);
            A a18 = A.f102120m;
            put(Integer.valueOf(a18.f102133a), a18);
            A a19 = A.f102121n;
            put(Integer.valueOf(a19.f102133a), a19);
            A a20 = A.f102122o;
            put(Integer.valueOf(a20.f102133a), a20);
            A a21 = A.f102123p;
            put(Integer.valueOf(a21.f102133a), a21);
            A a22 = A.f102124q;
            put(Integer.valueOf(a22.f102133a), a22);
            A a23 = A.f102125r;
            put(Integer.valueOf(a23.f102133a), a23);
            A a24 = A.f102126s;
            put(Integer.valueOf(a24.f102133a), a24);
            A a25 = A.f102127t;
            put(Integer.valueOf(a25.f102133a), a25);
            A a26 = A.f102128u;
            put(Integer.valueOf(a26.f102133a), a26);
            A a27 = A.f102129v;
            put(Integer.valueOf(a27.f102133a), a27);
            A a28 = A.f102130w;
            put(Integer.valueOf(a28.f102133a), a28);
            A a29 = A.f102131x;
            put(Integer.valueOf(a29.f102133a), a29);
        }
    }

    static {
        C14549x c14549x = Sh.d.f23337c;
        f102112e = new A(5, 32, 5, c14549x);
        f102113f = new A(6, 32, 10, c14549x);
        f102114g = new A(7, 32, 15, c14549x);
        f102115h = new A(8, 32, 20, c14549x);
        f102116i = new A(9, 32, 25, c14549x);
        f102117j = new A(10, 24, 5, c14549x);
        f102118k = new A(11, 24, 10, c14549x);
        f102119l = new A(12, 24, 15, c14549x);
        f102120m = new A(13, 24, 20, c14549x);
        f102121n = new A(14, 24, 25, c14549x);
        C14549x c14549x2 = Sh.d.f23368t;
        f102122o = new A(15, 32, 5, c14549x2);
        f102123p = new A(16, 32, 10, c14549x2);
        f102124q = new A(17, 32, 15, c14549x2);
        f102125r = new A(18, 32, 20, c14549x2);
        f102126s = new A(19, 32, 25, c14549x2);
        f102127t = new A(20, 24, 5, c14549x2);
        f102128u = new A(21, 24, 10, c14549x2);
        f102129v = new A(22, 24, 15, c14549x2);
        f102130w = new A(23, 24, 20, c14549x2);
        f102131x = new A(24, 24, 25, c14549x2);
        f102132y = new a();
    }

    public A(int i10, int i11, int i12, C14549x c14549x) {
        this.f102133a = i10;
        this.f102134b = i11;
        this.f102135c = i12;
        this.f102136d = c14549x;
    }

    public static A e(int i10) {
        return f102132y.get(Integer.valueOf(i10));
    }

    public C14549x b() {
        return this.f102136d;
    }

    public int c() {
        return this.f102135c;
    }

    public int d() {
        return this.f102134b;
    }

    public int f() {
        return this.f102133a;
    }
}
