package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem;

import Ic.C2634m;
import Rb.c;
import Rb.d;
import androidx.annotation.Keep;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Texture.Sprite.Rect;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.e;
import ec.g;
import ec.h;
import ec.i;
import gc.C13320a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Iterator;
import java.util.List;
import mc.C14207a;
import ub.p;

public class ParticleRenderBatchData extends C2634m {

    public static final int f74029J = 4096;

    public static final int f74030K = 4;

    public static final int f74031L = 6;

    public static final int f74032M = 4;

    public static final int f74033N = 21;

    public static final int f74034O = 84;

    public static final float f74035P = 1.0E-4f;

    public boolean f74036A;

    public float[] f74037B;

    public float[] f74038C;

    public float[] f74039D;

    public float[] f74040E;

    public float[] f74041F;

    public float[] f74042G;

    public float[] f74043H;

    public float[] f74044I;

    public ParticleEmitter.s f74046c;

    @Keep
    private c entity;

    public ByteBuffer f74050i;

    @Keep
    private d indexBuffer;

    public final ParticleEmitter f74052k;

    @Keep
    private FilamentMaterial material;

    @Keep
    private FilamentRenderable renderable;

    @Keep
    private e shader;

    public boolean f74061t;

    public boolean f74062u;

    @Keep
    private FilamentVertexBuffer vertexBuffer;

    public int f74045b = -1;

    public boolean f74047d = false;

    public boolean f74048e = false;

    public boolean f74049g = false;

    public volatile int f74051j = Integer.MIN_VALUE;

    public final Box f74053l = new Box();

    public final Vector3 f74054m = new Vector3();

    public final Vector3 f74055n = new Vector3();

    public final Vector3 f74056o = new Vector3();

    public final Vector3 f74057p = new Vector3();

    public final f f74058q = new f();

    public final f f74059r = new f();

    public final float[] f74060s = new float[16];

    public class a implements ec.c {
        public a() {
        }

