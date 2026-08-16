package z9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.NativeTable;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import vc.C15829e;

public class C16278e {

    public final C15829e f130778a;

    public int f130779b;

    public C16278e(C15829e data, int resolution) {
        this.f130778a = data;
        this.f130779b = resolution;
    }

    public static C16278e j(C16278e table, int resolution) {
        if (table != null && table.f130779b == resolution) {
            return table;
        }
        C16278e c16278e = new C16278e(resolution);
        if (table != null) {
            synchronized (table.f130778a) {
                synchronized (c16278e.f130778a) {
                    NativeTable.a(table.f130778a.g(), table.f130779b, c16278e.f130778a.g(), resolution);
                }
            }
        } else {
            c16278e.b(0.0f);
        }
        return c16278e;
    }

    public void a() {
        C15829e c15829e = this.f130778a;
        if (c15829e != null) {
            c15829e.d();
        }
    }

    public void b(float height) {
        float E10 = Nc.b.E(0.0f, height, 1.0f);
        synchronized (this.f130778a) {
            this.f130778a.e(E10);
        }
    }

    public NativeFloatBuffer c() {
        NativeFloatBuffer g10;
        synchronized (this.f130778a) {
            g10 = this.f130778a.g();
        }
        return g10;
    }

    public float d(int x10, int y10) {
        float w10;
        if (x10 < 0) {
            throw new IndexOutOfBoundsException(x10 + " can't be < 0");
        }
        int i10 = this.f130779b;
        if (x10 >= i10) {
            throw new IndexOutOfBoundsException(x10 + " can't be >= " + this.f130779b);
        }
        if (y10 < 0) {
            throw new IndexOutOfBoundsException(y10 + " can't be < 0");
        }
        if (y10 < i10) {
            synchronized (this.f130778a) {
                w10 = this.f130778a.w(x10, y10);
            }
            return w10;
        }
        throw new IndexOutOfBoundsException(y10 + " can't be >= " + this.f130779b);
    }

    public float e(float x10, float y10) {
        int i10 = this.f130779b;
        return d((int) (x10 * (i10 - 1)), (int) (y10 * (i10 - 1)));
    }

    public float f(int x10, int y10) {
        return this.f130778a.z(x10, y10);
    }

    public int g() {
        return this.f130779b;
    }

    public void h(int x10, int y10, float height) {
        float E10 = Nc.b.E(0.0f, height, 1.0f);
        synchronized (this.f130778a) {
            this.f130778a.A(x10, y10, E10);
        }
    }

    public void i(int x10, int y10, float height) {
        this.f130778a.B(x10, y10, Nc.b.E(0.0f, height, 1.0f));
    }

    public C16278e(int resolution) {
        this.f130778a = new C15829e(resolution, resolution);
        this.f130779b = resolution;
    }
}
