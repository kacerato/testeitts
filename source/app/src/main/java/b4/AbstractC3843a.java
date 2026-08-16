package b4;

public abstract class AbstractC3843a {

    public volatile float f32942b;

    public InterfaceC3845c f32944d;

    public volatile String f32941a = "";

    public volatile String f32943c = "";

    public AbstractC3843a() {
        C3844b.e(this);
    }

    public void a(String message, String subMessage, float progress01) {
        this.f32941a = message;
        this.f32943c = subMessage;
        this.f32942b = progress01;
        InterfaceC3845c interfaceC3845c = this.f32944d;
        if (interfaceC3845c != null) {
            interfaceC3845c.update();
        }
    }

    public abstract void b();

    public String c() {
        return this.f32941a;
    }

    public float d() {
        return this.f32942b;
    }

    public String e() {
        return this.f32943c;
    }

    public abstract void f();

    public void g(String message) {
        this.f32941a = message;
    }

    public void h(float progress01) {
        this.f32942b = progress01;
    }

    public void i(String subMessage) {
        this.f32943c = subMessage;
    }
}
