package org.bouncycastle.pqc.crypto.lms;

import java.util.HashMap;
import java.util.Map;
import oh.C14549x;
import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;

public class j {

    public static final int f102168h = 0;

    public static final j f102169i;

    public static final j f102170j;

    public static final j f102171k;

    public static final j f102172l;

    public static final j f102173m;

    public static final j f102174n;

    public static final j f102175o;

    public static final j f102176p;

    public static final j f102177q;

    public static final j f102178r;

    public static final j f102179s;

    public static final j f102180t;

    public static final j f102181u;

    public static final j f102182v;

    public static final j f102183w;

    public static final j f102184x;

    public static final Map<Object, j> f102185y;

    public final int f102186a;

    public final int f102187b;

    public final int f102188c;

    public final int f102189d;

    public final int f102190e;

    public final int f102191f;

    public final C14549x f102192g;

    public class a extends HashMap<Object, j> {
        public a() {
            j jVar = j.f102169i;
            put(Integer.valueOf(jVar.f102186a), jVar);
            j jVar2 = j.f102170j;
            put(Integer.valueOf(jVar2.f102186a), jVar2);
            j jVar3 = j.f102171k;
            put(Integer.valueOf(jVar3.f102186a), jVar3);
            j jVar4 = j.f102172l;
            put(Integer.valueOf(jVar4.f102186a), jVar4);
            j jVar5 = j.f102173m;
            put(Integer.valueOf(jVar5.f102186a), jVar5);
            j jVar6 = j.f102174n;
            put(Integer.valueOf(jVar6.f102186a), jVar6);
            j jVar7 = j.f102175o;
            put(Integer.valueOf(jVar7.f102186a), jVar7);
            j jVar8 = j.f102176p;
            put(Integer.valueOf(jVar8.f102186a), jVar8);
            j jVar9 = j.f102177q;
            put(Integer.valueOf(jVar9.f102186a), jVar9);
            j jVar10 = j.f102178r;
            put(Integer.valueOf(jVar10.f102186a), jVar10);
            j jVar11 = j.f102179s;
            put(Integer.valueOf(jVar11.f102186a), jVar11);
            j jVar12 = j.f102180t;
            put(Integer.valueOf(jVar12.f102186a), jVar12);
            j jVar13 = j.f102181u;
            put(Integer.valueOf(jVar13.f102186a), jVar13);
            j jVar14 = j.f102182v;
            put(Integer.valueOf(jVar14.f102186a), jVar14);
            j jVar15 = j.f102183w;
            put(Integer.valueOf(jVar15.f102186a), jVar15);
            j jVar16 = j.f102184x;
            put(Integer.valueOf(jVar16.f102186a), jVar16);
        }
    }

    static {
        C14549x c14549x = Sh.d.f23337c;
        f102169i = new j(1, 32, 1, 265, 7, 8516, c14549x);
        f102170j = new j(2, 32, 2, 133, 6, 4292, c14549x);
        f102171k = new j(3, 32, 4, 67, 4, 2180, c14549x);
        f102172l = new j(4, 32, 8, 34, 0, ParserBasicInformation.START_STATE, c14549x);
        f102173m = new j(5, 24, 1, 200, 8, 5436, c14549x);
        f102174n = new j(6, 24, 2, 101, 6, 2940, c14549x);
        f102175o = new j(7, 24, 4, 51, 4, 1500, c14549x);
        f102176p = new j(8, 24, 8, 26, 0, 1020, c14549x);
        C14549x c14549x2 = Sh.d.f23368t;
        f102177q = new j(9, 32, 1, 265, 7, 8516, c14549x2);
        f102178r = new j(10, 32, 2, 133, 6, 4292, c14549x2);
        f102179s = new j(11, 32, 4, 67, 4, 2180, c14549x2);
        f102180t = new j(12, 32, 8, 34, 0, ParserBasicInformation.START_STATE, c14549x2);
        f102181u = new j(13, 24, 1, 200, 8, 5436, c14549x2);
        f102182v = new j(14, 24, 2, 101, 6, 2940, c14549x2);
        f102183w = new j(15, 24, 4, 51, 4, 1500, c14549x2);
        f102184x = new j(16, 24, 8, 26, 0, 1020, c14549x2);
        f102185y = new a();
    }

    public j(int i10, int i11, int i12, int i13, int i14, int i15, C14549x c14549x) {
        this.f102186a = i10;
        this.f102187b = i11;
        this.f102188c = i12;
        this.f102189d = i13;
        this.f102190e = i14;
        this.f102191f = i15;
        this.f102192g = c14549x;
    }

    public static j f(int i10) {
        return f102185y.get(Integer.valueOf(i10));
    }

    public C14549x b() {
        return this.f102192g;
    }

    public int c() {
        return this.f102190e;
    }

    public int d() {
        return this.f102187b;
    }

    public int e() {
        return this.f102189d;
    }

    public int g() {
        return this.f102191f;
    }

    public int h() {
        return this.f102186a;
    }

    public int i() {
        return this.f102188c;
    }
}
