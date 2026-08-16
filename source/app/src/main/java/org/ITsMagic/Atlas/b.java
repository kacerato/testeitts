package org.ITsMagic.Atlas;

import android.graphics.Bitmap;
import com.google.android.filament.Box;
import com.google.android.filament.IndexBuffer;
import com.google.android.filament.Material;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.VertexBuffer;
import com.google.android.filament.filamat.MaterialBuilder;
import com.itsmagic.engine.Engines.Engine.Texture.Data.a;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentCamera;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterialTemplate;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentVertexBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;
import org.ITsMagic.Atlas.c;
import ub.p;

public class b {

    public static final String f99931i = "atlas-dilate-gpu-v1";

    public static FilamentMaterialTemplate f99932j;

    public final FilamentView f99933a;

    public final FilamentScene f99934b;

    public final Rb.c f99935c;

    public final FilamentRenderable f99936d;

    public final FilamentCamera f99937e;

    public final FilamentMaterial f99938f;

    public final FilamentVertexBuffer f99939g;

    public final Rb.d f99940h;

    public class a implements Runnable {

        public final int f99941b;

        public final int f99942c;

        public final p f99943d;

        public final int f99944e;

        public final c.b f99945f;

        public final CountDownLatch f99946g;

        public final AtomicReference f99947h;

