package V9;

public class k {

    public boolean f26696a;

    public boolean f26697b = false;

    public boolean f26698c = false;

    public boolean f26699d = false;

    public boolean f26700e = false;

    public boolean f26701f = false;

    public boolean a() {
        return this.f26697b;
    }

    public boolean b() {
        return this.f26696a;
    }

    public boolean c() {
        return this.f26699d;
    }

    public void d(boolean pressed) {
        this.f26696a = pressed;
    }

    public boolean e() {
        boolean z10;
        if (this.f26697b) {
            this.f26697b = false;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.f26699d) {
            this.f26699d = false;
            z10 = true;
        }
        if (this.f26696a) {
            this.f26701f = true;
            if (!this.f26697b && !this.f26698c) {
                this.f26697b = true;
                this.f26698c = true;
                this.f26700e = false;
                return true;
            }
        } else {
            this.f26698c = false;
            if (!this.f26699d && !this.f26700e && this.f26701f) {
                this.f26699d = true;
                this.f26701f = false;
                this.f26700e = true;
                return true;
            }
        }
        return z10;
    }
}
