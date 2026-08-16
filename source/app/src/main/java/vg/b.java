package Vg;

import Ic.C2639s;
import com.itsmagic.engine.Activities.Editor.Panels.Files.Utils.ImportFilePopup;
import com.itsmagic.engine.Engines.Engine.Animation.d;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.SkinnedModelRenderer.SkinnedModelRenderer;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class b {

    public File f26928a;

    public a f26929b;

    public ImportFilePopup.ImportOptions f26930c;

    public GameObject f26931d = new GameObject();

    public C2639s<GameObject> f26932e = new C2639s<>();

    public C2639s<Component> f26933f = new C2639s<>();

    public C2639s<Vertex> f26934g = new C2639s<>();

    public HashMap<Vertex, String> f26935h = new HashMap<>();

    public HashMap<String, Vertex> f26936i = new HashMap<>();

    public HashMap<String, String> f26937j = new HashMap<>();

    public HashMap<String, Vertex> f26938k = new HashMap<>();

    public List<Material> f26939l = new ArrayList();

    public HashMap<String, Material> f26940m = new HashMap<>();

    public HashMap<Material, String> f26941n = new HashMap<>();

    public HashMap<String, Material> f26942o = new HashMap<>();

    public C2639s<SkinnedModelRenderer> f26943p = new C2639s<>();

    public C2639s<d> f26944q = new C2639s<>();

    public int f26945r;

    public int f26946s;

    public int f26947t;

    public int f26948u;

    public int f26949v;

    public int f26950w;

    public int f26951x;

    public File a() {
        return new File(Tc.b.u(this.f26928a.getAbsolutePath()));
    }

    public String b() {
        File file = new File(Tc.b.u(this.f26928a.getAbsolutePath()));
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
        sb2.append("/");
        return sb2.toString();
    }

    public File c() {
        return Tc.b.y(this.f26928a);
    }

    public String d() {
        File y10 = Tc.b.y(this.f26928a);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(y10.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
        sb2.append("/");
        return sb2.toString();
    }

    public void e() {
        this.f26931d = null;
        this.f26932e.clear();
        this.f26933f.clear();
        this.f26934g.clear();
        this.f26935h.clear();
        this.f26936i.clear();
        this.f26937j.clear();
        this.f26938k.clear();
        this.f26939l.clear();
        this.f26940m.clear();
        this.f26941n.clear();
        this.f26942o.clear();
        this.f26943p.clear();
        this.f26944q.clear();
    }
}
