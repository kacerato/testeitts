package c7;

import Ic.C2634m;

@Deprecated
public class C4160c extends C2634m {

    public InterfaceC4159b f34424b;

    public float f34425c;

    public C4160c(InterfaceC4159b callbacks) {
        this.f34424b = callbacks;
        C4161d.a(this);
    }

    public void destroy() {
        this.f34425c = 0.05f;
    }

    public float e() {
        return this.f34425c;
    }

    public C4160c h(float timer) {
        this.f34425c = timer;
        return this;
    }

    public void i(float timer) {
        this.f34425c = timer;
    }
}
