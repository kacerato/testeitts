package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Chunk;

import J4.d;
import Rb.c;
import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.Texture;
import com.google.android.filament.TextureSampler;
import com.google.android.filament.TransformManager;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Layer.TerrainLayer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.ChunkSurface;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.DecalProjector;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentTexture;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import u9.C15584d;
import ub.g;
import ub.p;
import v9.C15814d;
import v9.C15815e;
import x9.C16061a;
import yb.C16165b;
import z9.C16281h;

public class ChunkRenderableLayer {

    public static final boolean f76741E = false;

    public static final Set<ChunkRenderableLayer> f76742F;

    public float f76743A;

    public float f76744B;

    public float f76745C;

    public float f76746D;

    public final TerrainLayer f76747a;

    public final C16061a f76748b;

    public final int f76749c;

    public final int f76750d;

    public FilamentMaterial f76753g;

    public c f76754h;

    public FilamentRenderable f76755i;

    public boolean f76756j;

    public volatile boolean f76757k;

    public volatile boolean f76758l;

    public volatile boolean f76759m;

    public FilamentTexture f76760n;

    public NativeByteBuffer f76761o;

    public boolean f76765s;

    public float f76767u;

    public float f76768v;

    public float f76769w;

    public float f76770x;

    public float f76771y;

    public float f76772z;

    public boolean f76751e = false;

    public boolean f76752f = false;

    public final AtomicBoolean f76762p = new AtomicBoolean();

    public final AtomicBoolean f76763q = new AtomicBoolean();

    public final AtomicBoolean f76764r = new AtomicBoolean();

    public int f76766t = -1;

    public class a implements Runnable {

        public final C15814d f76773b;

        public final Terrain f76774c;

        public a(final C15814d val$chunk, final Terrain val$terrain) {
            this.f76773b = val$chunk;
            this.f76774c = val$terrain;
        }

        @Override
        public void run() {
            ChunkRenderableLayer.this.f76763q.set(false);
            ChunkRenderableLayer.this.f76759m = true;
            this.f76773b.f0(this.f76774c);
        }
    }

    public class b implements Runnable {

        public final int f76776b;

        public final int f76777c;

        public final C15814d f76778d;

        public final Terrain f76779e;

        public b(final int val$tw, final int val$th, final C15814d val$chunk, final Terrain val$terrain) {
            this.f76776b = val$tw;
            this.f76777c = val$th;
            this.f76778d = val$chunk;
            this.f76779e = val$terrain;
        }

        @Override
        public void run() {
            boolean z10;
            try {
                NativeByteBuffer nativeByteBuffer = ChunkRenderableLayer.this.f76761o;
                NativeFloatBuffer c10 = ChunkRenderableLayer.this.f76748b != null ? ChunkRenderableLayer.this.f76748b.c() : null;
                z10 = ChunkRenderableLayer.nativePaintLayerR8(c10 != null ? c10.getPointerCritical() : 0L, ChunkRenderableLayer.this.f76748b != null ? ChunkRenderableLayer.this.f76748b.f() : 0, ChunkRenderableLayer.this.f76749c, ChunkRenderableLayer.this.f76750d, this.f76776b, this.f76777c, nativeByteBuffer.getPointerCritical());
                try {
                    nativeByteBuffer.position(0);
                    ChunkRenderableLayer.this.f76764r.set(true);
                    ChunkRenderableLayer.this.f76762p.set(false);
                    ChunkRenderableLayer.this.f76757k = z10;
                    ChunkRenderableLayer.this.f76758l = true;
                    synchronized (ChunkRenderableLayer.f76742F) {
                        ChunkRenderableLayer.f76742F.remove(ChunkRenderableLayer.this);
                    }
                    this.f76778d.f0(this.f76779e);
                } catch (Throwable th2) {
                    th = th2;
                    ChunkRenderableLayer.this.f76764r.set(true);
                    ChunkRenderableLayer.this.f76762p.set(false);
                    ChunkRenderableLayer.this.f76757k = z10;
                    ChunkRenderableLayer.this.f76758l = true;
                    synchronized (ChunkRenderableLayer.f76742F) {
                        ChunkRenderableLayer.f76742F.remove(ChunkRenderableLayer.this);
                    }
                    this.f76778d.f0(this.f76779e);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                z10 = false;
            }
        }
    }

    static {
        System.loadLibrary("native-chunk-renderable-layer");
        f76742F = new HashSet();
    }

    public ChunkRenderableLayer(int textureMapStartX, int textureMapStartY, TerrainLayer layer, C16061a data) {
        this.f76749c = textureMapStartX;
        this.f76750d = textureMapStartY;
        this.f76747a = layer;
        this.f76748b = data;
    }

