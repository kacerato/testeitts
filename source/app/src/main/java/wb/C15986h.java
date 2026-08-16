package wb;

import com.google.android.filament.Box;
import com.google.android.filament.Camera;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderTarget;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Texture;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderTarget;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

public class C15986h extends C15980b {

    public static final int f127398A = 4;

    public static final int f127399B = 5;

    public static final float[][] f127400C = {new float[]{1.0f, 0.0f, 0.0f}, new float[]{-1.0f, 0.0f, 0.0f}, new float[]{0.0f, 1.0f, 0.0f}, new float[]{0.0f, -1.0f, 0.0f}, new float[]{0.0f, 0.0f, 1.0f}, new float[]{0.0f, 0.0f, -1.0f}};

    public static final float[][] f127401D = {new float[]{0.0f, -1.0f, 0.0f}, new float[]{0.0f, -1.0f, 0.0f}, new float[]{0.0f, 0.0f, 1.0f}, new float[]{0.0f, 0.0f, -1.0f}, new float[]{0.0f, -1.0f, 0.0f}, new float[]{0.0f, -1.0f, 0.0f}};

    public static final Texture.c[] f127402E = {Texture.c.POSITIVE_X, Texture.c.NEGATIVE_X, Texture.c.POSITIVE_Y, Texture.c.NEGATIVE_Y, Texture.c.POSITIVE_Z, Texture.c.NEGATIVE_Z};

    public static final int f127403w = 0;

    public static final int f127404x = 1;

    public static final int f127405y = 2;

    public static final int f127406z = 3;

    public final int f127407b;

    public final FilamentTexture f127408c;

    public final FilamentRenderTarget[] f127409d = new FilamentRenderTarget[6];

    public final FilamentCamera[] f127410e = new FilamentCamera[6];

    public final FilamentView[] f127411f = new FilamentView[6];

    public final FilamentScene f127412g;

    public FilamentMaterialTemplate f127413h;

    public FilamentMaterial f127414i;

    public FilamentVertexBuffer f127415j;

    public Rb.d f127416k;

    public Rb.c f127417l;

    public FilamentRenderable f127418m;

    public final List<ec.f> f127419n;

    public final List<ec.g> f127420o;

    public final boolean f127421p;

    public final String f127422q;

    public final int f127423r;

    public volatile boolean f127424s;

    public volatile boolean f127425t;

    public volatile boolean f127426u;

    public boolean f127427v;

    public class a implements Runnable {
        public a() {
        }

        @Override
        public void run() {
            C15986h.this.f127426u = false;
            C15986h.this.j();
        }
    }

