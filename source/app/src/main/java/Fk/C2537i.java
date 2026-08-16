package Fk;

import oh.AbstractC14545v;
import oh.InterfaceC14514f;
import oh.K0;

public class C2537i extends AbstractC14545v implements InterfaceC14514f {

    public static final int f7102d = 0;

    public static final int f7103e = 1;

    public static final int f7104f = 2;

    public static final int f7105g = 3;

    public static final int f7106h = 4;

    public static final int f7107i = 5;

    public static final int f7108j = 6;

    public final int f7109b;

    public final s0 f7110c;

    public C2537i(int i10, s0 s0Var) {
        this.f7109b = i10;
        this.f7110c = s0Var;
    }

    public static C2537i A(s0 s0Var) {
        return new C2537i(3, s0Var);
    }

    public static C2537i B(s0 s0Var) {
        return new C2537i(2, s0Var);
    }

    public static C2537i C(s0 s0Var) {
        return new C2537i(5, s0Var);
    }

    public static C2537i D(s0 s0Var) {
        return new C2537i(6, s0Var);
    }

    public static C2537i w(Object obj) {
        if (obj instanceof C2537i) {
            return (C2537i) obj;
        }
        if (obj != null) {
            return new C2537i(oh.M.S(obj, 128));
        }
        return null;
    }

    public static C2537i x(s0 s0Var) {
        return new C2537i(4, s0Var);
    }

    public static C2537i y(s0 s0Var) {
        return new C2537i(0, s0Var);
    }

    public static C2537i z(s0 s0Var) {
        return new C2537i(1, s0Var);
    }

    @Override
    public oh.B r() {
        return new K0(this.f7109b, this.f7110c);
    }

    public String toString() {
        StringBuilder sb2;
        String str;
        switch (this.f7109b) {
            case 0:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = "uS";
                break;
            case 1:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = "mS";
                break;
            case 2:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = " seconds";
                break;
            case 3:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = " minute";
                break;
            case 4:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = " hours";
                break;
            case 5:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = " sixty hours";
                break;
            case 6:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = " years";
                break;
            default:
                sb2 = new StringBuilder();
                sb2.append((Object) this.f7110c.f7190b);
                str = " unknown choice";
                break;
        }
        sb2.append(str);
        return sb2.toString();
    }

    public int u() {
        return this.f7109b;
    }

    public s0 v() {
        return this.f7110c;
    }

    public C2537i(oh.M m10) {
        int g10 = m10.g();
        this.f7109b = g10;
        switch (g10) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                try {
                    this.f7110c = s0.w(m10.O());
                    return;
                } catch (Exception e10) {
                    throw new IllegalStateException(e10.getMessage(), e10);
                }
            default:
                throw new IllegalArgumentException("invalid choice value " + g10);
        }
    }
}
