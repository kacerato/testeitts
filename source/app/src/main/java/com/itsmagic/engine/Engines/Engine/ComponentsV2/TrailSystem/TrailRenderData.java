package com.itsmagic.engine.Engines.Engine.ComponentsV2.TrailSystem;

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
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.TrailSystem.TrailRenderer;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.e;
import ec.f;
import ec.g;
import ec.h;
import ec.i;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;
import mc.C14207a;
import ub.p;
import yb.C16165b;

public class TrailRenderData extends C2634m {

    public static final int f77295l = 4096;

    public static final int f77296m = 4;

    public static final int f77297n = 9;

    public static final int f77298o = 36;

    public TrailRenderer.o f77300c;

    @Keep
    private c entity;

    public ByteBuffer f77304i;

    @Keep
    private d indexBuffer;

    public final TrailRenderer f77305j;

    @Keep
    private FilamentMaterial material;

    @Keep
    private FilamentRenderable renderable;

    @Keep
    private e shader;

    @Keep
    private FilamentVertexBuffer vertexBuffer;

    public int f77299b = -1;

    public boolean f77301d = false;

    public boolean f77302e = false;

    public boolean f77303g = false;

    public final Box f77306k = new Box();

    public class a implements ec.c {
        public a() {
        }

        @Override
        public void a(Sb.b builder) {
            if (TrailRenderData.this.f77305j.isReceiveLight()) {
                builder.E(MaterialBuilder.n.LIT);
            } else {
                builder.E(MaterialBuilder.n.UNLIT);
            }
            builder.V(MaterialBuilder.u.OBJECT);
            builder.s(MaterialBuilder.e.SURFACE);
            builder.l(false);
            builder.k(true);
            builder.T(MaterialBuilder.s.CUSTOM0, "vertexColor");
            builder.C(MaterialBuilder.t.UV0);
            builder.C(MaterialBuilder.t.CUSTOM0);
            builder.i(MaterialBuilder.c.BACK);
        }
    }

    public static class b {

        public static final int[] f77308a;

