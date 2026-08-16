package m9;

import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class C14198d {

    public static final float f96767s = 0.05f;

    public final long f96768a;

    public final long f96769b;

    public int f96773f;

    public volatile int f96777j;

    public volatile boolean f96778k;

    public int f96779l;

    public volatile float f96781n;

    public volatile float f96782o;

    public volatile float f96783p;

    public volatile float f96784q;

    public volatile float f96785r;

    public final List<PooledObject> f96770c = new SteppedArrayList(64);

    public final Map<C14197c, C14203i> f96771d = new HashMap(8);

    public C14197c[] f96772e = new C14197c[8];

    public final C14200f f96774g = new C14200f();

    public final C14201g f96775h = new C14201g();

    public volatile int[] f96776i = new int[0];

    public volatile a f96780m = a.HIDDEN;

    public enum a {
        NORMAL_VISIBLE,
        IMPOSTOR_VISIBLE,
        HIDDEN
    }

    public C14198d(long key, long cellKey) {
        this.f96768a = key;
        this.f96769b = cellKey;
    }

    public final void a(C14197c materialObject) {
        int i10 = this.f96773f;
        C14197c[] c14197cArr = this.f96772e;
        if (i10 >= c14197cArr.length) {
            C14197c[] c14197cArr2 = new C14197c[c14197cArr.length << 1];
            System.arraycopy(c14197cArr, 0, c14197cArr2, 0, i10);
            this.f96772e = c14197cArr2;
        }
        C14197c[] c14197cArr3 = this.f96772e;
        int i11 = this.f96773f;
        this.f96773f = i11 + 1;
        c14197cArr3[i11] = materialObject;
    }

    public void b(j batch, a state) {
        a aVar = a.IMPOSTOR_VISIBLE;
        boolean z10 = true;
        boolean z11 = state == aVar && this.f96778k;
        if (state != a.NORMAL_VISIBLE && (state != aVar || z11)) {
            z10 = false;
        }
        int[] iArr = this.f96776i;
        int i10 = this.f96777j;
        for (int i11 = 0; i11 < i10; i11++) {
            batch.a(iArr[i11], z10);
        }
        int c10 = this.f96774g.c();
        if (c10 != 0) {
            batch.a(c10, z11);
        }
        if (z10) {
            state = a.NORMAL_VISIBLE;
        }
        this.f96780m = state;
    }

    public void c(FilamentScene scene) {
        for (int i10 = 0; i10 < this.f96773f; i10++) {
            C14203i c14203i = this.f96771d.get(this.f96772e[i10]);
            if (c14203i != null) {
                c14203i.c(scene);
            }
            this.f96772e[i10] = null;
        }
        this.f96771d.clear();
        this.f96773f = 0;
        this.f96777j = 0;
        this.f96779l = 0;
        this.f96778k = false;
        this.f96774g.b(scene);
        this.f96775h.a();
    }

    public final void d(int count) {
        int[] iArr = this.f96776i;
        if (iArr.length < count) {
            this.f96776i = new int[Math.max(count, Math.max(4, iArr.length << 1))];
        }
    }

    public void e(float captureHalfWidth, float captureHalfHeight, float capturePivotYOffset, float captureSourceScale) {
        this.f96775h.c(captureHalfWidth, captureHalfHeight, capturePivotYOffset, captureSourceScale);
    }

    public void f(List<C14197c> materialObjects) {
        if (materialObjects == null) {
            return;
        }
        for (int i10 = 0; i10 < materialObjects.size(); i10++) {
            C14197c c14197c = materialObjects.get(i10);
            if (c14197c != null && c14197c.c() != null && c14197c.d() != null && c14197c.d().z() != null && !this.f96771d.containsKey(c14197c)) {
                this.f96771d.put(c14197c, new C14203i(c14197c));
                a(c14197c);
            }
        }
        d(this.f96773f);
    }

    public void g() {
        float f10 = 0.0f;
        this.f96781n = 0.0f;
        this.f96782o = 0.0f;
        this.f96783p = 0.0f;
        if (this.f96770c.isEmpty()) {
            this.f96784q = 0.0f;
            this.f96785r = 0.0f;
            return;
        }
        for (int i10 = 0; i10 < this.f96770c.size(); i10++) {
            PooledObject pooledObject = this.f96770c.get(i10);
            this.f96781n += pooledObject.i();
            this.f96782o += pooledObject.j();
            this.f96783p += pooledObject.k();
        }
        float size = 1.0f / this.f96770c.size();
        this.f96781n *= size;
        this.f96782o *= size;
        this.f96783p *= size;
        float f11 = 0.0f;
        for (int i11 = 0; i11 < this.f96770c.size(); i11++) {
            PooledObject pooledObject2 = this.f96770c.get(i11);
            float i12 = pooledObject2.i() - this.f96781n;
            float j10 = pooledObject2.j() - this.f96782o;
            float k10 = pooledObject2.k() - this.f96783p;
            float f12 = i12 * i12;
            float f13 = k10 * k10;
            float f14 = (j10 * j10) + f12 + f13;
            if (f14 > f10) {
                f10 = f14;
            }
            float f15 = f12 + f13;
            if (f15 > f11) {
                f11 = f15;
            }
        }
        this.f96784q = Nc.b.M(0.05f, (float) Math.sqrt(f10));
        this.f96785r = Nc.b.M(0.05f, (float) Math.sqrt(f11));
        this.f96775h.b(this.f96770c, this.f96781n, this.f96782o, this.f96783p, this.f96784q);
    }

    public final void h() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f96773f; i11++) {
            C14203i c14203i = this.f96771d.get(this.f96772e[i11]);
            if (c14203i != null && c14203i.d() != 0) {
                i10++;
            }
        }
        d(i10);
        int[] iArr = this.f96776i;
        int i12 = 0;
        for (int i13 = 0; i13 < this.f96773f; i13++) {
            C14203i c14203i2 = this.f96771d.get(this.f96772e[i13]);
            int d10 = c14203i2 == null ? 0 : c14203i2.d();
            if (d10 != 0) {
                iArr[i12] = d10;
                i12++;
            }
        }
        this.f96776i = iArr;
        this.f96777j = i10;
        this.f96780m = null;
    }

    public final void i(C14197c materialObject) {
        for (int i10 = 0; i10 < this.f96773f; i10++) {
            if (this.f96772e[i10] == materialObject) {
                j(i10);
                return;
            }
        }
    }

    public final void j(int index) {
        int i10 = this.f96773f - 1;
        this.f96773f = i10;
        C14197c[] c14197cArr = this.f96772e;
        c14197cArr[index] = c14197cArr[i10];
        c14197cArr[i10] = null;
    }

    public void k(FilamentScene scene, n9.b resources) {
        this.f96774g.e(scene, this.f96775h, resources);
        this.f96778k = this.f96774g.c() != 0;
        this.f96780m = null;
    }

    public void l(List<C14197c> materialObjects, FilamentScene scene, boolean castShadow, boolean receiveShadow) {
        int i10 = 0;
        if (materialObjects != null) {
            for (int i11 = 0; i11 < materialObjects.size(); i11++) {
                C14197c c14197c = materialObjects.get(i11);
                if (c14197c != null) {
                    if (c14197c.c() == null || c14197c.d() == null || c14197c.d().z() == null) {
                        C14203i remove = this.f96771d.remove(c14197c);
                        if (remove != null) {
                            remove.c(scene);
                            i(c14197c);
                        }
                    } else {
                        C14203i c14203i = this.f96771d.get(c14197c);
                        if (c14203i == null) {
                            c14203i = new C14203i(c14197c);
                            this.f96771d.put(c14197c, c14203i);
                            a(c14197c);
                        }
                        c14203i.g(scene, this.f96775h, castShadow, receiveShadow);
                    }
                }
            }
        }
        while (i10 < this.f96773f) {
            C14197c c14197c2 = this.f96772e[i10];
            if (materialObjects == null || !materialObjects.contains(c14197c2)) {
                C14203i remove2 = this.f96771d.remove(c14197c2);
                if (remove2 != null) {
                    remove2.c(scene);
                }
                j(i10);
            } else {
                i10++;
            }
        }
        h();
    }
}