    public C15986h(int faceSize, String materialCode, List<ec.f> params, List<ec.g> samples, boolean gammaCorrection) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f127419n = steppedArrayList;
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        this.f127420o = steppedArrayList2;
        this.f127407b = faceSize;
        this.f127422q = materialCode;
        this.f127423r = ("shadercubemap-" + materialCode).hashCode();
        steppedArrayList.addAll(params);
        steppedArrayList2.addAll(samples);
        this.f127421p = gammaCorrection;
        this.f127412g = new FilamentScene();
        Texture.f fVar = gammaCorrection ? Texture.f.SRGB8_A8 : Texture.f.RGBA8;
        TextureConfig textureConfig = new TextureConfig();
        textureConfig.genMipmaps = false;
        textureConfig.mipmapLevels = 0;
        textureConfig.J0(TextureConfig.h.Clamp);
        FilamentTexture filamentTexture = new FilamentTexture(faceSize, faceSize, Texture.e.RGBA, Texture.k.UBYTE, fVar, new Texture.a().d(fVar), FilamentTexture.j(textureConfig), 0, 1, Texture.i.SAMPLER_CUBEMAP, 6);
        this.f127408c = filamentTexture;
        b(filamentTexture);
        e();
        g();
        j();
        i();
    }

    public final void e() {
        for (int i10 = 0; i10 < 6; i10++) {
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f127410e[i10] = filamentCamera;
            filamentCamera.m(90.0f, 1.0f, 0.1f, 2.0f, Camera.a.VERTICAL);
            FilamentView filamentView = new FilamentView();
            filamentView.x(filamentCamera);
            filamentView.C(this.f127412g);
            int i11 = this.f127407b;
            filamentView.D(0, 0, i11, i11);
            this.f127411f[i10] = filamentView;
        }
    }

    public final void f() {
        Sb.b bVar = (Sb.b) new Sb.b().v("ShaderCubemapMaterial-" + Tc.b.L()).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).m(true).V(MaterialBuilder.u.OBJECT);
        for (int i10 = 0; i10 < this.f127419n.size(); i10++) {
            ec.f fVar = this.f127419n.get(i10);
            bVar.O(fVar.d(), fVar.b(), fVar.a());
        }
        for (int i11 = 0; i11 < this.f127420o.size(); i11++) {
            ec.g gVar = this.f127420o.get(i11);
            bVar.D(gVar.d(), gVar.a(), gVar.c(), gVar.b());
        }
        bVar.r(this.f127422q);
        com.google.android.filament.filamat.b d10 = bVar.d();
        if (d10 == null || !d10.b()) {
            throw new RuntimeException("Falha ao compilar material do ShaderCubemap");
        }
        ec.b.l(this.f127423r, d10.a());
    }

    public final void g() {
        for (int i10 = 0; i10 < 6; i10++) {
            RenderTarget.b bVar = new RenderTarget.b();
            RenderTarget.a aVar = RenderTarget.a.COLOR;
            FilamentRenderTarget filamentRenderTarget = new FilamentRenderTarget(bVar.f(aVar, this.f127408c.C()).e(aVar, 0).c(aVar, f127402E[i10]), this.f127408c, (FilamentTexture) null);
            this.f127409d[i10] = filamentRenderTarget;
            this.f127411f[i10].A(filamentRenderTarget);
        }
    }

    public void h() {
        if (this.f127427v) {
            return;
        }
        K8.a.G();
        Qb.a.d();
        this.f127427v = true;
        int i10 = 0;
        while (true) {
            FilamentView[] filamentViewArr = this.f127411f;
            if (i10 >= filamentViewArr.length) {
                break;
            }
            FilamentView filamentView = filamentViewArr[i10];
            if (filamentView != null) {
                filamentView.F();
                filamentView.x(null);
                filamentView.C(null);
            }
            i10++;
        }
        int i11 = 0;
        while (true) {
            FilamentCamera[] filamentCameraArr = this.f127410e;
            if (i11 >= filamentCameraArr.length) {
                break;
            }
            FilamentCamera filamentCamera = filamentCameraArr[i11];
            if (filamentCamera != null) {
                try {
                    this.f127412g.s(filamentCamera.f());
                } catch (Throwable unused) {
                }
            }
            i11++;
        }
        Rb.c cVar = this.f127417l;
        if (cVar != null) {
            try {
                this.f127412g.s(cVar);
            } catch (Throwable unused2) {
            }
        }
        FilamentRenderable filamentRenderable = this.f127418m;
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
        }
        FilamentMaterial filamentMaterial = this.f127414i;
        if (filamentMaterial != null) {
            filamentMaterial.destroyImmediate();
            this.f127414i = null;
        }
        FilamentVertexBuffer filamentVertexBuffer = this.f127415j;
        if (filamentVertexBuffer != null) {
            filamentVertexBuffer.destroyImmediate();
            this.f127415j = null;
        }
        Rb.d dVar = this.f127416k;
        if (dVar != null) {
            dVar.destroyImmediate();
            this.f127416k = null;
        }
        int i12 = 0;
        while (true) {
            FilamentCamera[] filamentCameraArr2 = this.f127410e;
            if (i12 >= filamentCameraArr2.length) {
                break;
            }
            FilamentCamera filamentCamera2 = filamentCameraArr2[i12];
            if (filamentCamera2 != null) {
                filamentCamera2.destroyImmediate();
                this.f127410e[i12] = null;
            }
            i12++;
        }
        int i13 = 0;
        while (true) {
            FilamentRenderTarget[] filamentRenderTargetArr = this.f127409d;
            if (i13 >= filamentRenderTargetArr.length) {
                break;
            }
            FilamentRenderTarget filamentRenderTarget = filamentRenderTargetArr[i13];
            if (filamentRenderTarget != null) {
                filamentRenderTarget.destroyImmediate();
                this.f127409d[i13] = null;
            }
            i13++;
        }
        int i14 = 0;
        while (true) {
            FilamentView[] filamentViewArr2 = this.f127411f;
            if (i14 >= filamentViewArr2.length) {
                break;
            }
            FilamentView filamentView2 = filamentViewArr2[i14];
            if (filamentView2 != null) {
                filamentView2.destroyImmediate();
                this.f127411f[i14] = null;
            }
            i14++;
        }
        Rb.c cVar2 = this.f127417l;
        if (cVar2 != null) {
            cVar2.destroyImmediate();
            this.f127417l = null;
        }
        try {
            this.f127408c.destroyImmediate();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.f127412g.destroyImmediate();
        this.f127413h = null;
        this.f127425t = false;
        this.f127424s = false;
    }

    public final void i() {
        if (this.f127414i != null && this.f127418m == null) {
            this.f127415j = new FilamentVertexBuffer(new VertexBuffer.b().h(8).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 12));
            ByteBuffer order = ByteBuffer.allocateDirect(96).order(ByteOrder.nativeOrder());
            order.asFloatBuffer().put(new float[]{-1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, -1.0f, 1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f});
            this.f127415j.q(0, order);
            this.f127416k = new Rb.d(new IndexBuffer.a().c(36).a(IndexBuffer.a.b.USHORT));
            ByteBuffer order2 = ByteBuffer.allocateDirect(72).order(ByteOrder.nativeOrder());
            order2.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3, 4, 5, 6, 4, 6, 7, 0, 3, 7, 0, 7, 4, 1, 5, 6, 1, 6, 2, 0, 1, 5, 0, 5, 4, 3, 2, 6, 3, 6, 7});
            this.f127416k.r(order2);
            this.f127417l = new Rb.c();
            this.f127418m = new FilamentRenderable(new RenderableManager.a(1).f(false), this.f127414i, this.f127417l, this.f127415j, this.f127416k, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            this.f127412g.j(this.f127417l);
        }
    }

    public final void j() {
        if (this.f127414i != null) {
            this.f127425t = true;
            return;
        }
        ByteBuffer g10 = ec.b.g(this.f127423r);
        if (g10 == null) {
            return;
        }
        ByteBuffer duplicate = g10.duplicate();
        duplicate.rewind();
        FilamentMaterialTemplate filamentMaterialTemplate = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
        this.f127413h = filamentMaterialTemplate;
        this.f127414i = filamentMaterialTemplate.e();
        this.f127425t = true;
        i();
    }

    public FilamentScene k() {
        return this.f127412g;
    }

    public FilamentMaterial l() {
        j();
        return this.f127414i;
    }

    public boolean m() {
        return this.f127425t && this.f127414i != null;
    }

    public void n() {
        if (this.f127425t) {
            return;
        }
        if (!this.f127424s) {
            if (!ec.b.h(this.f127423r)) {
                ec.b.j(this.f127423r);
            }
            if (!ec.b.h(this.f127423r)) {
                try {
                    f();
                } catch (Exception unused) {
                    return;
                }
            }
            this.f127424s = ec.b.h(this.f127423r);
        }
        if (!this.f127424s || this.f127425t || this.f127426u) {
            return;
        }
        this.f127426u = true;
        K8.a.I(new a());
    }

    public void o() {
        q(0.0f, 0.0f, 0.0f, 0.1f, 2.0f);
    }

    public void p(float cx, float cy, float cz) {
        q(cx, cy, cz, 0.1f, 2.0f);
    }

    public void q(float cx, float cy, float cz, float near, float far) {
        if (m()) {
            for (int i10 = 0; i10 < 6; i10++) {
                this.f127410e[i10].m(90.0f, 1.0f, near, far, Camera.a.VERTICAL);
            }
            float[] fArr = {cx, cy, cz};
            for (int i11 = 0; i11 < 6; i11++) {
                float[] fArr2 = f127400C[i11];
                float[] fArr3 = f127401D[i11];
                float[] fArr4 = {cx + fArr2[0], cy + fArr2[1], cz + fArr2[2]};
                this.f127410e[i11].i(fArr[0], fArr[1], fArr[2], fArr4[0], fArr4[1], fArr4[2], fArr3[0], fArr3[1], fArr3[2]);
                Qb.a.o(this.f127411f[i11]);
            }
        }
    }
}