        public a(final int val$width, final int val$height, final p val$texture, final int val$iterations, final c.b val$listener, final CountDownLatch val$latch, final AtomicReference val$errorRef) {
            this.f99941b = val$width;
            this.f99942c = val$height;
            this.f99943d = val$texture;
            this.f99944e = val$iterations;
            this.f99945f = val$listener;
            this.f99946g = val$latch;
            this.f99947h = val$errorRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:44:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x0097 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r2v0, types: [org.ITsMagic.Atlas.b$a] */
        /* JADX WARN: Type inference failed for: r2v10 */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            Throwable th2;
            Tb.a aVar;
            Tb.a aVar2;
            b bVar;
            b bVar2;
            b bVar3 = 0;
            b bVar4 = null;
            try {
                b.r();
                aVar2 = new Tb.a(this.f99941b, this.f99942c, 100, 1, false);
                try {
                    Tb.a aVar3 = new Tb.a(this.f99941b, this.f99942c, 100, 1, false);
                    try {
                        b bVar5 = new b(this.f99943d, this.f99941b, this.f99942c, bVar3);
                        try {
                            bVar = new b(aVar2.l(), this.f99941b, this.f99942c, bVar3);
                            try {
                                bVar2 = new b(aVar3.l(), this.f99941b, this.f99942c, bVar3);
                                try {
                                    d dVar = new d(bVar5, bVar, bVar2, aVar2, aVar3, this.f99944e, null);
                                    c.b bVar6 = this.f99945f;
                                    if (bVar6 != null) {
                                        bVar6.b("GPU Dilate pass");
                                    }
                                    b.t(this.f99943d, this.f99945f, dVar, this.f99946g, this.f99947h);
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    bVar4 = bVar5;
                                    aVar = aVar3;
                                    bVar3 = bVar4;
                                    if (bVar3 != 0) {
                                        try {
                                            bVar3.o();
                                        } catch (Exception unused) {
                                        }
                                    }
                                    if (bVar != null) {
                                        try {
                                            bVar.o();
                                        } catch (Exception unused2) {
                                        }
                                    }
                                    if (bVar2 != null) {
                                        try {
                                            bVar2.o();
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    if (aVar2 != null && !aVar2.f24207r) {
                                        try {
                                            aVar2.c();
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    if (aVar != null && !aVar.f24207r) {
                                        try {
                                            aVar.c();
                                        } catch (Exception unused5) {
                                        }
                                    }
                                    this.f99947h.set(new RuntimeException("AtlasDilateGPU setup failed", th2));
                                    this.f99946g.countDown();
                                }
                            } catch (Throwable th4) {
                                th2 = th4;
                                bVar2 = null;
                            }
                        } catch (Throwable th5) {
                            th2 = th5;
                            bVar = null;
                            bVar2 = null;
                        }
                    } catch (Throwable th6) {
                        th2 = th6;
                        bVar = null;
                        bVar2 = null;
                    }
                } catch (Throwable th7) {
                    th2 = th7;
                    aVar = null;
                    bVar = null;
                    bVar2 = bVar;
                    if (bVar3 != 0) {
                    }
                    if (bVar != null) {
                    }
                    if (bVar2 != null) {
                    }
                    if (aVar2 != null) {
                        aVar2.c();
                    }
                    if (aVar != null) {
                        aVar.c();
                    }
                    this.f99947h.set(new RuntimeException("AtlasDilateGPU setup failed", th2));
                    this.f99946g.countDown();
                }
            } catch (Throwable th8) {
                th2 = th8;
                aVar = null;
                aVar2 = null;
                bVar = null;
            }
        }
    }

    public class RunnableC1896b implements Runnable {

        public final c.b f99948b;

        public final d f99949c;

        public final p f99950d;

        public final CountDownLatch f99951e;

        public final AtomicReference f99952f;

        public class a implements Runnable {

            public class RunnableC1897a implements Runnable {
                public RunnableC1897a() {
                }

                @Override
                public void run() {
                    RunnableC1896b runnableC1896b = RunnableC1896b.this;
                    b.j(runnableC1896b.f99949c, runnableC1896b.f99951e);
                }
            }

            public a() {
            }

            @Override
            public void run() {
                K8.a.B(new RunnableC1897a());
            }
        }

        public class RunnableC1898b implements Runnable {

            public class a implements Runnable {
                public a() {
                }

                @Override
                public void run() {
                    RunnableC1896b runnableC1896b = RunnableC1896b.this;
                    b.j(runnableC1896b.f99949c, runnableC1896b.f99951e);
                }
            }

            public RunnableC1898b() {
            }

            @Override
            public void run() {
                K8.a.B(new a());
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override
            public void run() {
                RunnableC1896b runnableC1896b = RunnableC1896b.this;
                b.t(runnableC1896b.f99950d, runnableC1896b.f99948b, runnableC1896b.f99949c, runnableC1896b.f99951e, runnableC1896b.f99952f);
            }
        }

        public class d implements Runnable {
            public d() {
            }

            @Override
            public void run() {
                RunnableC1896b runnableC1896b = RunnableC1896b.this;
                b.j(runnableC1896b.f99949c, runnableC1896b.f99951e);
            }
        }

        public RunnableC1896b(final c.b val$listener, final d val$state, final p val$texture, final CountDownLatch val$latch, final AtomicReference val$errorRef) {
            this.f99948b = val$listener;
            this.f99949c = val$state;
            this.f99950d = val$texture;
            this.f99951e = val$latch;
            this.f99952f = val$errorRef;
        }

        @Override
        public void run() {
            try {
                this.f99948b.b("GPU Dilate pass " + this.f99949c.f99975j);
                this.f99949c.f99972g.s(this.f99949c.f99973h);
                d dVar = this.f99949c;
                dVar.f99974i = dVar.f99973h;
                d.h(this.f99949c);
                if (this.f99948b != null) {
                    this.f99948b.a(this.f99949c.f99975j, this.f99949c.f99971f, this.f99949c.f99975j / this.f99949c.f99971f, "");
                }
                if (this.f99949c.f99975j >= this.f99949c.f99971f) {
                    b.k(this.f99950d, this.f99949c.f99974i, new a(), new RunnableC1898b(), this.f99952f, this.f99948b);
                    return;
                }
                if (this.f99949c.f99973h == this.f99949c.f99970e) {
                    d dVar2 = this.f99949c;
                    dVar2.f99973h = dVar2.f99969d;
                    d dVar3 = this.f99949c;
                    dVar3.f99972g = dVar3.f99968c;
                } else {
                    d dVar4 = this.f99949c;
                    dVar4.f99973h = dVar4.f99970e;
                    d dVar5 = this.f99949c;
                    dVar5.f99972g = dVar5.f99967b;
                }
                K8.a.B(new c());
            } catch (Throwable th2) {
                this.f99952f.set(new RuntimeException("AtlasDilateGPU render failed", th2));
                K8.a.B(new d());
            }
        }
    }

    public class c implements a.b {

        public final c.b f99959a;

        public final AtomicReference f99960b;

        public final Runnable f99961c;

        public final p f99962d;

        public final Runnable f99963e;

        public class a implements Runnable {

            public final Bitmap f99964b;

            public a(final Bitmap val$bitmap) {
                this.f99964b = val$bitmap;
            }

            @Override
            public void run() {
                c.this.f99959a.b("Extract image");
                Bitmap bitmap = this.f99964b;
                if (bitmap == null) {
                    c.this.f99960b.set(new RuntimeException("AtlasDilateGPU returned null bitmap"));
                    c.this.f99961c.run();
                    return;
                }
                try {
                    int width = bitmap.getWidth();
                    int height = this.f99964b.getHeight();
                    int min = Math.min(width, c.this.f99962d.getWidth());
                    int min2 = Math.min(height, c.this.f99962d.getHeight());
                    int[] iArr = new int[width * height];
                    this.f99964b.getPixels(iArr, 0, width, 0, 0, width, height);
                    for (int i10 = 0; i10 < min2; i10++) {
                        int i11 = ((height - 1) - i10) * width;
                        int i12 = 0;
                        while (i12 < min) {
                            int i13 = iArr[i11 + i12];
                            int i14 = i12;
                            c.this.f99962d.m0(i12, i10, (i13 >> 16) & 255, (i13 >> 8) & 255, i13 & 255, (i13 >>> 24) & 255);
                            i12 = i14 + 1;
                        }
                    }
                } catch (Throwable th2) {
                    try {
                        c.this.f99960b.set(new RuntimeException("AtlasDilateGPU copy-back failed", th2));
                    } finally {
                        this.f99964b.recycle();
                    }
                }
                if (c.this.f99960b.get() != null) {
                    c.this.f99961c.run();
                } else {
                    c.this.f99963e.run();
                }
            }
        }

        public c(final c.b val$listener, final AtomicReference val$errorRef, final Runnable val$onFailure, final p val$texture, final Runnable val$onDone) {
            this.f99959a = val$listener;
            this.f99960b = val$errorRef;
            this.f99961c = val$onFailure;
            this.f99962d = val$texture;
            this.f99963e = val$onDone;
        }

        @Override
        public void on(Bitmap bitmap) {
            O9.b.d(new a(bitmap));
        }
    }

    public static class d {

        public final b f99966a;

        public final b f99967b;

        public final b f99968c;

        public final Tb.a f99969d;

        public final Tb.a f99970e;

        public final int f99971f;

        public b f99972g;

        public Tb.a f99973h;

        public Tb.a f99974i;

        public int f99975j;

        public d(b bVar, b bVar2, b bVar3, Tb.a aVar, Tb.a aVar2, int i10, a aVar3) {
            this(bVar, bVar2, bVar3, aVar, aVar2, i10);
        }

        public static int h(d dVar) {
            int i10 = dVar.f99975j;
            dVar.f99975j = i10 + 1;
            return i10;
        }

        public d(b firstPass, b readPass, b writePass, Tb.a readBuffer, Tb.a writeBuffer, int totalIterations) {
            this.f99966a = firstPass;
            this.f99967b = readPass;
            this.f99968c = writePass;
            this.f99969d = readBuffer;
            this.f99970e = writeBuffer;
            this.f99971f = totalIterations;
            this.f99972g = firstPass;
            this.f99973h = writeBuffer;
        }
    }

    public b(p pVar, int i10, int i11, a aVar) {
        this(pVar, i10, i11);
    }

    public static void g() {
        h(false);
    }

    public static void h(boolean forceRebuild) {
        ByteBuffer g10;
        try {
            String q10 = q();
            int hashCode = ("atlas-dilate-gpu-v1:" + q10).hashCode();
            if (forceRebuild) {
                if (ec.b.c(hashCode)) {
                    return;
                }
                if (ec.b.h(hashCode) && (g10 = ec.b.g(hashCode)) != null) {
                    ec.b.l(hashCode, g10);
                    return;
                }
            } else if (ec.b.c(hashCode)) {
                return;
            }
            ec.b.l(hashCode, l(q10).d().a());
        } catch (Exception e10) {
            throw new RuntimeException("Failed to build AtlasDilateGPU shader cache", e10);
        }
    }

    public static void i() {
        h(true);
    }

    public static void j(d state, CountDownLatch latch) {
        try {
            state.f99966a.o();
            try {
                state.f99967b.o();
                try {
                    state.f99968c.o();
                    try {
                        state.f99969d.c();
                    } finally {
                    }
                } catch (Throwable th2) {
                    try {
                        state.f99969d.c();
                        throw th2;
                    } finally {
                    }
                }
            } catch (Throwable th3) {
                try {
                    state.f99968c.o();
                    try {
                        state.f99969d.c();
                        throw th3;
                    } finally {
                    }
                } catch (Throwable th4) {
                    try {
                        state.f99969d.c();
                        throw th4;
                    } finally {
                    }
                }
            }
        } catch (Throwable th5) {
            try {
                state.f99967b.o();
                try {
                    state.f99968c.o();
                    try {
                        state.f99969d.c();
                        throw th5;
                    } finally {
                    }
                } catch (Throwable th6) {
                    try {
                        state.f99969d.c();
                        throw th6;
                    } finally {
                    }
                }
            } catch (Throwable th7) {
                try {
                    state.f99968c.o();
                    try {
                        state.f99969d.c();
                        throw th7;
                    } finally {
                    }
                } catch (Throwable th8) {
                    try {
                        state.f99969d.c();
                        throw th8;
                    } finally {
                    }
                }
            }
        }
    }

    public static void k(p texture, Tb.a sourceBuffer, Runnable onDone, Runnable onFailure, AtomicReference<RuntimeException> errorRef, c.b listener) {
        sourceBuffer.l().U0(sourceBuffer.r(), new c(listener, errorRef, onFailure, texture, onDone));
    }

    public static Sb.b l(String shaderCode) {
        return (Sb.b) new Sb.b().v("AtlasDilateGPU-" + Tc.b.L()).m(true).x(MaterialBuilder.h.MOBILE).E(MaterialBuilder.n.UNLIT).C(MaterialBuilder.t.UV0).l(false).k(false).D(MaterialBuilder.m.SAMPLER_2D, MaterialBuilder.l.FLOAT, MaterialBuilder.g.HIGH, "inputTex").P(MaterialBuilder.r.FLOAT2, "texelSize").r(shaderCode);
    }

    public static void p(p texture, int iterations, c.b listener) {
        if (texture == null) {
            throw new NullPointerException("texture can't be null");
        }
        if (iterations <= 0) {
            return;
        }
        if (!texture.J()) {
            throw new RuntimeException("Texture must be renderable before GPU dilation");
        }
        int width = texture.getWidth();
        int height = texture.getHeight();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        K8.a.I(new a(width, height, texture, iterations, listener, countDownLatch, atomicReference));
        try {
            countDownLatch.await();
            RuntimeException runtimeException = (RuntimeException) atomicReference.get();
            if (runtimeException != null) {
                throw runtimeException;
            }
        } catch (InterruptedException e10) {
            Thread.currentThread().interrupt();
            throw new RuntimeException("AtlasDilateGPU interrupted", e10);
        }
    }

    public static String q() {
        return "void material(inout MaterialInputs material) {\n    prepareMaterial(material);\n    float2 texel = materialParams.texelSize;\n    float2 texSize = float2(1.0 / texel.x, 1.0 / texel.y);\n    ivec2 maxPixel = ivec2(texSize) - ivec2(1);\n    float2 uv = getUV0();\n    ivec2 pixel = ivec2(clamp(floor(uv * texSize), float2(0.0), texSize - float2(1.0)));\n    float4 current = texelFetch(materialParams_inputTex, pixel, 0);\n    if (current.a > 0.001) {\n        material.baseColor = current;\n        return;\n    }\n    float3 accum = float3(0.0);\n    float accumWeight = 0.0;\n    for (int dy = -1; dy <= 1; ++dy) {\n        for (int dx = -1; dx <= 1; ++dx) {\n            if (dx == 0 && dy == 0) {\n                continue;\n            }\n            ivec2 samplePos = pixel + ivec2(dx, dy);\n            if (samplePos.x < 0 || samplePos.y < 0 || samplePos.x > maxPixel.x || samplePos.y > maxPixel.y) {\n                continue;\n            }\n            float4 sampleColor = texelFetch(materialParams_inputTex, samplePos, 0);\n            if (sampleColor.a <= 0.001) {\n                continue;\n            }\n            float dist = length(float2(dx, dy));\n            float weight = sampleColor.a / max(dist, 0.0001);\n            accum += sampleColor.rgb * weight;\n            accumWeight += weight;\n        }\n    }\n    if (accumWeight > 0.0) {\n        material.baseColor = float4(accum / accumWeight, 1.0);\n        return;\n    }\n    material.baseColor = current;\n}";
    }

    public static void r() {
        if (f99932j != null) {
            return;
        }
        try {
            String q10 = q();
            int hashCode = ("atlas-dilate-gpu-v1:" + q10).hashCode();
            ByteBuffer f10 = ec.b.f(hashCode);
            if (f10 != null) {
                ByteBuffer duplicate = f10.duplicate();
                duplicate.rewind();
                f99932j = new FilamentMaterialTemplate(new Material.b().b(duplicate, duplicate.remaining()));
            } else {
                ByteBuffer a10 = l(q10).d().a();
                ByteBuffer duplicate2 = a10.duplicate();
                duplicate2.rewind();
                ec.b.l(hashCode, a10);
                f99932j = new FilamentMaterialTemplate(new Material.b().b(duplicate2, duplicate2.remaining()));
            }
        } catch (Exception e10) {
            throw new RuntimeException("Failed to create AtlasDilateGPU material", e10);
        }
    }

    public static void t(p texture, c.b listener, d state, CountDownLatch latch, AtomicReference<RuntimeException> errorRef) {
        K8.a.H(new RunnableC1896b(listener, state, texture, latch, errorRef));
    }

    public final Rb.d m() {
        ByteBuffer order = ByteBuffer.allocateDirect(12).order(ByteOrder.nativeOrder());
        order.asShortBuffer().put(new short[]{0, 1, 2, 0, 2, 3}).flip();
        Rb.d dVar = new Rb.d(new IndexBuffer.a().c(6).a(IndexBuffer.a.b.USHORT));
        dVar.r(order);
        return dVar;
    }

    public final FilamentVertexBuffer n() {
        ByteBuffer order = ByteBuffer.allocateDirect(64).order(ByteOrder.nativeOrder());
        order.asFloatBuffer().put(new float[]{-1.0f, -1.0f, 0.0f, 1.0f, 1.0f, -1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f}).flip();
        VertexBuffer.b c10 = new VertexBuffer.b().h(4).c(1);
        VertexBuffer.c cVar = VertexBuffer.c.POSITION;
        VertexBuffer.a aVar = VertexBuffer.a.FLOAT2;
        FilamentVertexBuffer filamentVertexBuffer = new FilamentVertexBuffer(c10.b(cVar, 0, aVar, 0, 16).b(VertexBuffer.c.UV0, 0, aVar, 8, 16));
        filamentVertexBuffer.q(0, order);
        return filamentVertexBuffer;
    }

    public final void o() {
        this.f99934b.s(this.f99935c);
        this.f99934b.s(this.f99937e.f());
        this.f99936d.destroyImmediate();
        this.f99938f.destroyImmediate();
        this.f99939g.destroyImmediate();
        this.f99940h.destroyImmediate();
    }

    public final void s(Tb.a dst) {
        dst.a(this.f99933a);
        Qb.a.o(this.f99933a);
        dst.z();
    }

    public b(p source, int width, int height) {
        FilamentMaterialTemplate filamentMaterialTemplate = f99932j;
        if (filamentMaterialTemplate != null) {
            FilamentMaterial e10 = filamentMaterialTemplate.e();
            this.f99938f = e10;
            source.f(e10, "inputTex");
            e10.y("texelSize", 1.0f / width, 1.0f / height);
            FilamentVertexBuffer n10 = n();
            this.f99939g = n10;
            Rb.d m10 = m();
            this.f99940h = m10;
            FilamentScene filamentScene = new FilamentScene();
            this.f99934b = filamentScene;
            Rb.c cVar = new Rb.c();
            this.f99935c = cVar;
            this.f99936d = new FilamentRenderable(new RenderableManager.a(1).f(false), e10, cVar, n10, m10, RenderableManager.b.TRIANGLES, new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f));
            filamentScene.j(cVar);
            FilamentView filamentView = new FilamentView();
            this.f99933a = filamentView;
            filamentView.C(filamentScene);
            filamentView.z(false);
            filamentView.D(0, 0, width, height);
            FilamentCamera filamentCamera = new FilamentCamera();
            this.f99937e = filamentCamera;
            filamentCamera.l(-1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 1.0f);
            filamentView.x(filamentCamera);
            filamentScene.j(filamentCamera.f());
            return;
        }
        throw new RuntimeException("Call prepareMaterial() before creating AtlasDilateGPU");
    }
}