        @Override
        public void a(Sb.b builder) {
            if (ParticleRenderBatchData.this.f74052k.isReceiveLight()) {
                builder.E(MaterialBuilder.n.LIT);
            } else {
                builder.E(MaterialBuilder.n.UNLIT);
            }
            builder.V(MaterialBuilder.u.OBJECT);
            builder.s(MaterialBuilder.e.SURFACE);
            builder.l(false);
            builder.k(true);
            builder.m(false);
            builder.b(false);
            builder.T(MaterialBuilder.s.CUSTOM0, "vertexColor");
            builder.T(MaterialBuilder.s.CUSTOM1, "particleEmissive");
            builder.T(MaterialBuilder.s.CUSTOM2, "spriteRect");
            builder.C(MaterialBuilder.t.UV0);
            builder.C(MaterialBuilder.t.CUSTOM0);
            builder.C(MaterialBuilder.t.CUSTOM1);
            builder.C(MaterialBuilder.t.CUSTOM2);
            builder.C(MaterialBuilder.t.CUSTOM3);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static class b {

        public static final int[] f74064a;

        static {
            int[] iArr = new int[ParticleEmitter.s.values().length];
            f74064a = iArr;
            try {
                iArr[ParticleEmitter.s.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74064a[ParticleEmitter.s.Multiply.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74064a[ParticleEmitter.s.Fade.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f74064a[ParticleEmitter.s.Additive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ParticleRenderBatchData(ParticleEmitter emitter) {
        this.f74052k = emitter;
    }

    private void k() {
        float[] fArr;
        int i10 = this.f74045b;
        if (i10 <= 0) {
            return;
        }
        float[] fArr2 = this.f74037B;
        if (fArr2 == null || fArr2.length != i10 * 3 || (fArr = this.f74042G) == null || fArr.length != i10 * 4) {
            this.f74037B = new float[i10 * 3];
            this.f74038C = new float[i10 * 3];
            this.f74039D = new float[i10];
            this.f74040E = new float[i10];
            this.f74041F = new float[i10 * 4];
            this.f74042G = new float[i10 * 4];
            this.f74043H = new float[i10 * 4];
            this.f74044I = new float[i10];
        }
    }

    public static String loadFile(String file) {
        return C14207a.a("Shaders/Particles/" + file);
    }

    public void destroy() {
        j();
        this.f74045b = -1;
    }

    public final void f() {
        if (this.entity == null) {
            return;
        }
        TransformManager i10 = Qb.a.i();
        int h10 = i10.h(this.entity.getId());
        if (!this.f74061t) {
            i10.u(h10, f.y());
        } else {
            this.f74058q.o(this.f74060s);
            i10.u(h10, this.f74060s);
        }
    }

    public final i h() {
        MaterialBuilder.a aVar = MaterialBuilder.a.TRANSPARENT;
        int i10 = b.f74064a[this.f74052k.colorMode.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                aVar = MaterialBuilder.a.MULTIPLY;
            } else if (i10 == 3) {
                aVar = MaterialBuilder.a.FADE;
            } else if (i10 == 4) {
                aVar = MaterialBuilder.a.ADD;
            }
        }
        return new i(aVar, 0.5f, MaterialBuilder.c.BACK, false, null, false, true);
    }

    public final h i() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        steppedArrayList.add(new ec.f(rVar, gVar, "transparencyBased"));
        steppedArrayList.add(new ec.f(rVar, gVar, "fullWhite"));
        steppedArrayList.add(new ec.f(rVar, gVar, "premultiplyAlpha"));
        steppedArrayList.add(new ec.f(MaterialBuilder.r.FLOAT4, gVar, "particleColor"));
        steppedArrayList2.add(new g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "sprite"));
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        steppedArrayList3.add(new C13320a("isLit"));
        gc.e eVar = new gc.e(steppedArrayList3, new SteppedArrayList(), loadFile("fragment.glsl"));
        eVar.o("isLit", this.f74052k.isReceiveLight());
        return new h(eVar, loadFile(this.f74052k.isReceiveLight() ? "lit_vertex.glsl" : "unlit_vertex.glsl"), new a(), steppedArrayList, steppedArrayList2, false);
    }

    public final void j() {
        c cVar = this.entity;
        FilamentRenderable filamentRenderable = this.renderable;
        FilamentMaterial filamentMaterial = this.material;
        FilamentVertexBuffer filamentVertexBuffer = this.vertexBuffer;
        d dVar = this.indexBuffer;
        this.entity = null;
        this.renderable = null;
        this.material = null;
        this.vertexBuffer = null;
        this.indexBuffer = null;
        this.f74050i = null;
        this.shader = null;
        if (cVar != null) {
            this.f74052k.getEffectiveScene().s(cVar);
        }
        if (filamentRenderable != null) {
            filamentRenderable.destroyImmediate();
        }
        if (filamentMaterial != null) {
            filamentMaterial.destroyImmediate();
        }
        if (filamentVertexBuffer != null) {
            filamentVertexBuffer.destroyImmediate();
        }
        if (dVar != null) {
            dVar.destroyImmediate();
        }
        if (cVar != null) {
            cVar.destroyImmediate();
        }
    }

    public final void l(com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a particle, float[] out, int offset) {
        TextureConfig u02;
        if (particle == null || out == null) {
            return;
        }
        out[offset] = 0.0f;
        int i10 = offset + 1;
        out[i10] = 0.0f;
        int i11 = offset + 2;
        out[i11] = 1.0f;
        int i12 = offset + 3;
        out[i12] = 1.0f;
        if (this.f74052k.hasSpriteTexture()) {
            p textureInstance = this.f74052k.getTextureInstance();
            if ((textureInstance instanceof ub.g) && (u02 = ((ub.g) textureInstance).u0()) != null && u02.v() != null && u02.v().C() > 0) {
                Rect B10 = u02.v().B(this.f74052k.resolveSpriteIndex(particle));
                out[offset] = B10.d();
                out[i10] = B10.e();
                out[i11] = B10.c();
                out[i12] = B10.b();
            }
        }
    }

    public final int m() {
        return ((this.f74052k.isReceiveLight() ? 1 : 0) * 31) + this.f74052k.colorMode.ordinal();
    }

    public final boolean n() {
        return this.f74051j == m();
    }

    public void o() {
        h i10;
        if (this.f74052k.f73906X <= 0 || n() || (i10 = i()) == null) {
            return;
        }
        i h10 = h();
        i10.C(h10);
        if (i10.t(h10)) {
            this.f74051j = m();
        }
    }

    public void p() {
        int i10 = this.f74045b;
        ParticleEmitter particleEmitter = this.f74052k;
        if (i10 != particleEmitter.f73906X || particleEmitter.colorMode != this.f74046c || particleEmitter.isReceiveLight() != this.f74047d || this.f74052k.isCastShadows() != this.f74048e || this.f74052k.isReceiveShadows() != this.f74049g) {
            if (!n()) {
                return;
            }
            this.f74047d = this.f74052k.isReceiveLight();
            this.f74048e = this.f74052k.isCastShadows();
            this.f74049g = this.f74052k.isReceiveShadows();
            ParticleEmitter particleEmitter2 = this.f74052k;
            this.f74045b = particleEmitter2.f73906X;
            this.f74046c = particleEmitter2.colorMode;
            q();
        }
        this.f74052k.consumeRequestUpdateRender();
        Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
        if (mainCameraAllowEditor != null) {
            mainCameraAllowEditor.f79250n.transform.S2(this.f74054m);
            mainCameraAllowEditor.f79250n.transform.r4(this.f74055n);
            this.f74056o.set(mainCameraAllowEditor.getRenderCameraPosition());
            this.f74057p.set(mainCameraAllowEditor.getRenderCameraDirection());
            if (this.f74061t) {
                f fVar = this.f74059r;
                Vector3 vector3 = this.f74054m;
                fVar.g0(vector3, vector3);
                f fVar2 = this.f74059r;
                Vector3 vector32 = this.f74055n;
                fVar2.g0(vector32, vector32);
                f fVar3 = this.f74059r;
                Vector3 vector33 = this.f74057p;
                fVar3.g0(vector33, vector33);
                f fVar4 = this.f74059r;
                Vector3 vector34 = this.f74056o;
                fVar4.P(vector34, vector34);
            }
            this.f74062u = true;
            this.f74036A = true;
        } else {
            this.f74062u = false;
            this.f74036A = false;
        }
        if (this.entity == null || this.vertexBuffer == null) {
            return;
        }
        int r10 = r();
        int i11 = r10 >= 1 ? r10 : 1;
        this.renderable.setPriority(i11);
        this.renderable.setBlendOrderAt(0, i11 + 4096);
        ParticleEmitter particleEmitter3 = this.f74052k;
        particleEmitter3.bindSpriteTexture(this.material, "sprite", particleEmitter3.getSpriteIndex());
        this.material.w("transparencyBased", this.f74052k.transparencyBased.ordinal());
        this.material.w("fullWhite", this.f74052k.isFullWhite() ? 1.0f : 0.0f);
        this.material.w("premultiplyAlpha", this.f74052k.colorMode != ParticleEmitter.s.Multiply ? 1.0f : 0.0f);
        this.material.E("particleColor", 1.0f, 1.0f, 1.0f, 1.0f);
        this.vertexBuffer.q(0, this.f74050i);
        this.renderable.setBounding(this.f74053l);
    }

    public void parallelUpdate() {
        if (this.entity == null || this.vertexBuffer == null) {
            return;
        }
        int size = this.f74052k.getAliveParticles().size();
        int i10 = this.f74045b;
        if (size > i10) {
            size = i10;
        }
        k();
        if (this.f74037B == null) {
            return;
        }
        int i11 = 0;
        int i12 = 0;
        for (com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar : this.f74052k.getAliveParticles()) {
            if (i12 >= size) {
                break;
            }
            int i13 = i12 * 3;
            int i14 = i12 * 4;
            this.f74037B[i13] = aVar.f74132b.getX();
            int i15 = i13 + 1;
            this.f74037B[i15] = aVar.f74132b.getY();
            int i16 = i13 + 2;
            this.f74037B[i16] = aVar.f74132b.getZ();
            this.f74038C[i13] = aVar.f74131a.getX();
            this.f74038C[i15] = aVar.f74131a.getY();
            this.f74038C[i16] = aVar.f74131a.getZ();
            this.f74039D[i12] = aVar.f74139i;
            this.f74040E[i12] = aVar.f74140j;
            this.f74041F[i14] = aVar.f74135e.w();
            int i17 = i14 + 1;
            this.f74041F[i17] = aVar.f74135e.u();
            int i18 = i14 + 2;
            this.f74041F[i18] = aVar.f74135e.s();
            int i19 = i14 + 3;
            this.f74041F[i19] = aVar.f74135e.r();
            this.f74042G[i14] = aVar.f74136f.w();
            this.f74042G[i17] = aVar.f74136f.u();
            this.f74042G[i18] = aVar.f74136f.s();
            this.f74042G[i19] = aVar.f74136f.r();
            l(aVar, this.f74043H, i14);
            this.f74044I[i12] = aVar.f74144n;
            i12++;
        }
        ParticleNative.buildBatchVertices(this.f74050i, this.f74045b, size, this.f74037B, this.f74038C, this.f74039D, this.f74040E, this.f74041F, this.f74042G, this.f74043H, this.f74044I, this.f74052k.rotateBasedDirection, this.f74062u, this.f74054m.getX(), this.f74054m.getY(), this.f74054m.getZ(), this.f74055n.getX(), this.f74055n.getY(), this.f74055n.getZ(), this.f74036A, this.f74056o.getX(), this.f74056o.getY(), this.f74056o.getZ(), this.f74057p.getX(), this.f74057p.getY(), this.f74057p.getZ(), 1.0E-4f);
        Iterator<com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a> it = this.f74052k.getAliveParticles().iterator();
        while (true) {
            int i20 = i11;
            if (!it.hasNext()) {
                break;
            }
            com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a next = it.next();
            if (i20 >= size) {
                break;
            }
            i11 = i20 + 1;
            next.f74144n = this.f74044I[i20];
        }
        AABB bounding = this.f74052k.getBounding();
        this.f74053l.c(bounding.m().getX(), bounding.m().getY(), bounding.m().getZ());
        this.f74053l.d(bounding.getRadius(), bounding.getRadius(), bounding.getRadius());
    }

    public final void q() {
        j();
        int i10 = this.f74045b;
        if (i10 <= 0) {
            return;
        }
        int i11 = i10 * 6;
        this.f74050i = ByteBuffer.allocateDirect(i10 * 336).order(ByteOrder.nativeOrder());
        VertexBuffer.b b10 = new VertexBuffer.b().h(i10 * 4).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 84).b(VertexBuffer.c.UV0, 0, VertexBuffer.a.FLOAT2, 12, 84);
        VertexBuffer.c cVar = VertexBuffer.c.CUSTOM0;
        VertexBuffer.a aVar = VertexBuffer.a.FLOAT4;
        this.vertexBuffer = new FilamentVertexBuffer(b10.b(cVar, 0, aVar, 20, 84).b(VertexBuffer.c.CUSTOM1, 0, aVar, 36, 84).b(VertexBuffer.c.CUSTOM2, 0, aVar, 52, 84).b(VertexBuffer.c.CUSTOM3, 0, aVar, 68, 84));
        this.f74050i.position(0);
        for (int i12 = 0; i12 < i10 * 84; i12++) {
            this.f74050i.putFloat(0.0f);
        }
        this.f74050i.flip();
        this.vertexBuffer.q(0, this.f74050i);
        k();
        this.indexBuffer = new d(new IndexBuffer.a().c(i11).a(IndexBuffer.a.b.USHORT));
        ByteBuffer order = ByteBuffer.allocateDirect(i10 * 12).order(ByteOrder.nativeOrder());
        for (int i13 = 0; i13 < this.f74045b; i13++) {
            int i14 = i13 * 4;
            short s10 = (short) i14;
            order.putShort(s10);
            order.putShort((short) (i14 + 1));
            short s11 = (short) (i14 + 2);
            order.putShort(s11);
            order.putShort(s11);
            order.putShort((short) (i14 + 3));
            order.putShort(s10);
        }
        order.flip();
        this.indexBuffer.r(order);
        e r10 = i().r(h(), "Particles-" + Tc.b.L());
        this.shader = r10;
        this.material = r10.h();
        this.entity = new c();
        this.f74053l.c(0.0f, 0.0f, 0.0f);
        this.f74053l.d(10.0f, 10.0f, 10.0f);
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).f(false).y(this.f74052k.isReceiveShadows()).d(this.f74052k.isCastShadows()), this.material, this.entity, this.vertexBuffer, this.indexBuffer, RenderableManager.b.TRIANGLES, this.f74053l);
        this.renderable = filamentRenderable;
        filamentRenderable.setGlobalBlendOrderEnabledAt(0, false);
        this.renderable.setBlendOrderAt(0, 4096);
        f fVar = new f();
        fVar.Z0(new Vector3(), new Quaternion(), new Vector3(1.0f));
        TransformManager i15 = Qb.a.i();
        i15.b(this.entity.getId());
        i15.u(i15.h(this.entity.getId()), fVar.o(new float[16]));
        this.f74052k.getEffectiveScene().j(this.entity);
        f();
    }

    public final int r() {
        GameObject H02;
        GameObject gameObject;
        int layer = this.f74052k.getLayer();
        ParticleEmitter particleEmitter = this.f74052k;
        GameObject gameObject2 = particleEmitter != null ? particleEmitter.f79250n : null;
        if (gameObject2 != null && (H02 = gameObject2.H0()) != null) {
            List<GameObject> z02 = H02.z0();
            for (int i10 = 0; i10 < z02.size() && (gameObject = z02.get(i10)) != gameObject2; i10++) {
                if (gameObject != null && gameObject.d0(ParticleEmitter.class) != null) {
                    layer++;
                }
            }
        }
        int i11 = layer >= 0 ? layer : 0;
        if (i11 > 7) {
            return 7;
        }
        return i11;
    }

    public void s(f matrix, f inverseMatrix, boolean enabled) {
        this.f74061t = enabled;
        if (matrix != null) {
            this.f74058q.l(matrix);
        } else {
            this.f74058q.G();
        }
        if (inverseMatrix != null) {
            this.f74059r.l(inverseMatrix);
        } else {
            this.f74059r.G();
        }
        f();
    }
}
