package fc;

import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import ub.p;

public class C13205b {

    public p f86159a;

    public final ColorINT f86160b;

    public int f86161c;

    public int f86162d;

    public int f86163e;

    public int f86164f;

    public int f86165g;

    public C13205b() {
        this.f86160b = new ColorINT();
        this.f86163e = 1;
        this.f86164f = 1;
        this.f86165g = 0;
    }

    public ColorINT a() {
        return this.f86160b;
    }

    public int b() {
        return this.f86164f;
    }

    public int c() {
        return this.f86165g;
    }

    public p d() {
        return this.f86159a;
    }

    public int e() {
        return this.f86163e;
    }

    public int f() {
        return this.f86161c;
    }

    public int g() {
        return this.f86162d;
    }

    public void h(ColorINT colorINT) {
        this.f86160b.K(colorINT);
    }

    public void i(int h10) {
        this.f86164f = h10;
    }

    public void j(int layer) {
        this.f86165g = layer;
    }

    public void k(int x10, int y10, int w10, int h10) {
        this.f86161c = x10;
        this.f86162d = y10;
        this.f86163e = w10;
        this.f86164f = h10;
    }

    public void l(p texture) {
        this.f86159a = texture;
    }

    public void m(int w10) {
        this.f86163e = w10;
    }

    public void n(int x10) {
        this.f86161c = x10;
    }

    public void o(int y10) {
        this.f86162d = y10;
    }

    public C13205b(p texture, int x10, int y10, int w10, int h10) {
        this.f86160b = new ColorINT();
        this.f86165g = 0;
        this.f86159a = texture;
        this.f86161c = x10;
        this.f86162d = y10;
        this.f86163e = w10;
        this.f86164f = h10;
    }
}
