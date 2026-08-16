package m9;

import com.itsmagic.engine.Activities.Editor.TextOutputActivity;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.Native.MeshBakeNative;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentScene;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ib.C13600g;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class C14197c {

    public final GameObject f96759a;

    public final Material f96760b;

    public boolean f96761c;

    public boolean f96762d = true;

    public final Map<ModelRenderer, Integer> f96763e = new HashMap();

    public final Map<ModelRenderer, Integer> f96764f = new HashMap();

    public final List<ModelRenderer> f96765g = new SteppedArrayList();

    public Vertex f96766h;

    public C14197c(Material material, GameObject gameObject, boolean impostorOwner) {
        this.f96760b = material;
        this.f96759a = gameObject;
        this.f96761c = impostorOwner;
    }

    public void a(ModelRenderer mr) {
        mr.getClass();
        mr.getVertex().getClass();
        this.f96765g.add(mr);
    }

    public void b() {
        try {
            com.itsmagic.engine.Engines.Engine.Vector.f a10 = C13600g.a(this.f96759a);
            a10.E();
            SteppedArrayList steppedArrayList = new SteppedArrayList(this.f96765g.size());
            this.f96763e.clear();
            this.f96764f.clear();
            for (int i10 = 0; i10 < this.f96765g.size(); i10++) {
                ModelRenderer modelRenderer = this.f96765g.get(i10);
                Vertex vertex = modelRenderer.getVertex();
                if (vertex != null) {
                    this.f96763e.put(modelRenderer, Integer.valueOf(modelRenderer.f73752K));
                    this.f96764f.put(modelRenderer, Integer.valueOf(vertex.f0()));
                    steppedArrayList.add(new MeshBakeNative.a(vertex, a10.K(C13600g.a(modelRenderer.f79250n))));
                }
            }
            this.f96766h = MeshBakeNative.c(steppedArrayList);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
            TextOutputActivity.h(e10);
        }
    }

    public Vertex c() {
        return this.f96766h;
    }

    public Material d() {
        return this.f96760b;
    }

    public List<ModelRenderer> e() {
        return this.f96765g;
    }

    public final boolean f(Vertex vertex) {
        return (vertex == null || !vertex.x1() || vertex.f1() == null || vertex.l0() == null) ? false : true;
    }

    public boolean g() {
        return f(this.f96766h);
    }

    public boolean h() {
        return this.f96762d;
    }

    public boolean i() {
        return this.f96761c;
    }

    public void j(FilamentScene scene) {
    }

    public void k(boolean impostorAllowed) {
        this.f96762d = impostorAllowed;
        if (impostorAllowed) {
            return;
        }
        this.f96761c = false;
    }

    public void l(boolean impostorOwner) {
        if (!impostorOwner || this.f96762d) {
            this.f96761c = impostorOwner;
        } else {
            this.f96761c = false;
        }
    }
}
