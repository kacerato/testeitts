package J4;

public abstract class e {

    public d f10257a;

    public void a() {
        l();
        this.f10257a.I1();
        this.f10257a = null;
    }

    public abstract String b();

    public String c() {
        return "Custom command";
    }

    public void d(byte message) {
        j("" + ((int) message));
    }

    public void e(char message) {
        j("" + message);
    }

    public void f(double message) {
        j("" + message);
    }

    public void g(float message) {
        j("" + message);
    }

    public void h(int message) {
        j("" + message);
    }

    public void i(long message) {
        j("" + message);
    }

    public void j(String m10) {
        l();
        this.f10257a.A1(m10);
    }

    public void k(short message) {
        j("" + ((int) message));
    }

    public final void l() {
        if (this.f10257a == null) {
            throw new IllegalStateException("command was terminated!");
        }
    }

    public void m(String command) {
    }

    public void n(String[] args, d terminal) {
        this.f10257a = terminal;
    }
}
