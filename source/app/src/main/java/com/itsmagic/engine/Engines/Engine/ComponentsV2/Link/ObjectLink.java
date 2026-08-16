package com.itsmagic.engine.Engines.Engine.ComponentsV2.Link;

import C5.b;
import D5.h;
import JAVARuntime.Runnable;
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
import fb.AbstractC13203c;
import fb.C13201a;
import hb.C13438a;
import hb.C13440c;
import java.util.List;
import s8.InterfaceC15238b;
import t6.e;
import t6.j;

@InterfaceC15238b
public class ObjectLink extends Component {

    public static final String f73638J = "ObjectLink";

    public static final Class f73639K = ObjectLink.class;

    public int f73640E;

    public C13438a f73641F;

    public GameObject f73642G;

    public final List<c> f73643H;

    public int f73644I;

    @Expose
    private String file;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return ObjectLink.f73639K;
        }

        @Override
        public String c() {
            return ObjectLink.f73638J;
        }

        @Override
        public boolean g() {
            return false;
        }
    }

    public class b implements h {

        public final Context f73645a;

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("ObjectLink - export object to file") : null;
                try {
                    ObjectLink objectLink = ObjectLink.this;
                    if (objectLink.f79250n != null) {
                        X7.a.b(objectLink.file, ObjectLink.this.f79250n.x1().toString(), b.this.f73645a);
                        C13440c.d(ObjectLink.this.file);
                        N7.c.w0(Lang.l(Lang.T.OBJECT) + " " + ObjectLink.this.f79250n.getName() + " " + Lang.l(Lang.T.EXPORTED_TO) + " " + ObjectLink.this.file, true);
                    }
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b(final Context val$context) {
            this.f73645a = val$context;
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

    static {
        C13201a.b(new a());
    }

    public ObjectLink() {
        super(f73638J);
        this.f73640E = 0;
        this.f73643H = new SteppedArrayList();
        this.f73644I = 0;
    }

    private void buildDifferences() {
        int i10;
        int i11;
        this.f73643H.clear();
        GameObject gameObject = this.f79250n;
        this.f73644I = gameObject.N();
        GameObject gameObject2 = this.f73642G;
        if (!compare(gameObject2.transform.Z0(), gameObject.transform.Z0())) {
            this.f73643H.add(new c("Position " + gameObject2.transform.Z0().toString()));
        }
        if (!compare(gameObject2.transform.h1(), gameObject.transform.h1())) {
            this.f73643H.add(new c("Rotation " + gameObject2.transform.h1().B().toString()));
        }
        if (!compare(gameObject2.transform.getScale(), gameObject.transform.getScale())) {
            this.f73643H.add(new c("Scale " + gameObject2.transform.getScale().toString()));
        }
        for (int i12 = 0; i12 < gameObject2.N(); i12++) {
            Component L10 = gameObject2.L(i12);
            if (L10.getType() != Component.e.ObjectLink) {
                while (true) {
                    if (i11 >= gameObject.N()) {
                        this.f73643H.add(new c("Missing component (" + L10.getTitle() + ")", R.color.colorAccent));
                        break;
                    }
                    Component L11 = gameObject.L(i11);
                    i11 = (L10.getGuid().l().equals(L11.getGuid().l()) && L10.getType() == L11.getType()) ? 0 : i11 + 1;
                }
            }
        }
        for (int i13 = 0; i13 < gameObject.N(); i13++) {
            Component L12 = gameObject.L(i13);
            if (L12.getType() != Component.e.ObjectLink) {
                while (true) {
                    if (i10 >= gameObject2.N()) {
                        this.f73643H.add(new c("Added component (" + L12.getTitle() + ")"));
                        break;
                    }
                    Component L13 = gameObject2.L(i10);
                    i10 = (L12.getGuid().l().equals(L13.getGuid().l()) && L12.getType() == L13.getType()) ? 0 : i10 + 1;
                }
            }
        }
        reloadInspector();
    }

    private void buildFailedFile() {
        if (this.f73643H.size() == 1 && this.f73643H.get(0).f73648a.equals("Failed to load file")) {
            return;
        }
        this.f73643H.clear();
        this.f73643H.add(new c("Failed to load file", R.color.colorAccent));
        reloadInspector();
    }

    private boolean compare(Vector3 a10, Vector3 b10) {
        return a10.equally(b10);
    }

    @Override
    public String getDisplayableTitle() {
        return Lang.l(Lang.T.OBJECT_LINK);
    }

    public String getFile() {
        return this.file;
    }

    @Override
    public int getIconResource() {
        return R.drawable.cubes_v2;
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
            if (!this.f73643H.isEmpty()) {
                steppedArrayList.add(new C5.b(Lang.l(Lang.T.SEPARATOR_LINE), 12));
                steppedArrayList.add(new C5.b(this.f73643H.size() + " " + Lang.l(Lang.T.DIFFERENCES), 12));
                for (int i10 = 0; i10 < this.f73643H.size(); i10++) {
                    c cVar = this.f73643H.get(i10);
                    steppedArrayList.add(new C5.b(Lang.l(Lang.T.BULLET_PREFIX) + cVar.f73648a, 12, cVar.f73649b));
                }
                steppedArrayList.add(new C5.b(Lang.l(Lang.T.SEPARATOR_LINE), 12));
            }
            steppedArrayList.add(new C5.b(new b(context), Lang.l(Lang.T.APPLY_CHANGES_TO_FILE), b.a.Button));
        } else {
            steppedArrayList.add(new C5.b(Lang.l(Lang.T.OPTIONS_AVAILABLE_ONLY_WHEN_GAME_STOPPED), 12, Theme.i(bVar)));
        }
        return steppedArrayList;
    }

    @Override
    public String getTitle() {
        return "FileLink";
    }

    @Override
    public Component.e getType() {
        return Component.e.ObjectLink;
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
        super.parallelUpdate();
        if (c8.b.l()) {
            String str = this.file;
            if (str == null) {
                buildFailedFile();
                return;
            }
            if (gameObject != null) {
                C13438a c13438a = this.f73641F;
                if (c13438a == null || this.f73642G == null) {
                    C13438a b10 = C13440c.b(str);
                    this.f73641F = b10;
                    GameObject f10 = b10.f();
                    this.f73642G = f10;
                    if (f10 == null) {
                        buildFailedFile();
                        return;
                    } else {
                        this.f73640E = this.f73641F.e();
                        buildDifferences();
                        return;
                    }
                }
                int i10 = this.f73640E;
                if (i10 != 0 && i10 == c13438a.e()) {
                    if (this.f73642G == null) {
                        buildFailedFile();
                        return;
                    } else {
                        if (this.f73644I != gameObject.N()) {
                            buildDifferences();
                            return;
                        }
                        return;
                    }
                }
                GameObject f11 = this.f73641F.f();
                this.f73642G = f11;
                if (f11 == null) {
                    buildFailedFile();
                } else {
                    buildDifferences();
                    this.f73640E = this.f73641F.e();
                }
            }
        }
    }

    public void setFile(String file) {
        file.getClass();
        String str = this.file;
        if (str == null || !str.equals(file)) {
            this.file = file;
            this.f73640E = 0;
        }
    }

    private boolean compare(Quaternion a10, Quaternion b10) {
        return a10.r(b10);
    }

    @Override
    public Component mo1248clone() {
        ObjectLink objectLink = new ObjectLink();
        objectLink.file = this.file;
        return objectLink;
    }

    public static class c {

        public String f73648a;

        public int f73649b;

        public c(String text) {
            this.f73649b = -1;
            this.f73648a = text;
        }

        public c(String text, int color) {
            this.f73648a = text;
            this.f73649b = color;
        }
    }
}
