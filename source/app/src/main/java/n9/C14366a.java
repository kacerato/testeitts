package n9;

import JAVARuntime.Gizmo;
import com.google.android.filament.IndirectLight;
import com.google.android.filament.LightManager;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Renderer;
import com.google.android.filament.TransformManager;
import com.google.android.filament.View;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Pool.Core.PooledObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.ColorTexture;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentIndirectLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentLight;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.List;
import m9.C14197c;
import t3.C15377a;
import ub.p;

public final class C14366a {

    public static final int f97850t = 512;

    public static final float f97851u = 1.08f;

    public static final float f97852v = 0.05f;

    public static final float f97853w = 0.2f;

    public static boolean f97854x = false;

    public c f97856b;

    public PooledObject f97857c;

    public boolean f97859e;

    public int f97860f;

    public int f97861g;

    public final List<b> f97855a = new SteppedArrayList(50);

    public boolean f97858d = true;

    public int f97862h = 512;

    public volatile float f97863i = 0.5f;

    public volatile float f97864j = 0.5f;

    public volatile float f97865k = 1.0f;

    public volatile float f97866l = 0.0f;

    public final f f97867m = new f();

    public final float[] f97868n = new float[16];

    public final Vector3 f97869o = new Vector3();

    public final Quaternion f97870p = new Quaternion();

    public final Vector3 f97871q = new Vector3();

    public final Vector3 f97872r = new Vector3();

    public final Vector3 f97873s = new Vector3();

    public static final class b {

        public C14197c f97874a;

        public Rb.c f97875b;

        public FilamentRenderable f97876c;

        public b() {
        }
    }

    public static final class c {

        public FilamentScene f97877a;

        public FilamentView f97878b;

        public FilamentCamera f97879c;

        public Tb.a f97880d;

        public FilamentIndirectLight f97881e;

        public FilamentLight f97882f;

        public c() {
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f97854x = false;
        }
    }

    public final void a(PooledObject source) {
        source.m(this.f97869o);
        source.o(this.f97870p);
        this.f97867m.Y0(this.f97869o, this.f97870p, source.getScale());
        this.f97867m.o(this.f97868n);
    }

    public final void b(PooledObject source) {
        Rb.c cVar;
        if (source == null || this.f97855a.isEmpty()) {
            return;
        }
        a(source);
        TransformManager i10 = Qb.a.i();
        for (int i11 = 0; i11 < this.f97855a.size(); i11++) {
            b bVar = this.f97855a.get(i11);
            if (bVar != null && (cVar = bVar.f97875b) != null) {
                i10.u(i10.h(cVar.getId()), this.f97868n);
            }
        }
    }

    public final void c() {
        FilamentScene filamentScene;
        Rb.c cVar;
        for (int i10 = 0; i10 < this.f97855a.size(); i10++) {
            b bVar = this.f97855a.get(i10);
            if (bVar != null) {
                c cVar2 = this.f97856b;
                if (cVar2 != null && (filamentScene = cVar2.f97877a) != null && (cVar = bVar.f97875b) != null) {
                    try {
                        filamentScene.s(cVar);
                    } catch (Exception unused) {
                    }
                }
                if (bVar.f97876c != null) {
                    bVar.f97876c = null;
                }
            }
        }
        this.f97855a.clear();
    }

    public void d() {
        c();
    }

    public final int e(PooledObject source) {
        source.o(this.f97870p);
        return ((((((((((((527 + Float.floatToIntBits(source.i())) * 31) + Float.floatToIntBits(source.j())) * 31) + Float.floatToIntBits(source.k())) * 31) + Float.floatToIntBits(source.getScale())) * 31) + Float.floatToIntBits(this.f97870p.D())) * 31) + Float.floatToIntBits(this.f97870p.E())) * 31) + Float.floatToIntBits(this.f97870p.F());
    }

