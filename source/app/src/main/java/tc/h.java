package tc;

import JAVARuntime.Screen;
import JAVARuntime.Touch;
import androidx.annotation.NonNull;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import java.util.concurrent.atomic.AtomicBoolean;
import z5.C16261a;
import z5.InterfaceC16267g;

public class h {

    public float f117319o;

    public Touch f117321q;

    public final Vector2 f117305a = new Vector2(-1.0f);

    public final Vector2 f117306b = new Vector2();

    public final Vector2 f117307c = new Vector2();

    public final Vector2 f117308d = new Vector2();

    public boolean f117309e = false;

    public final AtomicBoolean f117310f = new AtomicBoolean();

    public final AtomicBoolean f117311g = new AtomicBoolean();

    public final AtomicBoolean f117312h = new AtomicBoolean();

    public final AtomicBoolean f117313i = new AtomicBoolean();

    public final AtomicBoolean f117314j = new AtomicBoolean();

    public boolean f117315k = false;

    public boolean f117316l = false;

    public boolean f117317m = false;

    public boolean f117318n = false;

    public final Vector2 f117320p = new Vector2();

    public void A(boolean longPressed) {
        this.f117313i.set(longPressed);
    }

    public void B(boolean longSetted) {
        this.f117317m = longSetted;
    }

    public void C(float x10, float y10) {
        Vector2 vector2 = this.f117305a;
        vector2.f79838x = x10;
        vector2.f79839y = y10;
    }

    public void D(float x10, float y10) {
        Vector2 vector2 = this.f117306b;
        vector2.f79838x = x10;
        vector2.f79839y = y10;
    }

    public void E(Vector2 v10) {
        this.f117306b.f79838x = v10.getX();
        this.f117306b.f79839y = v10.getY();
    }

    public void F(boolean pressed) {
        this.f117311g.set(pressed);
    }

    public void G(float x10, float y10) {
        Vector2 vector2 = this.f117307c;
        vector2.f79838x = x10;
        vector2.f79839y = y10;
    }

    public void H(Vector2 v10) {
        Vector2 vector2 = this.f117307c;
        vector2.f79838x = v10.f79838x;
        vector2.f79839y = v10.f79839y;
    }

    public void I(boolean slided) {
        this.f117309e = slided;
    }

    public void J(boolean up) {
        this.f117314j.set(up);
    }

    public void K(boolean upSetted) {
        this.f117316l = upSetted;
    }

    public Touch L() {
        Touch touch = this.f117321q;
        if (touch != null) {
            return touch;
        }
        Touch touch2 = new Touch(this);
        this.f117321q = touch2;
        return touch2;
    }

    public Vector2 a() {
        return this.f117308d;
    }

    public Vector2 b() {
        return c(new Vector2());
    }

    public Vector2 c(Vector2 out) {
        InterfaceC16267g interfaceC16267g = C16261a.f130673m0;
        if (interfaceC16267g == null) {
            out.x0(this.f117306b);
            return out;
        }
        if (!interfaceC16267g.isVisible()) {
            out.w0(0.0f, 0.0f);
            return out;
        }
        o4.f a10 = C16261a.f130673m0.a();
        int e10 = (int) (a10.e() * K8.c.b());
        int f10 = (int) (a10.f() * K8.c.a());
        out.x0(this.f117306b);
        out.f79838x -= e10;
        out.f79839y -= f10;
        return out;
    }

    public Vector2 d() {
        return e(new Vector2());
    }

    public Vector2 e(Vector2 out) {
        InterfaceC16267g interfaceC16267g = C16261a.f130673m0;
        if (interfaceC16267g == null) {
            out.x0(this.f117306b);
            out.f79838x /= Screen.getWidth();
            out.f79839y /= Screen.getHeight();
            return out;
        }
        if (!interfaceC16267g.isVisible()) {
            out.w0(0.0f, 0.0f);
            return out;
        }
        o4.f a10 = C16261a.f130673m0.a();
        int e10 = (int) (a10.e() * K8.c.b());
        int f10 = (int) (a10.f() * K8.c.a());
        int d10 = (int) (a10.d() * K8.c.b());
        int c10 = (int) (a10.c() * K8.c.a());
        out.x0(this.f117306b);
        float f11 = out.f79838x - e10;
        float f12 = out.f79839y - f10;
        out.f79838x = f11 / d10;
        out.f79839y = f12 / c10;
        return out;
    }

    public Vector2 f() {
        return this.f117305a;
    }

    public Vector2 g() {
        if (this.f117306b.O(-1.0f, -1.0f)) {
            throw new RuntimeException("Attempting to retrieve the position of a touch that is not on the screen");
        }
        Vector2 vector2 = (Vector2) JP.acquire(Vector2.class);
        vector2.x0(this.f117306b);
        return vector2;
    }

    public Vector2 h(Vector2 out) {
        if (this.f117306b.O(-1.0f, -1.0f)) {
            throw new RuntimeException("Attempting to retrieve the position of a touch that is not on the screen");
        }
        if (out == null) {
            out = (Vector2) JP.acquire(Vector2.class);
        }
        out.x0(this.f117306b);
        return out;
    }

    public Vector2 i() {
        this.f117320p.x0(this.f117307c);
        return this.f117320p;
    }

    public Vector2 j(Vector2 out) {
        out.x0(this.f117307c);
        return out;
    }

    public boolean k() {
        return this.f117310f.get();
    }

    public boolean l() {
        return this.f117315k;
    }

    public boolean m() {
        return this.f117312h.get();
    }

    public boolean n() {
        return this.f117313i.get();
    }

    public boolean o() {
        return this.f117317m;
    }

    public boolean p() {
        return this.f117318n;
    }

    public boolean q() {
        return this.f117311g.get();
    }

    public boolean r() {
        return (k() || q()) ? false : true;
    }

    public boolean s() {
        return this.f117309e;
    }

    public boolean t() {
        return this.f117314j.get();
    }

    @NonNull
    public String toString() {
        return "down:" + k() + " pressed:" + q() + " up:" + t() + " pos:" + this.f117306b.toString(2);
    }

    public boolean u() {
        return this.f117316l;
    }

    public void v(boolean down) {
        this.f117310f.set(down);
    }

    public void w(Vector2 position) {
        this.f117308d.x0(position);
    }

    public void x(boolean downSetted) {
        this.f117315k = downSetted;
    }

    public void y(boolean mouse) {
        this.f117318n = mouse;
    }

    public void z(boolean longDown) {
        this.f117312h.set(longDown);
    }
}