    public static native boolean nativePaintLayerR8(long layerBufferPointer, int tableResolution, int textureMapStartX, int textureMapStartY, int textureWidth, int textureHeight, long outByteBufferPointer);

    public void A(Terrain terrain, C16281h resolutions, ChunkSurface chunkSurface, float[] renderMatrix, C15814d chunk, int layerIndex, List<ChunkRenderableLayer> layerMapList) {
        B(terrain, resolutions, chunkSurface, renderMatrix, chunk, layerIndex, layerMapList, true);
    }

    public void B(Terrain terrain, C16281h resolutions, ChunkSurface chunkSurface, float[] renderMatrix, C15814d chunk, int layerIndex, List<ChunkRenderableLayer> layerMapList, boolean allowSceneAttach) {
        FilamentTexture filamentTexture;
        FilamentTexture filamentTexture2;
        boolean isEmpty;
        if (this.f76753g == null) {
            this.f76753g = C15584d.h().h();
            this.f76765s = false;
        }
        FilamentTexture filamentTexture3 = this.f76760n;
        if (filamentTexture3 == null || filamentTexture3.getWidth() != resolutions.f130786c) {
            if (this.f76761o != null) {
                this.f76761o = null;
            }
            if (this.f76760n != null) {
                this.f76760n = null;
            }
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.genMipmaps = false;
            textureConfig.j0(TextureConfig.c.Linear);
            TextureSampler j10 = FilamentTexture.j(textureConfig);
            int i10 = resolutions.f130786c;
            this.f76760n = new FilamentTexture(i10, i10, Texture.e.R, Texture.k.UBYTE, new Texture.a().d(Texture.f.R8), j10, 0, 8);
            this.f76761o = new NativeByteBuffer(this.f76760n.getWidth() * this.f76760n.getWidth());
            this.f76751e = true;
            this.f76758l = false;
            this.f76759m = false;
        }
        if (!this.f76762p.get() && !this.f76763q.get()) {
            Set<ChunkRenderableLayer> set = f76742F;
            synchronized (set) {
                isEmpty = set.isEmpty();
            }
            if (isEmpty && this.f76764r.compareAndSet(true, false)) {
                this.f76763q.set(true);
                this.f76760n.u(this.f76761o, new a(chunk, terrain));
            }
            if (!this.f76763q.get() && this.f76751e && this.f76762p.compareAndSet(false, true)) {
                this.f76751e = false;
                int width = this.f76760n.getWidth();
                int height = this.f76760n.getHeight();
                synchronized (set) {
                    set.add(this);
                }
                O9.b.d(new b(width, height, chunk, terrain));
            }
        }
        if (chunkSurface != null && chunkSurface.B()) {
            p(terrain, chunkSurface, renderMatrix);
        }
        boolean z10 = this.f76757k && this.f76759m && (filamentTexture2 = this.f76760n) != null && filamentTexture2.D() && !this.f76763q.get() && !this.f76764r.get();
        if (this.f76757k && (this.f76752f || z10)) {
            if (this.f76753g != null && this.f76755i != null && (filamentTexture = this.f76760n) != null && filamentTexture.D()) {
                o(chunk, terrain.maxHeight);
            }
            FilamentRenderable filamentRenderable = this.f76755i;
            if (filamentRenderable != null) {
                filamentRenderable.setGlobalBlendOrderEnabledAt(0, true);
                this.f76755i.setBlendOrderAt(0, (layerIndex + 1) & 32767);
            }
            FilamentMaterial filamentMaterial = this.f76753g;
            if (filamentMaterial != null) {
                filamentMaterial.K(0.0f, (layerIndex + 1) * (-1.0f));
            }
        }
        if (this.f76752f || this.f76754h == null) {
            return;
        }
        terrain.getEffectiveScene().j(this.f76754h);
        this.f76752f = true;
    }

    public void C(ChunkSurface vertex) {
        if (this.f76755i == null || vertex.w() == null || vertex.r() == null) {
            return;
        }
        this.f76755i.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.w(), vertex.r());
        this.f76755i.setBounding(vertex.o());
    }

    public void m(C15815e batch, boolean lodVisible) {
        FilamentRenderable filamentRenderable;
        FilamentTexture filamentTexture;
        boolean z10 = (!lodVisible || !this.f76752f || this.f76754h == null || (filamentRenderable = this.f76755i) == null || filamentRenderable.isDestroyied() || !this.f76757k || !this.f76759m || (filamentTexture = this.f76760n) == null || !filamentTexture.D() || this.f76763q.get() || this.f76764r.get()) ? false : true;
        if (this.f76756j == z10) {
            return;
        }
        this.f76756j = z10;
        batch.a(this.f76754h.getId(), z10);
    }