    public final boolean f(PooledObject source) {
        C14197c c14197c;
        Vertex c10;
        AABB d02;
        float f10;
        float f11;
        float f12;
        float f13;
        if (source == null || this.f97856b == null || this.f97855a.isEmpty()) {
            return false;
        }
        a(source);
        float f14 = Float.NEGATIVE_INFINITY;
        float f15 = Float.NEGATIVE_INFINITY;
        float f16 = Float.POSITIVE_INFINITY;
        float f17 = Float.POSITIVE_INFINITY;
        float f18 = Float.POSITIVE_INFINITY;
        boolean z10 = false;
        float f19 = Float.NEGATIVE_INFINITY;
        for (int i10 = 0; i10 < this.f97855a.size(); i10++) {
            b bVar = this.f97855a.get(i10);
            if (bVar != null && (c14197c = bVar.f97874a) != null && (c10 = c14197c.c()) != null && (d02 = c10.d0()) != null) {
                float B10 = d02.B();
                float C10 = d02.C();
                float D10 = d02.D();
                float w10 = d02.w();
                float x10 = d02.x();
                float y10 = d02.y();
                int i11 = 0;
                while (i11 < 8) {
                    Vector3 vector3 = this.f97871q;
                    float f20 = (i11 & 1) == 0 ? B10 : w10;
                    if ((i11 & 2) == 0) {
                        f10 = y10;
                        f11 = C10;
                    } else {
                        f10 = y10;
                        f11 = x10;
                    }
                    if ((i11 & 4) == 0) {
                        f12 = B10;
                        f13 = D10;
                    } else {
                        f12 = B10;
                        f13 = f10;
                    }
                    vector3.set(f20, f11, f13);
                    f fVar = this.f97867m;
                    Vector3 vector32 = this.f97871q;
                    fVar.P(vector32, vector32);
                    f16 = Math.min(f16, this.f97871q.getX());
                    f17 = Math.min(f17, this.f97871q.getY());
                    f18 = Math.min(f18, this.f97871q.getZ());
                    f14 = Math.max(f14, this.f97871q.getX());
                    f19 = Math.max(f19, this.f97871q.getY());
                    f15 = Math.max(f15, this.f97871q.getZ());
                    i11++;
                    y10 = f10;
                    B10 = f12;
                    z10 = true;
                }
            }
        }
        if (!z10) {
            return false;
        }
        float f21 = (f16 + f14) * 0.5f;
        float f22 = (f17 + f19) * 0.5f;
        float f23 = (f18 + f15) * 0.5f;
        float M10 = Nc.b.M(0.05f, (f14 - f16) * 0.5f * 1.08f);
        float M11 = Nc.b.M(0.05f, (f19 - f17) * 0.5f * 1.08f);
        float M12 = Nc.b.M(0.05f, (f15 - f18) * 0.5f);
        this.f97863i = M10;
        this.f97864j = M11;
        this.f97865k = Nc.b.M(1.0E-4f, source.getScale());
        this.f97866l = f22 - source.j();
        float M13 = Nc.b.M(0.2f, Math.max(M10, M11) + M12 + 0.2f);
        float f24 = M13 + 0.01f + M12 + 0.2f;
        int floatToIntBits = ((((((((((((((527 + Float.floatToIntBits(f21)) * 31) + Float.floatToIntBits(f22)) * 31) + Float.floatToIntBits(f23)) * 31) + Float.floatToIntBits(M10)) * 31) + Float.floatToIntBits(M11)) * 31) + Float.floatToIntBits(0.01f)) * 31) + Float.floatToIntBits(f24)) * 31) + Float.floatToIntBits(M13);
        if (floatToIntBits == this.f97861g) {
            return false;
        }
        this.f97861g = floatToIntBits;
        this.f97856b.f97879c.l(-M10, M10, M11, -M11, 0.01f, f24);
        double d10 = f21;
        double d11 = f22;
        this.f97856b.f97879c.i(d10, d11, M13 + f23, d10, d11, f23, 0.0d, 1.0d, 0.0d);
        return true;
    }

    public final void g(GameObject gameObject, float baseObjectRadius) {
        c cVar;
        Tb.a aVar;
        if (!f97854x || gameObject == null || (cVar = this.f97856b) == null || (aVar = cVar.f97880d) == null) {
            return;
        }
        ColorTexture l10 = aVar.l();
        if (p.L(l10)) {
            gameObject.transform.u0(this.f97872r);
            float M10 = Nc.b.M(1.0f, 1.1f * baseObjectRadius);
            Vector3 vector3 = this.f97872r;
            vector3.setY(vector3.getY() + M10);
            float width = l10.getHeight() > 0 ? l10.getWidth() / l10.getHeight() : 1.0f;
            float M11 = Nc.b.M(0.5f, baseObjectRadius * 0.35f);
            this.f97873s.set(width * M11, M11, 1.0f);
            Gizmo.drawQuad(this.f97872r.toJAVARuntime(), this.f97873s.toJAVARuntime(), l10.p0());
        }
    }

