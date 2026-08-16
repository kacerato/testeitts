package x9;

import Ac.b;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import z9.C16278e;

public class C16061a {

    public b f128019a;

    public C16278e f128020b;

    public final List<C2202a> f128021c = new SteppedArrayList();

    public static class C2202a {

        public int f128022a;

        public int f128023b;

        public float f128024c;

        public C2202a(int x10, int y10, float v10) {
            this.f128022a = x10;
            this.f128023b = y10;
            this.f128024c = v10;
        }
    }

    public C16061a(b guid) {
        this.f128019a = guid.clone();
    }

    public boolean a(b guid) {
        return this.f128019a.Y(guid);
    }

    public void b() {
        C16278e c16278e = this.f128020b;
        if (c16278e != null) {
            c16278e.a();
        }
    }

    public NativeFloatBuffer c() {
        C16278e c16278e = this.f128020b;
        if (c16278e != null) {
            return c16278e.c();
        }
        return null;
    }

    public b d() {
        return this.f128019a;
    }

    public float e(int x10, int y10) {
        C16278e c16278e = this.f128020b;
        if (c16278e == null || c16278e.g() <= x10 || this.f128020b.g() <= y10) {
            return 0.0f;
        }
        return this.f128020b.f(x10, y10);
    }

    public int f() {
        C16278e c16278e = this.f128020b;
        if (c16278e != null) {
            return c16278e.g();
        }
        return 0;
    }

    public boolean g() {
        return this.f128020b != null;
    }

    public void h(int x10, int y10, float v10) {
        C16278e c16278e = this.f128020b;
        if (c16278e != null) {
            c16278e.i(x10, y10, v10);
            return;
        }
        synchronized (this.f128021c) {
            this.f128021c.add(new C2202a(x10, y10, v10));
        }
    }

    public boolean i(int resolution) {
        boolean z10;
        C16278e c16278e = this.f128020b;
        boolean z11 = true;
        if (c16278e == null || c16278e.g() != resolution) {
            this.f128020b = C16278e.j(this.f128020b, resolution);
            z10 = true;
        } else {
            z10 = false;
        }
        synchronized (this.f128021c) {
            try {
                if (this.f128021c.isEmpty() || this.f128020b == null) {
                    z11 = z10;
                } else {
                    for (int i10 = 0; i10 < this.f128021c.size(); i10++) {
                        C2202a c2202a = this.f128021c.get(i10);
                        if (this.f128020b.g() > c2202a.f128022a) {
                            int g10 = this.f128020b.g();
                            int i11 = c2202a.f128023b;
                            if (g10 > i11) {
                                this.f128020b.h(c2202a.f128022a, i11, c2202a.f128024c);
                            }
                        }
                    }
                    this.f128021c.clear();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z11;
    }

    public C16061a(String guid) {
        this.f128019a = new b(guid);
    }

    public C16061a(String guid, C16278e map) {
        this.f128019a = new b(guid);
        this.f128020b = map;
    }
}