        static {
            int[] iArr = new int[TrailRenderer.o.values().length];
            f77308a = iArr;
            try {
                iArr[TrailRenderer.o.Normal.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f77308a[TrailRenderer.o.Multiply.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f77308a[TrailRenderer.o.Fade.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f77308a[TrailRenderer.o.Additive.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public TrailRenderData(TrailRenderer trail) {
        this.f77305j = trail;
    }

    private void f() {
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
        this.f77304i = null;
        this.shader = null;
        if (cVar != null) {
            this.f77305j.getEffectiveScene().s(cVar);
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

    public static String loadFile(String file) {
        return C14207a.a("Shaders/Trails/" + file);
    }

    private void o() {
        f();
        int i10 = this.f77299b;
        if (i10 < 2) {
            return;
        }
        int i11 = i10 - 1;
        int i12 = i11 * 6;
        this.f77304i = ByteBuffer.allocateDirect(i10 * 72).order(ByteOrder.nativeOrder());
        this.vertexBuffer = new FilamentVertexBuffer(new VertexBuffer.b().h(i10 * 2).c(1).b(VertexBuffer.c.POSITION, 0, VertexBuffer.a.FLOAT3, 0, 36).b(VertexBuffer.c.UV0, 0, VertexBuffer.a.FLOAT2, 12, 36).b(VertexBuffer.c.CUSTOM0, 0, VertexBuffer.a.FLOAT4, 20, 36));
        this.f77304i.position(0);
        for (int i13 = 0; i13 < i10 * 18; i13++) {
            this.f77304i.putFloat(0.0f);
        }
        this.f77304i.flip();
        this.vertexBuffer.q(0, this.f77304i);
        this.indexBuffer = new d(new IndexBuffer.a().c(i12).a(IndexBuffer.a.b.USHORT));
        ByteBuffer order = ByteBuffer.allocateDirect(i11 * 12).order(ByteOrder.nativeOrder());
        for (int i14 = 0; i14 < this.f77299b - 1; i14++) {
            int i15 = i14 * 2;
            order.putShort((short) i15);
            short s10 = (short) (i15 + 1);
            order.putShort(s10);
            short s11 = (short) (i15 + 2);
            order.putShort(s11);
            order.putShort(s11);
            order.putShort(s10);
            order.putShort((short) (i15 + 3));
        }
        order.flip();
        this.indexBuffer.r(order);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        MaterialBuilder.r rVar = MaterialBuilder.r.FLOAT;
        MaterialBuilder.g gVar = MaterialBuilder.g.LOW;
        steppedArrayList.add(new f(rVar, gVar, "transparencyBased"));
        steppedArrayList.add(new f(rVar, gVar, "fullWhite"));
        steppedArrayList.add(new f(rVar, gVar, "premultiplyAlpha"));
        steppedArrayList.add(new f(MaterialBuilder.r.FLOAT4, gVar, "particleColor"));
        steppedArrayList2.add(new g(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "sprite"));
        h hVar = new h(new gc.e(new SteppedArrayList(), new SteppedArrayList(), loadFile("fragment.glsl")), loadFile(this.f77305j.isReceiveLight() ? "lit_vertex.glsl" : "unlit_vertex.glsl"), new a(), steppedArrayList, steppedArrayList2, false);
        MaterialBuilder.a aVar = MaterialBuilder.a.TRANSPARENT;
        int i16 = b.f77308a[this.f77305j.getColorMode().ordinal()];
        if (i16 != 1) {
            if (i16 == 2) {
                aVar = MaterialBuilder.a.MULTIPLY;
            } else if (i16 == 3) {
                aVar = MaterialBuilder.a.FADE;
            } else if (i16 == 4) {
                aVar = MaterialBuilder.a.ADD;
            }
        }
        e r10 = hVar.r(new i(aVar, 0.5f, MaterialBuilder.c.BACK, true), "Trails-" + Tc.b.L());
        this.shader = r10;
        this.material = r10.h();
        this.entity = new c();
        this.f77306k.c(0.0f, 0.0f, 0.0f);
        this.f77306k.d(10.0f, 10.0f, 10.0f);
        FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).f(false).y(this.f77305j.isReceiveShadows()).d(this.f77305j.isCastShadows()), this.material, this.entity, this.vertexBuffer, this.indexBuffer, RenderableManager.b.TRIANGLES, this.f77306k);
        this.renderable = filamentRenderable;
        filamentRenderable.setGlobalBlendOrderEnabledAt(0, true);
        this.renderable.setBlendOrderAt(0, 4096);
        com.itsmagic.engine.Engines.Engine.Vector.f fVar = new com.itsmagic.engine.Engines.Engine.Vector.f();
        fVar.Z0(new Vector3(), new Quaternion(), new Vector3(1.0f));
        TransformManager i17 = Qb.a.i();
        i17.b(this.entity.getId());
        i17.u(i17.h(this.entity.getId()), fVar.o(new float[16]));
        this.f77305j.getEffectiveScene().j(this.entity);
    }

    private int q() {
        int i10;
        GameObject H02;
        GameObject gameObject;
        TrailRenderer trailRenderer = this.f77305j;
        GameObject gameObject2 = trailRenderer != null ? trailRenderer.f79250n : null;
        if (gameObject2 == null || (H02 = gameObject2.H0()) == null) {
            i10 = 0;
        } else {
            List<GameObject> z02 = H02.z0();
            i10 = 0;
            for (int i11 = 0; i11 < z02.size() && (gameObject = z02.get(i11)) != gameObject2; i11++) {
                if (gameObject != null && gameObject.d0(TrailRenderer.class) != null) {
                    i10++;
                }
            }
        }
        int i12 = i10 >= 0 ? i10 : 0;
        if (i12 > 7) {
            return 7;
        }
        return i12;
    }

    public void destroy() {
        f();
        this.f77299b = -1;
    }

    public void h() {
        if (this.f77299b != this.f77305j.getMaxPoints()) {
            this.f77299b = this.f77305j.getMaxPoints();
            o();
        }
    }

    public void i(int filledVertices) {
        k(filledVertices, null, null, 0.0f, null);
    }

    public void j(int filledVertices, Vector3 left, Vector3 right, float uLeft, float vLeft, float uRight, float vRight, ColorINT color) {
        int i10;
        ByteBuffer byteBuffer = this.f77304i;
        if (byteBuffer == null || (i10 = this.f77299b) <= 0) {
            return;
        }
        int i11 = (i10 * 2) - filledVertices;
        if (i11 <= 0) {
            byteBuffer.position(0);
            ByteBuffer byteBuffer2 = this.f77304i;
            byteBuffer2.limit(byteBuffer2.capacity());
            return;
        }
        if (left == null || right == null || color == null) {
            for (int i12 = 0; i12 < i11 * 9; i12++) {
                this.f77304i.putFloat(0.0f);
            }
        } else {
            int i13 = i11 / 2;
            for (int i14 = 0; i14 < i13; i14++) {
                n(left, uLeft, vLeft, color);
                n(right, uRight, vRight, color);
            }
        }
        this.f77304i.position(0);
        ByteBuffer byteBuffer3 = this.f77304i;
        byteBuffer3.limit(byteBuffer3.capacity());
    }

    public void k(int filledVertices, Vector3 left, Vector3 right, float u10, ColorINT color) {
        j(filledVertices, left, right, u10, 0.0f, u10, 1.0f, color);
    }

    public boolean l() {
        return (this.f77304i == null || this.vertexBuffer == null) ? false : true;
    }

    public void m() {
        if (this.f77299b != this.f77305j.getMaxPoints() || this.f77305j.getColorMode() != this.f77300c || this.f77305j.isReceiveLight() != this.f77301d || this.f77305j.isCastShadows() != this.f77302e || this.f77305j.isReceiveShadows() != this.f77303g) {
            this.f77301d = this.f77305j.isReceiveLight();
            this.f77302e = this.f77305j.isCastShadows();
            this.f77303g = this.f77305j.isReceiveShadows();
            this.f77299b = this.f77305j.getMaxPoints();
            this.f77300c = this.f77305j.getColorMode();
            o();
        }
        if (this.entity == null || this.vertexBuffer == null) {
            return;
        }
        int q10 = q();
        if (q10 < 1) {
            q10 = 1;
        }
        this.renderable.setPriority(q10);
        this.renderable.setBlendOrderAt(0, q10 + 4096);
        if (p.L(this.f77305j.getTextureInstance())) {
            this.f77305j.getTextureInstance().f(this.material, "sprite");
        } else {
            C16165b.f130161g.f(this.material, "sprite");
        }
        this.material.w("transparencyBased", this.f77305j.getTransparencyBased().ordinal());
        this.material.w("fullWhite", this.f77305j.isFullWhite() ? 1.0f : 0.0f);
        this.material.w("premultiplyAlpha", this.f77305j.getColorMode() != TrailRenderer.o.Multiply ? 1.0f : 0.0f);
        this.material.E("particleColor", 1.0f, 1.0f, 1.0f, 1.0f);
        this.vertexBuffer.q(0, this.f77304i);
        AABB bounding = this.f77305j.getBounding();
        this.f77306k.c(bounding.m().getX(), bounding.m().getY(), bounding.m().getZ());
        this.f77306k.d(bounding.getRadius(), bounding.getRadius(), bounding.getRadius());
        this.renderable.setBounding(this.f77306k);
    }

    public void n(Vector3 position, float u10, float v10, ColorINT color) {
        ByteBuffer byteBuffer = this.f77304i;
        if (byteBuffer == null) {
            return;
        }
        byteBuffer.putFloat(position.getX());
        this.f77304i.putFloat(position.getY());
        this.f77304i.putFloat(position.getZ());
        this.f77304i.putFloat(u10);
        this.f77304i.putFloat(v10);
        this.f77304i.putFloat(color.w());
        this.f77304i.putFloat(color.u());
        this.f77304i.putFloat(color.s());
        this.f77304i.putFloat(color.r());
    }

    public void p() {
        ByteBuffer byteBuffer = this.f77304i;
        if (byteBuffer != null) {
            byteBuffer.position(0);
            ByteBuffer byteBuffer2 = this.f77304i;
            byteBuffer2.limit(byteBuffer2.capacity());
        }
    }
}