    public final void h() {
        c();
        c cVar = this.f97856b;
        this.f97856b = null;
        this.f97857c = null;
        this.f97861g = 0;
        this.f97859e = false;
        if (cVar == null) {
            return;
        }
        FilamentScene filamentScene = cVar.f97877a;
        if (filamentScene != null) {
            FilamentCamera filamentCamera = cVar.f97879c;
            if (filamentCamera != null) {
                try {
                    filamentScene.s(filamentCamera.f());
                } catch (Exception unused) {
                }
            }
            FilamentLight filamentLight = cVar.f97882f;
            if (filamentLight != null) {
                try {
                    cVar.f97877a.s(filamentLight.e());
                } catch (Exception unused2) {
                }
            }
        }
        cVar.f97882f = null;
        Tb.a aVar = cVar.f97880d;
        if (aVar != null && !aVar.f24207r) {
            try {
                aVar.c();
            } catch (Exception unused3) {
            }
        }
        FilamentView filamentView = cVar.f97878b;
        if (filamentView != null) {
            try {
                filamentView.C(null);
                cVar.f97878b.x(null);
            } catch (Exception unused4) {
            }
        }
    }

    public final void i() {
        Tb.a aVar;
        c cVar = this.f97856b;
        if (cVar == null || (aVar = cVar.f97880d) == null || aVar.f24207r || aVar.i() != this.f97862h || this.f97856b.f97880d.h() != this.f97862h) {
            h();
            c cVar2 = new c();
            cVar2.f97877a = new FilamentScene();
            FilamentView filamentView = new FilamentView();
            cVar2.f97878b = filamentView;
            filamentView.C(cVar2.f97877a);
            cVar2.f97878b.z(false);
            cVar2.f97878b.w(View.d.TRANSLUCENT);
            FilamentCamera filamentCamera = new FilamentCamera();
            cVar2.f97879c = filamentCamera;
            cVar2.f97878b.x(filamentCamera);
            cVar2.f97877a.j(cVar2.f97879c.f());
            cVar2.f97877a.v(null);
            FilamentIndirectLight filamentIndirectLight = new FilamentIndirectLight(new IndirectLight.a().c(1, new float[]{1.0f, 1.0f, 1.0f}).b(60000.0f), null);
            cVar2.f97881e = filamentIndirectLight;
            cVar2.f97877a.u(filamentIndirectLight);
            FilamentLight filamentLight = new FilamentLight(new LightManager.a(LightManager.d.SUN).e(0.0f, -1.0f, 0.0f).g(120000.0f).c(false).d(1.0f, 1.0f, 1.0f));
            cVar2.f97882f = filamentLight;
            cVar2.f97877a.j(filamentLight.e());
            int i10 = this.f97862h;
            Tb.a aVar2 = new Tb.a(i10, i10, 100, 1, false);
            cVar2.f97880d = aVar2;
            cVar2.f97878b.D(0, 0, aVar2.i(), cVar2.f97880d.h());
            this.f97856b = cVar2;
            this.f97858d = true;
            this.f97859e = true;
        }
    }

    public float j() {
        return this.f97864j;
    }

    public float k() {
        return this.f97863i;
    }

    public float l() {
        return this.f97866l;
    }

    public float m() {
        return this.f97865k;
    }

    public p n() {
        Tb.a aVar;
        c cVar = this.f97856b;
        if (cVar == null || (aVar = cVar.f97880d) == null) {
            return null;
        }
        return aVar.l();
    }

    public int o() {
        return this.f97862h;
    }

    public void p() {
        this.f97858d = true;
        this.f97860f = 0;
        this.f97861g = 0;
        this.f97859e = true;
        this.f97857c = null;
    }

    public void q() {
        h();
    }

    public void r() {
        this.f97859e = false;
        this.f97857c = null;
    }

    public void s() {
        v();
    }

    public void t(GameObject gameObject, boolean buildingBase, boolean baseBuilded, boolean hasImpostorEligibleMaterial, List<C14197c> materialObjectList, PooledObject sourceObject, float baseObjectRadius) {
        y(buildingBase, baseBuilded, hasImpostorEligibleMaterial, materialObjectList, sourceObject);
        g(gameObject, baseObjectRadius);
    }

