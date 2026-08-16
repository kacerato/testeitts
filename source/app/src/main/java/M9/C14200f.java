package m9;

import com.google.android.filament.Box;
import com.google.android.filament.RenderableManager;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentInstanceBuffer;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;

public final class C14200f {

    public final Box f96853a = new Box(0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f);

    public Rb.c f96854b;

    public FilamentRenderable f96855c;

    public FilamentInstanceBuffer f96856d;

    public int f96857e;

    public Vertex f96858f;

    public FilamentMaterial f96859g;

    public final void a(FilamentScene scene, Rb.c entity) {
        FilamentScene m10 = FilamentScene.m(entity);
        if (m10 == scene) {
            return;
        }
        if (m10 != null) {
            m10.s(entity);
        }
        scene.j(entity);
    }

    public void b(FilamentScene scene) {
        Rb.c cVar;
        if (scene != null && (cVar = this.f96854b) != null && scene.l(cVar)) {
            scene.s(this.f96854b);
        }
        FilamentRenderable filamentRenderable = this.f96855c;
        if (filamentRenderable != null && !filamentRenderable.isDestroyied()) {
            this.f96855c.destroyImmediate();
        }
        FilamentInstanceBuffer filamentInstanceBuffer = this.f96856d;
        if (filamentInstanceBuffer != null) {
            filamentInstanceBuffer.destroyImmediate();
        }
        Rb.c cVar2 = this.f96854b;
        if (cVar2 != null) {
            cVar2.destroyImmediate();
        }
        this.f96855c = null;
        this.f96856d = null;
        this.f96854b = null;
        this.f96857e = 0;
        this.f96858f = null;
        this.f96859g = null;
    }

    public int c() {
        Rb.c cVar;
        FilamentRenderable filamentRenderable = this.f96855c;
        if (filamentRenderable == null || filamentRenderable.isDestroyied() || (cVar = this.f96854b) == null) {
            return 0;
        }
        return cVar.getId();
    }

    public final void d(FilamentScene scene, C14201g renderData, n9.b resources) {
        b(scene);
        Vertex e10 = resources.e();
        if (e10 == null || !e10.x1() || e10.f1() == null || e10.l0() == null) {
            return;
        }
        this.f96857e = renderData.f96867h;
        this.f96858f = e10;
        this.f96859g = resources.d();
        f(renderData);
        this.f96854b = new Rb.c();
        this.f96856d = new FilamentInstanceBuffer(renderData.f96866g, renderData.f96867h);
        this.f96855c = new FilamentRenderable(new RenderableManager.a(1).d(false).y(false), resources.d(), this.f96854b, e10.f1(), e10.l0(), RenderableManager.b.TRIANGLES, this.f96856d, this.f96853a, false);
        a(scene, this.f96854b);
    }

    public void e(FilamentScene scene, C14201g renderData, n9.b resources) {
        if (scene == null || renderData == null || renderData.f96867h == 0 || resources == null || !resources.g() || !resources.h()) {
            return;
        }
        FilamentRenderable filamentRenderable = this.f96855c;
        if (filamentRenderable == null || filamentRenderable.isDestroyied() || this.f96857e != renderData.f96867h || this.f96858f != resources.e()) {
            d(scene, renderData, resources);
            return;
        }
        FilamentMaterial d10 = resources.d();
        if (this.f96859g != d10) {
            this.f96855c.setMaterialInstanceAt(0, d10);
            this.f96859g = d10;
        }
        g(renderData);
    }

    public final void f(C14201g renderData) {
        this.f96853a.c(renderData.f96869j, renderData.f96870k, renderData.f96871l);
        this.f96853a.d(renderData.f96872m, renderData.f96873n, renderData.f96874o);
    }

    public final void g(C14201g renderData) {
        int i10;
        FilamentRenderable filamentRenderable = this.f96855c;
        if (filamentRenderable == null || filamentRenderable.isDestroyied() || renderData == null || (i10 = renderData.f96867h) == 0) {
            return;
        }
        this.f96857e = i10;
        f(renderData);
        FilamentInstanceBuffer filamentInstanceBuffer = this.f96856d;
        if (filamentInstanceBuffer != null) {
            filamentInstanceBuffer.h(renderData.f96866g, renderData.f96867h, 0);
        }
        this.f96855c.setBounding(this.f96853a);
    }
}
