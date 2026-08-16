package gm;

public class C13400a {

    public String f90118a;

    public String f90119b;

    public C13400a(String str, String str2) {
        this.f90118a = str;
        this.f90119b = str2;
    }

    public final int a(String str) {
        if (str == null) {
            return 1;
        }
        return str.hashCode();
    }

    public String b() {
        return this.f90118a;
    }

    public String c() {
        return this.f90119b;
    }

    public final boolean d(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null || str2 == null) {
            return false;
        }
        return str.equals(str2);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C13400a)) {
            return false;
        }
        C13400a c13400a = (C13400a) obj;
        return c13400a == this || (d(this.f90118a, c13400a.f90118a) && d(this.f90119b, c13400a.f90119b));
    }

    public int hashCode() {
        return a(this.f90118a) + (a(this.f90119b) * 31);
    }
}
