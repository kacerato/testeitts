package xd;

public class C16088h {

    public static final int f128107d = -1;

    public int f128108a = -1;

    public int f128109b = -1;

    public int f128110c = -1;

    public boolean a() {
        return this.f128109b != -1;
    }

    public boolean b() {
        return this.f128110c != -1;
    }

    public boolean c() {
        return this.f128108a != -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C16088h)) {
            return false;
        }
        C16088h c16088h = (C16088h) obj;
        return this.f128108a == c16088h.f128108a && this.f128110c == c16088h.f128110c && this.f128109b == c16088h.f128109b;
    }

    public int hashCode() {
        return (((this.f128108a * 31) + this.f128110c) * 31) + this.f128109b;
    }
}
