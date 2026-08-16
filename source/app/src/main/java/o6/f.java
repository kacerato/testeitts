package o6;

public class f {

    public String f98580a;

    public Object f98581b;

    public double f98582c;

    public int f98583d;

    public boolean f98584e = false;

    public f(String name, Object type) {
        i(name, type);
    }

    public void a(int amount) {
        this.f98583d += amount;
    }

    public void b(long elapsedNanos) {
        this.f98582c += elapsedNanos / 1000000.0d;
    }

    public int c() {
        return this.f98583d;
    }

    public double d() {
        return this.f98582c;
    }

    public String e() {
        return this.f98580a;
    }

    public Object f() {
        return this.f98581b;
    }

    public boolean g() {
        return this.f98584e;
    }

    public void h() {
    }

    public void i(String name, Object type) {
        this.f98580a = name;
        this.f98581b = type;
        this.f98582c = 0.0d;
        this.f98583d = 0;
        this.f98584e = false;
    }

    public void j(boolean UIOpen) {
        this.f98584e = UIOpen;
    }
}
