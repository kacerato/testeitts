package com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem;

import Ic.C2634m;
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
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.c;
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

public class ParticleRenderPerParticleData extends C2634m {

    public static final int f74065O = 4096;

    public static final int f74066P = 4;

    public static final int f74067Q = 6;

    public static final int f74068R = 4;

    public static final int f74069S = 21;

    public static final int f74070T = 84;

    public static final float[] f74071U = {-0.5f, -0.5f, 0.5f, -0.5f, 0.5f, 0.5f, -0.5f, 0.5f};

    public static final float[] f74072V = {0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};

    public static final float f74073W = 1.0E-4f;

    public static final int f74074X = 2;

    public static final float f74075Y = 4.0E-4f;

    public static final float f74076Z = 0.9995f;

    public boolean f74077A;

    public boolean f74082F;

    public int f74083G;

    public boolean f74084H;

    public float[] f74085I;

    public float[] f74086J;

    public float[] f74087K;

    public float[] f74088L;

    public float[] f74089M;

    public int[] f74090N;

    public ParticleEmitter.s f74092c;

    @Keep
    private d indexBuffer;

    public final ParticleEmitter f74098k;

    @Keep
    private e shader;

    public boolean f74108u;

    public int f74091b = -1;

    public boolean f74093d = false;

    public boolean f74094e = false;

    public boolean f74095g = false;

    public final Box f74096i = new Box(0.0f, 0.0f, 0.0f, 0.5f, 0.5f, 0.5f);

    public volatile int f74097j = Integer.MIN_VALUE;

    public final List<ParticleRenderable> f74099l = new SteppedArrayList();

    public final Vector3 f74100m = new Vector3();

    public final Vector3 f74101n = new Vector3();

    public final Vector3 f74102o = new Vector3();

    public final f f74103p = new f();

    public final f f74104q = new f();

    public final f f74105r = new f();

    public final f f74106s = new f();

    public final float[] f74107t = new float[16];

    public final Vector3 f74078B = new Vector3();

    public final Vector3 f74079C = new Vector3();

    public final Vector3 f74080D = new Vector3();

    public final Vector3 f74081E = new Vector3();

    public class a implements c {
        public a() {
        }