    public void n(float[] renderMatrix) {
        if (this.f76754h != null) {
            TransformManager i10 = Qb.a.i();
            i10.u(i10.h(this.f76754h.getId()), renderMatrix);
        }
    }

    public void o(C15814d chunk, float maxHeight) {
        int F10 = chunk.F();
        float B10 = chunk.B();
        TerrainLayer terrainLayer = this.f76747a;
        int p10 = terrainLayer != null ? terrainLayer.p() : 0;
        boolean z10 = (this.f76765s && this.f76766t == p10) ? false : true;
        float f10 = 1.0f / (F10 - 1);
        if (z10 || Float.compare(this.f76767u, f10) != 0) {
            this.f76753g.w("uvStep", f10);
            this.f76767u = f10;
        }
        if (z10 || Float.compare(this.f76768v, maxHeight) != 0) {
            this.f76753g.w("maxHeight", maxHeight);
            this.f76768v = maxHeight;
        }
        this.f76753g.p("layer1Map", this.f76760n);
        TerrainLayer terrainLayer2 = this.f76747a;
        if (terrainLayer2 != null) {
            g e10 = terrainLayer2.e();
            if (p.L(e10)) {
                e10.f(this.f76753g, "albedo1R");
                x(e10, true, "albedo");
            } else {
                C16165b.f130161g.f(this.f76753g, "albedo1R");
            }
            g q10 = this.f76747a.q();
            if (p.L(q10)) {
                q10.f(this.f76753g, "metallic1R");
                x(q10, false, "metallic");
            } else {
                C16165b.f130163i.f(this.f76753g, "metallic1R");
            }
            g k10 = this.f76747a.k();
            if (!p.L(k10) || this.f76747a.m() <= 0.0f) {
                C16165b.f130163i.f(this.f76753g, "heightMap");
                if (z10 || Float.compare(this.f76769w, 0.0f) != 0) {
                    this.f76753g.w("enableHeight", 0.0f);
                    this.f76769w = 0.0f;
                }
            } else {
                k10.f(this.f76753g, "heightMap");
                if (z10 || Float.compare(this.f76769w, 1.0f) != 0) {
                    this.f76753g.w("enableHeight", 1.0f);
                    this.f76769w = 1.0f;
                }
                float m10 = this.f76747a.m() * 0.01f;
                if (z10 || Float.compare(this.f76770x, m10) != 0) {
                    this.f76753g.w(DecalProjector.f77444q0, m10);
                    this.f76770x = m10;
                }
                float n10 = this.f76747a.n();
                if (z10 || Float.compare(this.f76771y, n10) != 0) {
                    this.f76753g.w("heightNormalStrength", n10);
                    this.f76771y = n10;
                }
                float M10 = Nc.b.M(2.0f, Nc.b.w0(this.f76747a.o() * 4.0f));
                if (z10 || Float.compare(this.f76772z, M10) != 0) {
                    this.f76753g.w(DecalProjector.f77446v0, M10);
                    this.f76772z = M10;
                }
                float M11 = Nc.b.M(4.0f, Nc.b.w0(this.f76747a.o() * 16.0f));
                if (z10 || Float.compare(this.f76743A, M11) != 0) {
                    this.f76753g.w(DecalProjector.f77430D0, M11);
                    this.f76743A = M11;
                }
                x(k10, false, "height");
            }
            p h10 = this.f76747a.h();
            if (p.L(h10)) {
                h10.f(this.f76753g, "nm1R");
                x(h10, false, "normal map");
            } else {
                C16165b.f130166l.f(this.f76753g, "nm1R");
            }
        } else {
            C16165b.f130165k.f(this.f76753g, "albedo1R");
            C16165b.f130166l.f(this.f76753g, "nm1R");
        }
        TerrainLayer terrainLayer3 = this.f76747a;
        if (terrainLayer3 != null) {
            float v10 = B10 / terrainLayer3.v();
            if (z10 || Float.compare(this.f76744B, v10) != 0) {
                this.f76753g.w("layer1Sizes", v10);
                this.f76744B = v10;
            }
            float u10 = this.f76747a.u();
            if (z10 || Float.compare(this.f76745C, u10) != 0) {
                this.f76753g.w("layer1Roughness", u10);
                this.f76745C = u10;
            }
            float w10 = this.f76747a.w();
            if (z10 || Float.compare(this.f76746D, w10) != 0) {
                this.f76753g.w("layer1Specular", w10);
                this.f76746D = w10;
            }
        } else {
            float f11 = B10 / 1.0f;
            if (z10 || Float.compare(this.f76744B, f11) != 0) {
                this.f76753g.w("layer1Sizes", f11);
                this.f76744B = f11;
            }
            if (z10 || Float.compare(this.f76745C, 0.3f) != 0) {
                this.f76753g.w("layer1Roughness", 0.3f);
                this.f76745C = 0.3f;
            }
            if (z10 || Float.compare(this.f76746D, 1.0f) != 0) {
                this.f76753g.w("layer1Specular", 1.0f);
                this.f76746D = 1.0f;
            }
        }
        this.f76766t = p10;
        this.f76765s = true;
    }

