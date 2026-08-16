package com.itsmagic.engine.Engines.Engine.ComponentsV2.Link;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
import Z6.c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import hb.C13438a;
import hb.C13440c;
import java.util.Iterator;
import java.util.List;
import s8.InterfaceC15238b;
import t6.e;
import t6.j;

@InterfaceC15238b
public class PrefabLink extends Component {

    public static final String f73650J = "PrefabLink";

    public static final Class f73651K = PrefabLink.class;

    public int f73652E;

    public C13438a f73653F;

    public GameObject f73654G;

    public final List<d> f73655H;

    public int f73656I;

    @Expose
    private String file;

    @Expose
    @f
    private int indexInParent;

    @Expose
    private boolean isChild;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return PrefabLink.f73651K;
        }

        @Override
        public String c() {
            return PrefabLink.f73650J;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class b implements h {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("PrefabLink - edit prefab") : null;
                try {
                    if (PrefabLink.this.getFinalEditableTemplateObject() != null) {
                        J3.a.a(PrefabLink.this.getFinalEditableTemplateObject(), PrefabLink.this.file);
                    } else {
                        N7.c.v0("Ops! please, reload world.");
                    }
                    j.P1(S12);
                } catch (Throwable th2) {
                    j.P1(S12);
                    throw th2;
                }
            }
        }

        public b() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            K8.a.I(new a());
        }
    }

    public class c implements h {

        public class a implements c.i {

            public class RunnableC1204a implements Runnable {
                public RunnableC1204a() {
                }

                @Override
                public void run() {
                    e S12 = j.J1() ? j.S1("PrefabLink - unlink prefab") : null;
                    try {
                        PrefabLink.this.unlink();
                    } finally {
                        j.P1(S12);
                    }
                }
            }

            public a() {
            }

            @Override
            public void a(c.g dialog) {
                dialog.dismiss();
                K8.a.I(new RunnableC1204a());
            }

            @Override
            public void b(c.g dialog) {
                dialog.dismiss();
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return null;
        }

        @Override
        public void set(Variable variable) {
            Z6.c.z1("Attention!", "Are you sure you want to unlink this object of the prefab?", new a());
        }
    }

    static {
        C13201a.b(new a());
    }

    public PrefabLink() {
        super(f73650J);
        this.f73652E = 0;
        this.f73655H = new SteppedArrayList();
        this.f73656I = 0;
    }

    private void buildFailedFile() {
        if (this.f73655H.size() == 1 && this.f73655H.get(0).f73662a.equals("Failed to load file")) {
            return;
        }
        this.f73655H.clear();
        this.f73655H.add(new d("Failed to load file", R.color.colorAccent));
        reloadInspector();
    }

    private boolean compare(Vector3 a10, Vector3 b10) {
        return a10.equally(b10);
    }

    private void loadChildren(GameObject template) {
        int D10 = this.f79250n.D();
        for (int i10 = 0; i10 < template.D(); i10++) {
            try {
                GameObject C10 = template.C(i10);
                if (i10 >= D10) {
                    GameObject gameObject = new GameObject();
                    gameObject.E1(C10.getName());
                    gameObject.clonedByPrefab = true;
                    PrefabLink prefabLink = new PrefabLink();
                    prefabLink.file = this.file;
                    prefabLink.isChild = true;
                    prefabLink.indexInParent = i10;
                    prefabLink.f73652E = 0;
                    gameObject.r(prefabLink);
                    com.itsmagic.engine.Engines.Engine.World.b.f(gameObject, this.f79250n);
                    D10++;
                } else {
                    GameObject C11 = this.f79250n.C(i10);
                    C11.E1(C10.getName());
                    C11.clonedByPrefab = true;
                    PrefabLink prefabLink2 = (PrefabLink) C11.c0(Component.e.PrefabLink);
                    if (prefabLink2 == null) {
                        prefabLink2 = new PrefabLink();
                        C11.r(prefabLink2);
                    }
                    prefabLink2.file = this.file;
                    prefabLink2.isChild = true;
                    prefabLink2.indexInParent = i10;
                    prefabLink2.f73652E = 0;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        if (D10 > template.D()) {
            for (int D11 = template.D() - 1; D11 <= this.f79250n.D() - 1; D11++) {
                try {
                    GameObject C12 = this.f79250n.C(D11);
                    if (C12.clonedByPrefab) {
                        C12.destroy();
                    }
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
        }
    }

    private void loadComponents(GameObject template) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < this.f79250n.N(); i10++) {
            Component L10 = this.f79250n.L(i10);
            if (L10.getType() != Component.e.PrefabLink) {
                boolean z10 = false;
                for (int i11 = 0; i11 < template.N(); i11++) {
                    Component L11 = template.L(i11);
                    if (L11.getType() != Component.e.PrefabLink && L11.getType() != Component.e.ObjectLink && L11.getGuid().j().equals(L10.getGuid().j())) {
                        z10 = true;
                    }
                }
                if (z10) {
                    steppedArrayList.add(L10);
                } else if (L10.clonedByPrefab) {
                    steppedArrayList.add(L10);
                }
            }
        }
        Iterator<T> it = steppedArrayList.iterator();
        while (it.hasNext()) {
            this.f79250n.v1((Component) it.next(), true);
        }
        for (int i12 = 0; i12 < template.N(); i12++) {
            Component L12 = template.L(i12);
            if (L12.getType() != Component.e.PrefabLink && L12.getType() != Component.e.ObjectLink) {
                Component clone = Component.clone(L12);
                clone.clonedByPrefab = true;
                this.f79250n.r(clone);
            }
        }
    }

    private void loadDifferences() {
        this.f73655H.clear();
        GameObject finalTemplateObject = getFinalTemplateObject();
        if (finalTemplateObject == null) {
            buildFailedFile();
            return;
        }
        loadTransform(finalTemplateObject);
        loadTag(finalTemplateObject);
        loadComponents(finalTemplateObject);
        loadChildren(finalTemplateObject);
    }

    private void loadTag(GameObject template) {
        this.f79250n.L1(template.getTag());
    }

    private void loadTransform(GameObject template) {
        if (isChild()) {
            this.f79250n.E1(template.getName());
            this.f79250n.transform.b3(template.transform);
        }
    }

    private void prepare(GameObject gameObject) {
        getEditor().i(true);
        getEditor().h(true);
        getEditor().g(true);
        getEditor().j(true);
        if (isChild()) {
            if (this.file == null) {
                buildFailedFile();
                return;
            }
            int i10 = this.f73652E;
            if (i10 == 0) {
                this.f73652E = i10 + 1;
                loadDifferences();
                return;
            }
            return;
        }
        String str = this.file;
        if (str == null) {
            buildFailedFile();
            return;
        }
        if (gameObject != null) {
            C13438a c13438a = this.f73653F;
            if (c13438a == null || this.f73654G == null) {
                C13438a b10 = C13440c.b(str);
                this.f73653F = b10;
                GameObject f10 = b10.f();
                this.f73654G = f10;
                if (f10 == null) {
                    buildFailedFile();
                    return;
                } else {
                    this.f73652E = this.f73653F.e();
                    loadDifferences();
                    return;
                }
            }
            int i11 = this.f73652E;
            if (i11 == 0 || i11 != c13438a.e()) {
                GameObject f11 = this.f73653F.f();
                this.f73654G = f11;
                if (f11 == null) {
                    buildFailedFile();
                } else {
                    loadDifferences();
                    this.f73652E = this.f73653F.e();
                }
            }
        }
    }

    public void unlink() {
        for (int i10 = 0; i10 < this.f79250n.D(); i10++) {
            PrefabLink prefabLink = (PrefabLink) this.f79250n.C(i10).c0(Component.e.PrefabLink);
            if (prefabLink != null) {
                prefabLink.unlink();
            }
        }
        destroyComponent();
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.OBJECT_LINK);
    }

    public String getFile() {
        return this.file;
    }

    public GameObject getFinalEditableTemplateObject() {
        PrefabLink prefabLink;
        if (!isChild()) {
            return this.f73654G;
        }
        if (!this.f79250n.O0() || (prefabLink = (PrefabLink) this.f79250n.H0().c0(Component.e.PrefabLink)) == null) {
            return null;
        }
        return prefabLink.getFinalEditableTemplateObject();
    }

    public GameObject getFinalTemplateObject() {
        PrefabLink prefabLink;
        GameObject finalTemplateObject;
        if (!isChild()) {
            return this.f73654G;
        }
        if (!this.f79250n.O0() || (prefabLink = (PrefabLink) this.f79250n.H0().c0(Component.e.PrefabLink)) == null || (finalTemplateObject = prefabLink.getFinalTemplateObject()) == null) {
            return null;
        }
        int D10 = finalTemplateObject.D();
        int i10 = this.indexInParent;
        if (D10 <= i10) {
            return null;
        }
        return finalTemplateObject.C(i10);
    }

    @Override
    public int getIconResource() {
        return R.drawable.prefab2;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_material_shader;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        String str = Lang.l(Lang.T.LINKED_TO) + ": " + this.file;
        Ac.b bVar = Theme.T.HIGH_TEXT_COLOR;
        steppedArrayList.add(new C5.b(str, 12, Theme.i(bVar)));
        if (c8.b.l()) {
            if (!this.f73655H.isEmpty()) {
                steppedArrayList.add(new C5.b(Lang.l(Lang.T.SEPARATOR_LINE), 12));
                steppedArrayList.add(new C5.b(this.f73655H.size() + " " + Lang.l(Lang.T.DIFFERENCES), 12));
                for (int i10 = 0; i10 < this.f73655H.size(); i10++) {
                    d dVar = this.f73655H.get(i10);
                    steppedArrayList.add(new C5.b(Lang.l(Lang.T.BULLET_PREFIX) + dVar.f73662a, 12, dVar.f73663b));
                }
                steppedArrayList.add(new C5.b(Lang.l(Lang.T.SEPARATOR_LINE), 12));
            }
            b bVar2 = new b();
            b.a aVar = b.a.Button;
            steppedArrayList.add(new C5.b(bVar2, "Edit prefab", aVar));
            steppedArrayList.add(new C5.b(new c(), "Unlink of prefab", aVar));
        } else {
            steppedArrayList.add(new C5.b(Lang.l(Lang.T.OPTIONS_AVAILABLE_ONLY_WHEN_GAME_STOPPED), 12, Theme.i(bVar)));
        }
        return steppedArrayList;
    }

    @Override
    public String getTitle() {
        return "Prefab";
    }

    @Override
    public Component.e getType() {
        return Component.e.PrefabLink;
    }

    public boolean isChild() {
        return this.isChild;
    }

    @Override
    public void onGameStateChanged(boolean running, boolean paused) {
        super.onGameStateChanged(running, paused);
        if (!running || paused) {
            return;
        }
        destroyComponent();
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (c8.b.l()) {
            prepare(gameObject);
        }
    }

    public void setChild(boolean child) {
        this.isChild = child;
    }

    public void setFile(String file) {
        file.getClass();
        String str = this.file;
        if (str == null || !str.equals(file)) {
            this.file = file;
            this.f73652E = 0;
        }
    }

    private boolean compare(Quaternion a10, Quaternion b10) {
        return a10.r(b10);
    }

    @Override
    public Component mo1248clone() {
        PrefabLink prefabLink = new PrefabLink();
        prefabLink.file = this.file;
        prefabLink.isChild = this.isChild;
        prefabLink.indexInParent = this.indexInParent;
        return prefabLink;
    }

    public static class d {

        public String f73662a;

        public int f73663b;

        public d(String text) {
            this.f73663b = -1;
            this.f73662a = text;
        }

        public d(String text, int color) {
            this.f73662a = text;
            this.f73663b = color;
        }
    }
}
