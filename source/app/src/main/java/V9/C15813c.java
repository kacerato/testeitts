package v9;

import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Native.ChunkSurface;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import t6.j;
import u9.C15584d;
import z9.C16281h;

public class C15813c {

    public boolean f121309a = false;

    public FilamentMaterial f121310b;

    public Rb.c f121311c;

    public FilamentRenderable f121312d;

    public boolean f121313e;

    public class a implements Runnable {

        public final Terrain f121314b;

        public a(final Terrain val$terrain) {
            this.f121314b = val$terrain;
        }

        @Override
        public void run() {
            t6.e S12 = j.J1() ? j.S1("DepthOpaqueChunkRenderableLayer - invalidate filament") : null;
            try {
                try {
                    C15813c.this.k(this.f121314b);
                    C15813c.this.f121312d = null;
                    C15813c.this.f121311c = null;
                    C15813c.this.f121310b = null;
                    C15813c.this.f121309a = false;
                    C15813c.this.f121313e = false;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } finally {
                j.P1(S12);
            }
        }
    }

    public void g(C15815e batch, boolean visible) {
        FilamentRenderable filamentRenderable;
        boolean z10 = (!visible || !this.f121309a || (filamentRenderable = this.f121312d) == null || filamentRenderable.isDestroyied() || this.f121311c == null) ? false : true;
        if (this.f121313e == z10) {
            return;
        }
        this.f121313e = z10;
        batch.a(this.f121311c.getId(), z10);
    }

    public void h(float[] renderMatrix) {
        if (this.f121311c != null) {
            TransformManager i10 = Qb.a.i();
            i10.u(i10.h(this.f121311c.getId()), renderMatrix);
        }
    }

    public final void i(Terrain terrain, ChunkSurface vertex, float[] renderMatrix) {
        if (this.f121312d == null) {
            this.f121311c = new Rb.c();
            Box o10 = vertex.o();
            this.f121312d = new FilamentRenderable(new RenderableManager.a(1).d(true).y(true), this.f121310b, this.f121311c, vertex.w(), vertex.r(), RenderableManager.b.TRIANGLES, new Box(new float[]{o10.a()[0], terrain.maxHeight / 2.0f, o10.a()[2]}, new float[]{o10.b()[0], terrain.maxHeight / 2.0f, o10.b()[2]}), false);
            TransformManager i10 = Qb.a.i();
            i10.b(this.f121311c.getId());
            i10.u(i10.h(this.f121311c.getId()), renderMatrix);
            FilamentRenderable filamentRenderable = this.f121312d;
            if (filamentRenderable != null) {
                filamentRenderable.setGlobalBlendOrderEnabledAt(0, true);
                this.f121312d.setBlendOrderAt(0, 0);
            }
        }
    }

    public void j(Terrain terrain) {
        k(terrain);
        this.f121312d = null;
        this.f121311c = null;
        this.f121310b = null;
        this.f121309a = false;
        this.f121313e = false;
    }

    public final void k(Terrain terrain) {
        if (!this.f121309a || this.f121311c == null) {
            return;
        }
        try {
            terrain.getEffectiveScene().s(this.f121311c);
        } catch (Exception e10) {
            e10.printStackTrace();
            try {
                FilamentScene.m(this.f121311c).s(this.f121311c);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
        }
        this.f121309a = false;
        this.f121313e = false;
    }

    public void l(Terrain terrain) {
        k(terrain);
    }

    public void m(Terrain terrain) {
        K8.a.I(new a(terrain));
    }

    public boolean n() {
        return this.f121312d != null;
    }

    public void o(Terrain terrain) {
        k(terrain);
    }

    public void p(Terrain terrain, C16281h resolutions, ChunkSurface chunkSurface, float[] renderMatrix, C15814d chunk) {
        q(terrain, resolutions, chunkSurface, renderMatrix, chunk, true);
    }

    public void q(Terrain terrain, C16281h resolutions, ChunkSurface chunkSurface, float[] renderMatrix, C15814d chunk, boolean allowSceneAttach) {
        if (this.f121310b == null) {
            FilamentMaterial h10 = C15584d.f().h();
            this.f121310b = h10;
            h10.K(0.0f, 0 * (-1.0f));
        }
        if (chunkSurface != null && chunkSurface.B()) {
            i(terrain, chunkSurface, renderMatrix);
        }
        if (this.f121309a || this.f121311c == null) {
            return;
        }
        terrain.getEffectiveScene().j(this.f121311c);
        this.f121309a = true;
    }

    public void r(ChunkSurface vertex) {
        if (this.f121312d == null || vertex.w() == null || vertex.r() == null) {
            return;
        }
        this.f121312d.setGeometryAt(0, RenderableManager.b.TRIANGLES, vertex.w(), vertex.r());
        this.f121312d.setBounding(vertex.o());
    }
}
