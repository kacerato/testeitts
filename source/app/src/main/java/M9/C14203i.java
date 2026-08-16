package m9;

import com.google.android.filament.RenderableManager;
import com.google.android.filament.TransformManager;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentInstanceBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;

public final class C14203i {

    public final C14197c f96889a;

    public Rb.c f96890b;

    public FilamentRenderable f96891c;

    public FilamentInstanceBuffer f96892d;

    public int f96893e = -1;

    public Vertex f96894f;

    public int f96895g;

    public FilamentMaterial f96896h;

    public boolean f96897i;

    public boolean f96898j;

    public C14203i(C14197c materialObject) {
        this.f96889a = materialObject;
    }

    public final void a(C14201g renderData) {
        if (this.f96890b == null) {
            return;
        }
        TransformManager i10 = Qb.a.i();
        i10.u(i10.h(this.f96890b.getId()), renderData.f96865f);
    }

    public final void b(FilamentScene scene, Rb.c entity) {
        FilamentScene m10;
        if (scene == null || entity == null || (m10 = FilamentScene.m(entity)) == scene) {
            return;
        }
        if (m10 != null) {
            m10.s(entity);
        }
        scene.j(entity);
    }

    public void c(FilamentScene scene) {
        Rb.c cVar;
        if (scene != null && (cVar = this.f96890b) != null && scene.l(cVar)) {
            scene.s(this.f96890b);
        }
        FilamentRenderable filamentRenderable = this.f96891c;
        if (filamentRenderable != null && !filamentRenderable.isDestroyied()) {
            this.f96891c.destroyImmediate();
        }
        FilamentInstanceBuffer filamentInstanceBuffer = this.f96892d;
        if (filamentInstanceBuffer != null) {
            filamentInstanceBuffer.destroyImmediate();
        }
        Rb.c cVar2 = this.f96890b;
        if (cVar2 != null) {
            cVar2.destroyImmediate();
        }
        this.f96891c = null;
        this.f96892d = null;
        this.f96890b = null;
        this.f96893e = -1;
        this.f96894f = null;
        this.f96895g = 0;
        this.f96896h = null;
    }

    public int d() {
        Rb.c cVar;
        FilamentRenderable filamentRenderable = this.f96891c;
        if (filamentRenderable == null || filamentRenderable.isDestroyied() || (cVar = this.f96890b) == null) {
            return 0;
        }
        return cVar.getId();
    }

    public final boolean e() {
        C14197c c14197c = this.f96889a;
        return (c14197c == null || c14197c.c() == null || this.f96889a.d() == null || this.f96889a.d().z() == null) ? false : true;
    }

    public final void f(FilamentScene scene, C14201g renderData, boolean castShadow, boolean receiveShadow) {
        Vertex c10;
        c(scene);
        if (scene == null || renderData == null || renderData.f96867h == 0 || !e() || (c10 = this.f96889a.c()) == null || !c10.x1() || c10.f1() == null || c10.l0() == null) {
            return;
        }
        this.f96890b = new Rb.c();
        this.f96893e = renderData.f96867h;
        this.f96894f = c10;
        this.f96895g = c10.f0();
        this.f96896h = this.f96889a.d().z();
        this.f96897i = castShadow;
        this.f96898j = receiveShadow;
        if (renderData.f96867h == 1) {
            this.f96891c = new FilamentRenderable(new RenderableManager.a(1).d(castShadow).y(receiveShadow), this.f96889a.d().z(), this.f96890b, c10.f1(), c10.l0(), RenderableManager.b.TRIANGLES, c10.k0(), false);
        } else {
            this.f96892d = new FilamentInstanceBuffer(renderData.f96866g, renderData.f96867h);
            this.f96891c = new FilamentRenderable(new RenderableManager.a(1).d(castShadow).y(receiveShadow), this.f96889a.d().z(), this.f96890b, c10.f1(), c10.l0(), RenderableManager.b.TRIANGLES, this.f96892d, renderData.f96864e, false);
        }
        b(scene, this.f96890b);
        if (renderData.f96867h == 1) {
            a(renderData);
        }
    }

    public void g(FilamentScene scene, C14201g renderData, boolean castShadow, boolean receiveShadow) {
        if (scene == null || renderData == null || renderData.f96867h == 0 || !e()) {
            c(scene);
            return;
        }
        FilamentRenderable filamentRenderable = this.f96891c;
        if (filamentRenderable != null && !filamentRenderable.isDestroyied() && this.f96893e == renderData.f96867h && this.f96894f == this.f96889a.c() && this.f96895g == this.f96889a.c().f0() && this.f96896h == this.f96889a.d().z() && this.f96897i == castShadow && this.f96898j == receiveShadow) {
            h(renderData);
        } else {
            f(scene, renderData, castShadow, receiveShadow);
        }
    }

    public final void h(C14201g renderData) {
        int i10;
        FilamentRenderable filamentRenderable = this.f96891c;
        if (filamentRenderable == null || filamentRenderable.isDestroyied() || renderData == null || (i10 = renderData.f96867h) == 0) {
            return;
        }
        this.f96893e = i10;
        if (i10 == 1) {
            a(renderData);
            this.f96891c.setBounding(this.f96889a.c().k0());
            return;
        }
        FilamentInstanceBuffer filamentInstanceBuffer = this.f96892d;
        if (filamentInstanceBuffer != null) {
            filamentInstanceBuffer.h(renderData.f96866g, i10, 0);
            this.f96891c.setBounding(renderData.f96864e);
        }
    }
}