    public final void p(Terrain terrain, ChunkSurface vertex, float[] renderMatrix) {
        if (this.f76755i == null) {
            this.f76754h = new c();
            vertex.o();
            float f10 = terrain.maxHeight;
            FilamentRenderable filamentRenderable = new FilamentRenderable(new RenderableManager.a(1).d(true).y(true), this.f76753g, this.f76754h, vertex.w(), vertex.r(), RenderableManager.b.TRIANGLES, new Box(new float[]{0.5f, f10 / 2.0f, 0.5f}, new float[]{1.0f, f10 / 2.0f, 1.0f}), false);
            this.f76755i = filamentRenderable;
            filamentRenderable.setPriority(0);
            TransformManager i10 = Qb.a.i();
            i10.b(this.f76754h.getId());
            i10.u(i10.h(this.f76754h.getId()), renderMatrix);
        }
    }

    public void q(Terrain terrain) {
        r(terrain);
        this.f76761o = null;
        this.f76760n = null;
        this.f76755i = null;
        this.f76754h = null;
        this.f76753g = null;
        this.f76752f = false;
        this.f76756j = false;
        this.f76765s = false;
    }

    public final void r(Terrain terrain) {
        if (!this.f76752f || this.f76754h == null) {
            return;
        }
        try {
            terrain.getEffectiveScene().s(this.f76754h);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                FilamentScene.m(this.f76754h).s(this.f76754h);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        this.f76752f = false;
        this.f76756j = false;
    }

    public void s(Terrain terrain) {
        r(terrain);
    }

    public void t(Terrain terrain) {
        r(terrain);
        this.f76761o = null;
        this.f76760n = null;
        this.f76755i = null;
        this.f76754h = null;
        this.f76753g = null;
        this.f76752f = false;
        this.f76756j = false;
        this.f76765s = false;
    }

    public boolean u(C16061a data) {
        return this.f76748b == data;
    }

    public boolean v(TerrainLayer layer) {
        return this.f76747a == layer;
    }

    public boolean w() {
        FilamentTexture filamentTexture;
        if (!this.f76758l) {
            return false;
        }
        if (this.f76757k) {
            return (this.f76755i == null || (filamentTexture = this.f76760n) == null || !filamentTexture.D() || !this.f76759m || this.f76762p.get() || this.f76763q.get() || this.f76764r.get()) ? false : true;
        }
        return true;
    }

    public void x(p textureInstance, boolean wantedGamma, String attached) {
        if (textureInstance != null && (textureInstance instanceof g)) {
            g gVar = (g) textureInstance;
            if (gVar.u0().gammaCorrection != wantedGamma) {
                d.E1();
                if (wantedGamma) {
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(d.H1("LINT: ", "41, 255, 8"));
                    sb2.append(d.F1(Tc.b.d(attached)));
                    sb2.append(d.y2(" texture:"));
                    sb2.append(d.u2(d.v2(d.q2(Tc.b.v(gVar.getFile())), "open:" + gVar.getFile())));
                    sb2.append(d.y2(" of terrain "));
                    sb2.append(d.y2(" needs gamma correction toggle to be "));
                    sb2.append(d.F1("activated"));
                    sb2.append(d.y2(" in texture settings, gamma correction needs to be activated on albedo/emissive textures."));
                    sb2.append(d.y2(" Tap in file name here to open file in files panel!"));
                    d.L1(sb2.toString());
                    return;
                }
                StringBuilder sb3 = new StringBuilder();
                sb3.append(d.H1("LINT: ", "41, 255, 8"));
                sb3.append(d.F1(Tc.b.d(attached)));
                sb3.append(d.y2(" texture:"));
                sb3.append(d.u2(d.v2(d.q2(Tc.b.v(gVar.getFile())), "open:" + gVar.getFile())));
                sb3.append(d.y2(" of terrain "));
                sb3.append(d.y2(" needs gamma correction toggle to be "));
                sb3.append(d.F1("deactivated"));
                sb3.append(d.y2(" in texture settings, only activate gamma correction to albedo/emissive textures."));
                sb3.append(d.y2(" Tap in file name here to open file in files panel!"));
                d.L1(sb3.toString());
            }
        }
    }

    public void y(Terrain terrain) {
        r(terrain);
    }

    public void z() {
        this.f76751e = true;
    }
}