    public final void u(PooledObject source, List<C14197c> materialObjectList) {
        Vertex c10;
        c();
        if (this.f97856b == null || source == null) {
            this.f97858d = false;
            return;
        }
        a(source);
        TransformManager i10 = Qb.a.i();
        for (int i11 = 0; i11 < materialObjectList.size(); i11++) {
            C14197c c14197c = materialObjectList.get(i11);
            if (c14197c != null && c14197c.h() && (c10 = c14197c.c()) != null && c10.x1() && c10.f1() != null && c10.l0() != null && c14197c.d() != null && c14197c.d().z() != null) {
                b bVar = new b();
                bVar.f97874a = c14197c;
                bVar.f97875b = new Rb.c();
                bVar.f97876c = new FilamentRenderable(new RenderableManager.a(1).d(false).y(false), c14197c.d().z(), bVar.f97875b, c10.f1(), c10.l0(), RenderableManager.b.TRIANGLES, c10.k0());
                i10.b(bVar.f97875b.getId());
                i10.u(i10.h(bVar.f97875b.getId()), this.f97868n);
                this.f97856b.f97877a.j(bVar.f97875b);
                this.f97855a.add(bVar);
            }
        }
        this.f97858d = this.f97855a.isEmpty();
        this.f97859e = true;
    }

    /* JADX WARN: Finally extract failed */
    public final void v() {
        c cVar;
        if (!this.f97859e || (cVar = this.f97856b) == null || cVar.f97880d == null || this.f97855a.isEmpty()) {
            return;
        }
        c cVar2 = this.f97856b;
        cVar2.f97878b.D(0, 0, cVar2.f97880d.i(), this.f97856b.f97880d.h());
        Renderer.a e10 = Qb.a.g().e();
        boolean z10 = e10.f60066b;
        boolean z11 = e10.f60067c;
        double[] dArr = e10.f60065a;
        double d10 = dArr[0];
        double d11 = dArr[1];
        double d12 = dArr[2];
        double d13 = dArr[3];
        e10.f60066b = true;
        e10.f60067c = true;
        dArr[0] = 0.0d;
        dArr[1] = 0.0d;
        dArr[2] = 0.0d;
        dArr[3] = 0.0d;
        Qb.a.g().r(e10);
        try {
            c cVar3 = this.f97856b;
            cVar3.f97880d.a(cVar3.f97878b);
            Qb.a.o(this.f97856b.f97878b);
            try {
                this.f97856b.f97880d.z();
            } catch (Exception unused) {
            }
            e10.f60066b = z10;
            e10.f60067c = z11;
            double[] dArr2 = e10.f60065a;
            dArr2[0] = d10;
            dArr2[1] = d11;
            dArr2[2] = d12;
            dArr2[3] = d13;
            Qb.a.g().r(e10);
            this.f97859e = false;
        } catch (Throwable th2) {
            try {
                this.f97856b.f97880d.z();
            } catch (Exception unused2) {
            }
            e10.f60066b = z10;
            e10.f60067c = z11;
            double[] dArr3 = e10.f60065a;
            dArr3[0] = d10;
            dArr3[1] = d11;
            dArr3[2] = d12;
            dArr3[3] = d13;
            Qb.a.g().r(e10);
            throw th2;
        }
    }

    public boolean w() {
        return this.f97858d || this.f97859e;
    }

    public void x(int resolutionID) {
        int i10 = TextureConfig.f79814s[resolutionID];
        if (this.f97862h == i10) {
            return;
        }
        this.f97862h = i10;
        h();
        this.f97858d = true;
        this.f97859e = true;
    }

    public final void y(boolean buildingBase, boolean baseBuilded, boolean hasImpostorEligibleMaterial, List<C14197c> materialObjectList, PooledObject sourceObject) {
        if (buildingBase || !baseBuilded) {
            this.f97857c = null;
            c();
            this.f97859e = false;
            return;
        }
        if (!hasImpostorEligibleMaterial || materialObjectList == null || materialObjectList.isEmpty()) {
            this.f97857c = null;
            c();
            this.f97858d = false;
            this.f97859e = false;
            return;
        }
        if (sourceObject == null) {
            this.f97857c = null;
            c();
            this.f97859e = false;
            return;
        }
        i();
        if (this.f97857c != sourceObject) {
            this.f97857c = sourceObject;
            this.f97858d = true;
            this.f97860f = 0;
        }
        if (this.f97858d) {
            u(sourceObject, materialObjectList);
        }
        if (this.f97855a.isEmpty()) {
            return;
        }
        int e10 = e(sourceObject);
        if (e10 != this.f97860f) {
            this.f97860f = e10;
            b(sourceObject);
            this.f97859e = true;
        }
        if (f(sourceObject)) {
            this.f97859e = true;
        }
    }
}
