package d4;

import Rb.c;
import Rb.d;
import android.opengl.Matrix;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.ChunkSurface;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import u9.C15584d;
import ub.p;
import z9.C16278e;
import z9.C16282i;

public class C12874b {

    public static final int f84082y = 128;

    public c f84083a;

    public FilamentRenderable f84084b;

    public FilamentMaterial f84085c;

    public ChunkSurface f84086d;

    public FilamentVertexBuffer f84087e;

    public d f84088f;

    public p f84089g;

    public final float[] f84090h = new float[16];

    public int f84091i = -1;

    public boolean f84092j = false;

    public boolean f84093k = false;

    public boolean f84094l = false;

    public boolean f84095m = false;

    public float f84096n = 0.0f;

    public float f84097o = Float.NaN;

    public float f84098p = Float.NaN;

    public float f84099q = -1.0f;

    public float f84100r = 0.0f;

    public float f84101s = 0.0f;

    public float f84102t = 0.0f;

    public float f84103u = Float.NaN;

    public Terrain.a0 f84104v = null;

    public boolean f84105w = false;

    public O8.a f84106x;

    public static class a {

        public final int f84107a;

        public final int f84108b;

        public final int f84109c;

        public final int f84110d;

        public final float f84111e;

        public final float f84112f;

        public final float f84113g;

        public a(int startX, int startY, int endX, int endY, float brushStartX, float brushStartY, float brushSize) {
            this.f84107a = startX;
            this.f84108b = startY;
            this.f84109c = endX;
            this.f84110d = endY;
            this.f84111e = brushStartX;
            this.f84112f = brushStartY;
            this.f84113g = brushSize;
        }

        public static a a(Terrain terrain, Vector2 worldLocation, float size) {
            int min;
            if (terrain == null || worldLocation == null || size <= 0.0f) {
                return null;
            }
            float cachedGlobalPositionX = terrain.getCachedGlobalPositionX();
            float cachedGlobalPositionZ = terrain.getCachedGlobalPositionZ();
            float f10 = worldLocation.f79838x - cachedGlobalPositionX;
            float f11 = worldLocation.f79839y - cachedGlobalPositionZ;
            float f12 = 0.5f * size;
            float f13 = f10 - f12;
            float f14 = f11 - f12;
            float resolution = (terrain.getResolution() - 1) / terrain.width;
            int floor = (int) Math.floor(f13 * resolution);
            int floor2 = (int) Math.floor(f14 * resolution);
            int ceil = ((int) Math.ceil((f10 + f12) * resolution)) + 1;
            int ceil2 = ((int) Math.ceil((f12 + f11) * resolution)) + 1;
            int max = Math.max(0, Math.min(terrain.getResolution(), floor));
            int max2 = Math.max(0, Math.min(terrain.getResolution(), floor2));
            int max3 = Math.max(0, Math.min(terrain.getResolution(), ceil));
            int max4 = Math.max(0, Math.min(terrain.getResolution(), ceil2));
            if (max3 <= max || max4 <= max2) {
                int round = Math.round(f10 * resolution);
                int round2 = Math.round(f11 * resolution);
                int max5 = Math.max(0, Math.min(terrain.getResolution() - 1, round));
                int max6 = Math.max(0, Math.min(terrain.getResolution() - 1, round2));
                max3 = Math.min(terrain.getResolution(), max5 + 1);
                min = Math.min(terrain.getResolution(), max6 + 1);
                max2 = max6;
                max = max5;
            } else {
                if (max3 == max) {
                    max3 = Math.min(terrain.getResolution(), max + 1);
                }
                min = max4 == max2 ? Math.min(terrain.getResolution(), max2 + 1) : max4;
            }
            return new a(max, max2, max3, min, f13, f14, size);
        }

        public int b() {
            int max = Math.max(Math.max(1, this.f84109c - this.f84107a), Math.max(1, this.f84110d - this.f84108b));
            if (max < 2) {
                max = 2;
            }
            return Math.min(max, 128);
        }
    }