        @Override
        public void a(Sb.b builder) {
            if (ParticleRenderPerParticleData.this.f74098k.isReceiveLight()) {
                builder.E(MaterialBuilder.n.LIT);
            } else {
                builder.E(MaterialBuilder.n.UNLIT);
            }
            builder.V(MaterialBuilder.u.OBJECT);
            builder.s(MaterialBuilder.e.SURFACE);
            builder.l(false);
            builder.k(true);
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

        public static final int[] f74127a;

        static {
            int[] iArr = new int[ParticleEmitter.s.values().length];
            f74127a = iArr;
            try {
                iArr[ParticleEmitter.s.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f74127a[ParticleEmitter.s.Multiply.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f74127a[ParticleEmitter.s.Fade.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f74127a[ParticleEmitter.s.Additive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ParticleRenderPerParticleData(ParticleEmitter emitter) {
        this.f74098k = emitter;
    }

    private i f() {
        MaterialBuilder.a aVar = MaterialBuilder.a.TRANSPARENT;
        int i10 = b.f74127a[this.f74098k.colorMode.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                aVar = MaterialBuilder.a.MULTIPLY;
            } else if (i10 == 3) {
                aVar = MaterialBuilder.a.FADE;
            } else if (i10 == 4) {
                aVar = MaterialBuilder.a.ADD;
            }
        }
        return new i(aVar, 0.5f, MaterialBuilder.c.BACK, true, null, false, true);
    }

    private h h() {
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
        eVar.o("isLit", this.f74098k.isReceiveLight());
        return new h(eVar, loadFile(this.f74098k.isReceiveLight() ? "lit_vertex_per_particle.glsl" : "unlit_vertex_per_particle.glsl"), new a(), steppedArrayList, steppedArrayList2, false);
    }

    private void j() {
        Iterator<ParticleRenderable> it = this.f74099l.iterator();
        while (it.hasNext()) {
            i(it.next());
        }
        this.f74099l.clear();
        d dVar = this.indexBuffer;
        if (dVar != null) {
            dVar.destroyImmediate();
            this.indexBuffer = null;
        }
        this.shader = null;
    }

    private void k() {
        int size = this.f74099l.size();
        if (size <= 0) {
            return;
        }
        float[] fArr = this.f74085I;
        if (fArr == null || fArr.length != size * 3) {
            int i10 = size * 3;
            this.f74085I = new float[i10];
            this.f74086J = new float[i10];
            this.f74087K = new float[size];
            this.f74088L = new float[size];
            this.f74089M = new float[size * 16];
            this.f74090N = new int[size];
        }
    }

    private int l() {
        return ((this.f74098k.isReceiveLight() ? 1 : 0) * 31) + this.f74098k.colorMode.ordinal();
    }

    public static String loadFile(String file) {
        return C14207a.a("Shaders/Particles/" + file);
    }

    private boolean m() {
        return this.f74097j == l();
    }

    private void p() {
        j();
        if (this.f74091b <= 0) {
            return;
        }
        if (this.indexBuffer == null) {
            this.indexBuffer = new d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
            ByteBuffer order = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
            order.putShort((short) 0);
            order.putShort((short) 1);
            order.putShort((short) 2);
            order.putShort((short) 2);
            order.putShort((short) 3);
            order.putShort((short) 0);
            order.flip();
            this.indexBuffer.r(order);
        }
        this.shader = h().r(f(), "Particles-" + Tc.b.L());
        for (int i10 = 0; i10 < this.f74091b; i10++) {
            ParticleRenderable particleRenderable = new ParticleRenderable(null);
            particleRenderable.f74109a = ByteBuffer.allocateDirect(336).order(ByteOrder.nativeOrder());
            VertexBuffer.b b10 = new VertexBuffer.b().h(4).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 84).b(VertexBuffer.c.UV0, 0, VertexBuffer.a.FLOAT2, 12, 84);
            VertexBuffer.c cVar = VertexBuffer.c.CUSTOM0;
            VertexBuffer.a aVar = VertexBuffer.a.FLOAT4;
            particleRenderable.vertexBuffer = new FilamentVertexBuffer(b10.b(cVar, 0, aVar, 20, 84).b(VertexBuffer.c.CUSTOM1, 0, aVar, 36, 84).b(VertexBuffer.c.CUSTOM2, 0, aVar, 52, 84).b(VertexBuffer.c.CUSTOM3, 0, aVar, 68, 84));
            particleRenderable.f74109a.position(0);
            for (int i11 = 0; i11 < 4; i11++) {
                float[] fArr = f74071U;
                int i12 = i11 * 2;
                float f10 = fArr[i12];
                int i13 = i12 + 1;
                float f11 = fArr[i13];
                float[] fArr2 = f74072V;
                float f12 = fArr2[i12];
                float f13 = fArr2[i13];
                particleRenderable.f74109a.putFloat(f10);
                particleRenderable.f74109a.putFloat(f11);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(f12);
                particleRenderable.f74109a.putFloat(f13);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(1.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(0.0f);
                particleRenderable.f74109a.putFloat(1.0f);
            }
            particleRenderable.f74109a.flip();
            particleRenderable.vertexBuffer.q(0, particleRenderable.f74109a);
            particleRenderable.entity = new Rb.c();
            particleRenderable.material = this.shader.h();
            FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).f(false).y(this.f74098k.isReceiveShadows()).d(this.f74098k.isCastShadows()), particleRenderable.material, particleRenderable.entity, particleRenderable.vertexBuffer, this.indexBuffer, RenderableManager.b.TRIANGLES, this.f74096i);
            particleRenderable.renderable = filamentRenderable;
            filamentRenderable.setGlobalBlendOrderEnabledAt(0, false);
            particleRenderable.renderable.setBlendOrderAt(0, 4096);
            f fVar = new f();
            fVar.Z0(new Vector3(), new Quaternion(), new Vector3(1.0f));
            TransformManager i14 = Qb.a.i();
            i14.b(particleRenderable.entity.getId());
            i14.u(i14.h(particleRenderable.entity.getId()), fVar.o(new float[16]));
            this.f74098k.getEffectiveScene().j(particleRenderable.entity);
            this.f74099l.add(particleRenderable);
        }
    }

    private int q() {
        GameObject H02;
        GameObject gameObject;
        int layer = this.f74098k.getLayer();
        ParticleEmitter particleEmitter = this.f74098k;
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

    public void destroy() {
        j();
        this.f74091b = -1;
    }

    public final void i(ParticleRenderable element) {
        if (element == null) {
            return;
        }
        Rb.c cVar = element.entity;
        FilamentRenderable filamentRenderable = element.renderable;
        FilamentMaterial filamentMaterial = element.material;
        FilamentVertexBuffer filamentVertexBuffer = element.vertexBuffer;
        element.entity = null;
        element.renderable = null;
        element.material = null;
        element.vertexBuffer = null;
        element.f74109a = null;
        if (cVar != null) {
            this.f74098k.getEffectiveScene().s(cVar);
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
        if (cVar != null) {
            cVar.destroyImmediate();
        }
    }

    public void n() {
        h h10;
        if (this.f74098k.f73906X <= 0 || m() || (h10 = h()) == null) {
            return;
        }
        i f10 = f();
        h10.C(f10);
        if (h10.t(f10)) {
            this.f74097j = l();
        }
    }

    public void o() {
        ByteBuffer byteBuffer;
        int i10 = this.f74091b;
        ParticleEmitter particleEmitter = this.f74098k;
        if (i10 != particleEmitter.f73906X || particleEmitter.colorMode != this.f74092c || particleEmitter.isReceiveLight() != this.f74093d || this.f74098k.isCastShadows() != this.f74094e || this.f74098k.isReceiveShadows() != this.f74095g) {
            if (!m()) {
                return;
            }
            this.f74093d = this.f74098k.isReceiveLight();
            this.f74094e = this.f74098k.isCastShadows();
            this.f74095g = this.f74098k.isReceiveShadows();
            ParticleEmitter particleEmitter2 = this.f74098k;
            this.f74091b = particleEmitter2.f73906X;
            this.f74092c = particleEmitter2.colorMode;
            p();
        }
        boolean consumeRequestUpdateRender = this.f74098k.consumeRequestUpdateRender();
        Camera mainCameraAllowEditor = Camera.mainCameraAllowEditor();
        boolean z10 = consumeRequestUpdateRender || s(mainCameraAllowEditor);
        boolean z11 = z10 || this.f74098k.rotateBasedDirection;
        int q10 = q();
        if (q10 < 1) {
            q10 = 1;
        }
        if (z11) {
            if (mainCameraAllowEditor != null) {
                mainCameraAllowEditor.f79250n.transform.S2(this.f74100m);
                mainCameraAllowEditor.f79250n.transform.r4(this.f74101n);
                this.f74102o.set(mainCameraAllowEditor.getRenderCameraDirection());
                if (this.f74108u) {
                    f fVar = this.f74104q;
                    Vector3 vector3 = this.f74100m;
                    fVar.g0(vector3, vector3);
                    f fVar2 = this.f74104q;
                    Vector3 vector32 = this.f74101n;
                    fVar2.g0(vector32, vector32);
                    f fVar3 = this.f74104q;
                    Vector3 vector33 = this.f74102o;
                    fVar3.g0(vector33, vector33);
                }
                this.f74077A = true;
                if (z10) {
                    this.f74084H = true;
                }
            } else {
                this.f74077A = false;
            }
            for (ParticleRenderable particleRenderable : this.f74099l) {
                particleRenderable.renderable.setPriority(q10);
                u(particleRenderable);
                v(particleRenderable);
                if (z10) {
                    int i11 = particleRenderable.f74110b + 4096;
                    if (i11 > 32767) {
                        i11 = 32767;
                    }
                    particleRenderable.renderable.setBlendOrderAt(0, i11);
                }
            }
        } else {
            for (ParticleRenderable particleRenderable2 : this.f74099l) {
                particleRenderable2.renderable.setPriority(q10);
                u(particleRenderable2);
            }
        }
        for (ParticleRenderable particleRenderable3 : this.f74099l) {
            if (particleRenderable3 != null && particleRenderable3.vertexBuffer != null && (byteBuffer = particleRenderable3.f74109a) != null) {
                byteBuffer.position(0);
                ByteBuffer byteBuffer2 = particleRenderable3.f74109a;
                byteBuffer2.limit(byteBuffer2.capacity());
                particleRenderable3.vertexBuffer.q(0, particleRenderable3.f74109a);
            }
        }
    }

    public void parallelUpdate() {
        if (this.f74099l.isEmpty()) {
            return;
        }
        k();
        int size = this.f74098k.getAliveParticles().size();
        if (size > this.f74099l.size()) {
            size = this.f74099l.size();
        }
        int i10 = size;
        int i11 = 0;
        for (com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a aVar : this.f74098k.getAliveParticles()) {
            if (i11 >= this.f74099l.size()) {
                break;
            }
            ParticleRenderable particleRenderable = this.f74099l.get(i11);
            y(particleRenderable, aVar);
            z(particleRenderable);
            int i12 = i11 * 3;
            this.f74085I[i12] = particleRenderable.f74111c.getX();
            int i13 = i12 + 1;
            this.f74085I[i13] = particleRenderable.f74111c.getY();
            int i14 = i12 + 2;
            this.f74085I[i14] = particleRenderable.f74111c.getZ();
            this.f74086J[i12] = particleRenderable.f74124p.getX();
            this.f74086J[i13] = particleRenderable.f74124p.getY();
            this.f74086J[i14] = particleRenderable.f74124p.getZ();
            this.f74087K[i11] = particleRenderable.f74112d;
            this.f74088L[i11] = particleRenderable.f74113e;
            i11++;
        }
        while (i11 < this.f74099l.size()) {
            ParticleRenderable particleRenderable2 = this.f74099l.get(i11);
            w(particleRenderable2);
            z(particleRenderable2);
            int i15 = i11 * 3;
            float[] fArr = this.f74085I;
            fArr[i15] = 0.0f;
            int i16 = i15 + 1;
            fArr[i16] = 0.0f;
            int i17 = i15 + 2;
            fArr[i17] = 0.0f;
            float[] fArr2 = this.f74086J;
            fArr2[i15] = 0.0f;
            fArr2[i16] = 0.0f;
            fArr2[i17] = 0.0f;
            this.f74087K[i11] = 0.0f;
            this.f74088L[i11] = 0.0f;
            i11++;
        }
        ParticleNative.updatePerParticle(i10, this.f74099l.size(), this.f74085I, this.f74086J, this.f74087K, this.f74088L, this.f74098k.rotateBasedDirection, this.f74077A, this.f74100m.getX(), this.f74100m.getY(), this.f74100m.getZ(), this.f74101n.getX(), this.f74101n.getY(), this.f74101n.getZ(), this.f74102o.getX(), this.f74102o.getY(), this.f74102o.getZ(), 1.0E-4f, this.f74089M, this.f74084H, this.f74090N, this.f74078B.getX(), this.f74078B.getY(), this.f74078B.getZ(), this.f74079C.getX(), this.f74079C.getY(), this.f74079C.getZ());
        int i18 = 0;
        for (int i19 = 0; i19 < this.f74099l.size(); i19++) {
            ParticleRenderable particleRenderable3 = this.f74099l.get(i19);
            System.arraycopy(this.f74089M, i18, particleRenderable3.f74125q, 0, 16);
            i18 += 16;
            particleRenderable3.f74113e = this.f74088L[i19];
            if (this.f74084H) {
                particleRenderable3.f74110b = this.f74090N[i19];
            }
        }
        if (this.f74084H) {
            this.f74084H = false;
        }
    }

    public void r(f matrix, f inverseMatrix, boolean enabled) {
        this.f74108u = enabled;
        if (matrix != null) {
            this.f74103p.l(matrix);
        } else {
            this.f74103p.G();
        }
        if (inverseMatrix != null) {
            this.f74104q.l(inverseMatrix);
        } else {
            this.f74104q.G();
        }
        this.f74082F = false;
    }

    public final boolean s(Camera camera) {
        int i10 = this.f74083G;
        this.f74083G = i10 + 1;
        boolean z10 = i10 % 2 == 0;
        if (camera == null) {
            return z10;
        }
        if (!this.f74082F) {
            if (this.f74108u) {
                this.f74104q.P(camera.getRenderCameraPosition(), this.f74080D);
                this.f74104q.g0(camera.getRenderCameraDirection(), this.f74081E);
                this.f74078B.set(this.f74080D);
                this.f74079C.set(this.f74081E);
            } else {
                this.f74078B.set(camera.getRenderCameraPosition());
                this.f74079C.set(camera.getRenderCameraDirection());
            }
            this.f74082F = true;
            return true;
        }
        Vector3 renderCameraPosition = camera.getRenderCameraPosition();
        Vector3 renderCameraDirection = camera.getRenderCameraDirection();
        if (this.f74108u) {
            this.f74104q.P(renderCameraPosition, this.f74080D);
            this.f74104q.g0(renderCameraDirection, this.f74081E);
            renderCameraPosition = this.f74080D;
            renderCameraDirection = this.f74081E;
        }
        float x10 = renderCameraPosition.getX() - this.f74078B.getX();
        float y10 = renderCameraPosition.getY() - this.f74078B.getY();
        float z11 = renderCameraPosition.getZ() - this.f74078B.getZ();
        boolean z12 = ((x10 * x10) + (y10 * y10)) + (z11 * z11) > 4.0E-4f || ((renderCameraDirection.getX() * this.f74079C.getX()) + (renderCameraDirection.getY() * this.f74079C.getY())) + (renderCameraDirection.getZ() * this.f74079C.getZ()) < 0.9995f;
        if (!z10 && !z12) {
            return false;
        }
        this.f74078B.set(renderCameraPosition);
        this.f74079C.set(renderCameraDirection);
        return true;
    }

    public final void u(ParticleRenderable element) {
        if (element == null || element.material == null) {
            return;
        }
        z(element);
        x(element);
        this.f74098k.bindSpriteTexture(element.material, "sprite", element.f74122n);
        element.material.w("transparencyBased", this.f74098k.transparencyBased.ordinal());
        element.material.w("fullWhite", this.f74098k.isFullWhite() ? 1.0f : 0.0f);
        element.material.w("premultiplyAlpha", this.f74098k.colorMode != ParticleEmitter.s.Multiply ? 1.0f : 0.0f);
        element.material.E("particleColor", element.f74114f, element.f74115g, element.f74116h, element.f74117i);
    }

    public final void v(ParticleRenderable element) {
        if (element.f74123o) {
            TransformManager i10 = Qb.a.i();
            int h10 = i10.h(element.entity.getId());
            if (!this.f74108u) {
                i10.u(h10, element.f74125q);
                return;
            }
            this.f74105r.x0(element.f74125q);
            this.f74103p.L(this.f74105r, this.f74106s);
            i10.u(h10, this.f74106s.o(this.f74107t));
        }
    }

    public final void w(ParticleRenderable target) {
        target.f74123o = false;
        target.f74111c.set(0.0f, 0.0f, 0.0f);
        target.f74112d = 0.0f;
        target.f74113e = 0.0f;
        target.f74114f = 1.0f;
        target.f74115g = 1.0f;
        target.f74116h = 1.0f;
        target.f74117i = 0.0f;
        target.f74118j = 0.0f;
        target.f74119k = 0.0f;
        target.f74120l = 0.0f;
        target.f74121m = 1.0f;
        target.f74122n = 0;
        target.f74110b = 0;
    }

    public final void x(ParticleRenderable target) {
        if (target == null || target.f74109a == null) {
            return;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = i10 * 84;
            target.f74109a.putFloat(i11 + 68, target.f74118j);
            target.f74109a.putFloat(i11 + 72, target.f74119k);
            target.f74109a.putFloat(i11 + 76, target.f74120l);
            target.f74109a.putFloat(i11 + 80, target.f74121m);
        }
    }

    public final void y(ParticleRenderable target, com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.a p10) {
        target.f74123o = true;
        target.f74111c.set(p10.f74132b);
        target.f74112d = p10.f74139i;
        target.f74113e = p10.f74140j;
        target.f74114f = p10.f74135e.w();
        target.f74115g = p10.f74135e.u();
        target.f74116h = p10.f74135e.s();
        target.f74117i = p10.f74135e.r();
        target.f74118j = p10.f74136f.w();
        target.f74119k = p10.f74136f.u();
        target.f74120l = p10.f74136f.s();
        target.f74121m = p10.f74136f.r();
        target.f74122n = this.f74098k.resolveSpriteIndex(p10);
        target.f74124p.set(p10.f74132b);
        target.f74124p.subLocal(p10.f74131a);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0060 A[LOOP:0: B:18:0x005d->B:20:0x0060, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z(ParticleRenderable target) {
        float f10;
        float f11;
        float f12;
        float f13;
        TextureConfig u02;
        int C10;
        if (target == null || target.f74109a == null) {
            return;
        }
        if (target.f74123o && this.f74098k.hasSpriteTexture()) {
            p textureInstance = this.f74098k.getTextureInstance();
            if ((textureInstance instanceof ub.g) && (u02 = ((ub.g) textureInstance).u0()) != null && u02.v() != null && (C10 = u02.v().C()) > 0) {
                Rect B10 = u02.v().B(Nc.b.F(0, target.f74122n, C10 - 1));
                f11 = B10.d();
                f12 = B10.e();
                f10 = B10.c();
                f13 = B10.b();
                for (int i10 = 0; i10 < 4; i10++) {
                    int i11 = i10 * 84;
                    target.f74109a.putFloat(i11 + 52, f11);
                    target.f74109a.putFloat(i11 + 56, f12);
                    target.f74109a.putFloat(i11 + 60, f10);
                    target.f74109a.putFloat(i11 + 64, f13);
                }
            }
        }
        f10 = 1.0f;
        f11 = 0.0f;
        f12 = 0.0f;
        f13 = 1.0f;
        while (i10 < 4) {
        }
    }

    public static class ParticleRenderable {

        public ByteBuffer f74109a;

        public int f74110b;

        public final Vector3 f74111c;

        public float f74112d;

        public float f74113e;

        @Keep
        Rb.c entity;

        public float f74114f;

        public float f74115g;

        public float f74116h;

        public float f74117i;

        public float f74118j;

        public float f74119k;

        public float f74120l;

        public float f74121m;

        @Keep
        FilamentMaterial material;

        public int f74122n;

        public boolean f74123o;

        public final Vector3 f74124p;

        public final float[] f74125q;

        @Keep
        FilamentRenderable renderable;

        @Keep
        FilamentVertexBuffer vertexBuffer;

        public ParticleRenderable() {
            this.f74110b = 0;
            this.f74111c = new Vector3();
            this.f74112d = 1.0f;
            this.f74113e = 0.0f;
            this.f74114f = 1.0f;
            this.f74115g = 1.0f;
            this.f74116h = 1.0f;
            this.f74117i = 1.0f;
            this.f74118j = 0.0f;
            this.f74119k = 0.0f;
            this.f74120l = 0.0f;
            this.f74121m = 1.0f;
            this.f74122n = 0;
            this.f74123o = false;
            this.f74124p = new Vector3();
            this.f74125q = new float[16];
        }

        public ParticleRenderable(a aVar) {
            this();
        }
    }
}