    public final void a(Terrain terrain) {
        if (this.f84084b != null || this.f84086d == null || C15584d.d() == null || !this.f84086d.B()) {
            return;
        }
        FilamentVertexBuffer w10 = this.f84086d.w();
        d q10 = this.f84086d.q();
        if (w10 == null || q10 == null) {
            return;
        }
        if (this.f84083a == null) {
            this.f84083a = new c();
        } else {
            RenderableManager h02 = Qb.a.f().h0();
            if (h02.U(this.f84083a.getId())) {
                h02.G(this.f84083a.getId());
            }
        }
        this.f84085c = C15584d.d().h();
        float f10 = terrain.maxHeight;
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(false).y(false), this.f84085c, this.f84083a, w10, q10, RenderableManager.b.TRIANGLES, new Box(new float[]{0.5f, f10 / 2.0f, 0.5f}, new float[]{1.0f, f10 / 2.0f, 1.0f}));
        this.f84084b = filamentRenderable;
        filamentRenderable.setPriority(7);
        this.f84084b.setGlobalBlendOrderEnabledAt(0, true);
        this.f84084b.setBlendOrderAt(0, 1);
        this.f84087e = w10;
        this.f84088f = q10;
        this.f84094l = false;
        this.f84095m = false;
        TransformManager i10 = Qb.a.i();
        if (i10.o(this.f84083a.getId())) {
            return;
        }
        i10.b(this.f84083a.getId());
    }

    public void b() {
        this.f84093k = false;
    }

    public void c(Terrain terrain) {
        d(terrain);
        e();
        this.f84085c = null;
        this.f84087e = null;
        this.f84088f = null;
        this.f84089g = null;
    }

    public final void d(Terrain terrain) {
        g(terrain);
        if (this.f84084b != null) {
            this.f84084b = null;
        }
        this.f84085c = null;
        if (this.f84083a != null) {
            this.f84083a = null;
        }
        this.f84087e = null;
        this.f84088f = null;
        this.f84094l = false;
        this.f84095m = false;
    }

    public final void e() {
        ChunkSurface chunkSurface = this.f84086d;
        if (chunkSurface != null) {
            chunkSurface.j();
            this.f84086d = null;
        }
    }

    public final void f(Terrain terrain) {
        if (this.f84083a == null || this.f84092j || terrain == null) {
            return;
        }
        terrain.getEffectiveScene().j(this.f84083a);
        this.f84092j = true;
    }

    public void g(Terrain terrain) {
        if (!this.f84092j || this.f84083a == null || terrain == null) {
            return;
        }
        terrain.getEffectiveScene().s(this.f84083a);
        this.f84092j = false;
    }

    public void h() {
        this.f84095m = true;
    }

    public final void i() {
        ChunkSurface chunkSurface;
        if (this.f84084b == null || (chunkSurface = this.f84086d) == null || !chunkSurface.B()) {
            return;
        }
        FilamentVertexBuffer w10 = this.f84086d.w();
        d q10 = this.f84086d.q();
        if (w10 == null || q10 == null) {
            return;
        }
        if (w10 == this.f84087e && q10 == this.f84088f) {
            return;
        }
        this.f84084b.setGeometryAt(0, RenderableManager.b.TRIANGLES, w10, q10);
        this.f84084b.setBounding(this.f84086d.o());
        this.f84087e = w10;
        this.f84088f = q10;
        this.f84094l = false;
        this.f84095m = false;
    }

    public final void j() {
        p pVar;
        if (this.f84085c == null || (pVar = this.f84089g) == null || !pVar.J()) {
            return;
        }
        this.f84089g.f(this.f84085c, "brushMap");
    }

    public void k(Terrain terrain, O8.a brush, Vector2 brushLocation, float brushSize, float brushIntensity, float levelHeight, Terrain.a0 viewMode, boolean lower) {
        float f10;
        boolean z10;
        if (terrain == null || brush == null || brushLocation == null || brushSize <= 0.0f) {
            this.f84093k = false;
            return;
        }
        C16278e table = terrain.getTable();
        if (table == null) {
            this.f84093k = false;
            return;
        }
        a a10 = a.a(terrain, brushLocation, brushSize);
        if (a10 == null) {
            this.f84093k = false;
            return;
        }
        boolean z11 = brushLocation.f79838x == this.f84097o && brushLocation.f79839y == this.f84098p;
        boolean z12 = brushSize == this.f84099q;
        boolean z13 = levelHeight == this.f84103u;
        boolean z14 = viewMode == this.f84104v;
        boolean z15 = lower == this.f84105w;
        if (z11 && z12 && z13 && z14 && z15) {
            f10 = brushIntensity;
            z10 = true;
        } else {
            f10 = brushIntensity;
            z10 = false;
        }
        this.f84096n = f10;
        this.f84089g = brush.f();
        this.f84097o = brushLocation.f79838x;
        this.f84098p = brushLocation.f79839y;
        this.f84099q = brushSize;
        this.f84100r = a10.f84111e;
        this.f84101s = a10.f84112f;
        this.f84102t = a10.f84113g;
        this.f84103u = levelHeight;
        this.f84104v = viewMode;
        this.f84105w = lower;
        ChunkSurface chunkSurface = this.f84086d;
        boolean z16 = chunkSurface != null;
        if (z10 && chunkSurface != null && z16) {
            this.f84093k = true;
            return;
        }
        int b10 = a10.b();
        NativeFloatBuffer a11 = brush.a();
        if (a11 == null) {
            this.f84093k = false;
            return;
        }
        if (this.f84086d == null || this.f84091i != b10 || !z16) {
            e();
            C16282i.b d10 = terrain.getSurfaceTopologyCache().d(b10, false);
            try {
                ChunkSurface chunkSurface2 = new ChunkSurface(b10, false, d10);
                this.f84086d = chunkSurface2;
                this.f84091i = b10;
                this.f84094l = true;
                this.f84087e = chunkSurface2.w();
                this.f84088f = this.f84086d.q();
            } catch (RuntimeException e10) {
                d10.x();
                throw e10;
            }
        }
        this.f84086d.I(table.c(), a11, terrain.getResolution(), a10.f84107a, a10.f84108b, a10.f84109c, a10.f84110d, terrain.width, terrain.maxHeight, a10.f84111e, a10.f84112f, a10.f84113g, brush.f16548e, brush.f16549f, brushIntensity, levelHeight, viewMode != null ? viewMode.ordinal() : -1);
        this.f84093k = true;
        this.f84095m = true;
    }

    public final void l(float brushIntensity) {
        float f10;
        float f11;
        float f12;
        if (this.f84085c == null) {
            return;
        }
        if (this.f84105w) {
            f12 = 1.0f;
            f10 = 0.10980392f;
            f11 = 0.10980392f;
        } else {
            f10 = 0.50980395f;
            f11 = 1.0f;
            f12 = 0.10980392f;
        }
        this.f84085c.E("baseColor", f12, f10, f11, Nc.b.I(brushIntensity * 0.7f));
    }

    public void m(Terrain terrain) {
        FilamentVertexBuffer w10;
        if (terrain == null) {
            return;
        }
        if (!this.f84093k) {
            g(terrain);
            return;
        }
        ChunkSurface chunkSurface = this.f84086d;
        if (chunkSurface == null || !chunkSurface.B()) {
            g(terrain);
            return;
        }
        if (this.f84106x == null) {
            this.f84106x = K8.a.f10987r.a(39);
        }
        boolean z10 = (this.f84095m && ((w10 = this.f84086d.w()) == null || w10 == this.f84087e)) ? false : true;
        if (this.f84094l && this.f84084b != null) {
            d(terrain);
        }
        a(terrain);
        if (z10) {
            i();
        }
        j();
        l(this.f84096n);
        n(terrain);
        f(terrain);
    }

    public final void n(Terrain terrain) {
        if (this.f84083a == null) {
            return;
        }
        Matrix.setIdentityM(this.f84090h, 0);
        Matrix.translateM(this.f84090h, 0, terrain.getCachedGlobalPositionX() + this.f84100r, terrain.getCachedGlobalPositionY(), terrain.getCachedGlobalPositionZ() + this.f84101s);
        float[] fArr = this.f84090h;
        float f10 = this.f84102t;
        Nc.c.p(fArr, f10, terrain.maxHeight, f10);
        TransformManager i10 = Qb.a.i();
        i10.u(i10.h(this.f84083a.getId()), this.f84090h);
    }
}
