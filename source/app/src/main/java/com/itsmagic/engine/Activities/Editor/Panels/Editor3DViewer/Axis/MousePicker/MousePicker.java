package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker;

import Ic.C2626e;
import Ic.C2630i;
import JAVARuntime.Color;
import JAVARuntime.GUIUtils;
import JAVARuntime.GizmoObject;
import a8.C3589a;
import aa.C3593a;
import aa.C3595c;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Cursor3D;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Link.PrefabLink;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils.TerrainRaycaster;
import com.itsmagic.engine.Engines.Engine.JavaPool.MiniJP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Engine.World.World;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13317e;
import java.util.List;
import java.util.function.Predicate;
import ob.b;
import rc.C15169a;

public class MousePicker extends Component implements O4.a {

    public static final C2626e f71418R = new C2626e();

    public static i f71419S = new a();

    public static i f71420T = new b();

    public final MiniJP f71421E;

    public EditorCamera f71422F;

    public Panel3DView f71423G;

    public final Vector2 f71424H;

    public R4.b f71425I;

    public final g f71426J;

    public final h f71427K;

    public final List<l> f71428L;

    public final List<j> f71429M;

    public final List<Component> f71430N;

    public final k f71431O;

    public float f71432P;

    public i f71433Q;

    public class a implements i {
        @Override
        public GameObject a(Component component) {
            return component.f79250n;
        }

        @Override
        public boolean b(Component component) {
            return true;
        }
    }

    public class b implements i {
        @Override
        public GameObject a(Component component) {
            return component.f79250n;
        }

        @Override
        public boolean b(Component component) {
            return false;
        }
    }

    public class c implements k {
        public c() {
        }

        @Override
        public void a(l gizmo) {
            MousePicker.this.f71428L.add(gizmo);
        }

        @Override
        public g b() {
            return MousePicker.this.f71426J;
        }

        @Override
        public void c(j hit) {
            MousePicker.this.f71429M.add(hit);
        }

        @Override
        public EditorCamera getCamera() {
            return MousePicker.this.f71422F;
        }

        @Override
        public h getConfig() {
            return MousePicker.this.f71427K;
        }
    }

    public class d implements Runnable {

        public final List f71435b;

        public final aa.d f71436c;

        public class a implements Runnable {

            public final Vector3 f71438b;

            public a(final Vector3 val$finalClosestHit) {
                this.f71438b = val$finalClosestHit;
            }

            @Override
            public void run() {
                if (this.f71438b != null) {
                    Panel3DView.y1(Cursor3D.f71511K, MousePicker.this.f71423G.cameraZoom);
                }
            }
        }

        public d(final List val$terrains, final aa.d val$ray) {
            this.f71435b = val$terrains;
            this.f71436c = val$ray;
        }

        @Override
        public void run() {
            SteppedArrayList<Vector3> steppedArrayList = new SteppedArrayList();
            try {
                for (Component component : this.f71435b) {
                    if (component.isHierarchyActive()) {
                        Vector3 vector3 = new Vector3();
                        aa.d dVar = this.f71436c;
                        if (TerrainRaycaster.c(dVar.f31957b, dVar.f31958c, (Terrain) component, vector3)) {
                            steppedArrayList.add(vector3);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            C3593a z10 = new aa.e().z(new C3595c(this.f71436c), true);
            if (z10 != null) {
                steppedArrayList.add(z10.i());
            }
            float f10 = 1.0E9f;
            Vector3 vector32 = null;
            for (Vector3 vector33 : steppedArrayList) {
                float G12 = MousePicker.this.f79250n.transform.G1(vector33);
                if (vector32 == null || G12 <= f10) {
                    vector32 = vector33;
                    f10 = G12;
                }
            }
            K8.a.I(new a(vector32));
        }
    }

    public class e implements Predicate<j> {
        public e() {
        }

        @Override
        public boolean test(j hit) {
            GameObject a10 = MousePicker.this.f71433Q.a(hit.f71449d);
            if (a10 == null) {
                return true;
            }
            hit.f71446a = a10;
            return false;
        }
    }

    public static class f implements i {
        @Override
        public GameObject a(Component component) {
            return component.f79250n;
        }

        @Override
        public boolean b(Component component) {
            return true;
        }
    }

    public static class g {

        public final Vector3 f71441a = new Vector3();

        public final Vector3 f71442b = new Vector3();

        public final float[] f71443c = new float[16];

        public final Vertex f71444d = Vertex.C1(Vertex.v.CUBE);
    }

    public static class h {

        public boolean f71445a = false;
    }

    public interface i {
        GameObject a(Component component);

        boolean b(Component component);
    }

    public static class j {

        public GameObject f71446a;

        public C3593a f71447b;

        public GizmoObject f71448c;

        public Component f71449d;

        public j(C3593a hit, GizmoObject gizmo, Component component) {
            this.f71447b = hit;
            this.f71448c = gizmo;
            this.f71449d = component;
        }
    }

    public interface k {
        void a(l gizmo);

        g b();

        void c(j hit);

        EditorCamera getCamera();

        h getConfig();
    }

    public static class l extends ob.b {

        public GizmoObject f71450e;

        public boolean f71451g;

        public class a implements b.a {

            public final b f71452a;

            public final GizmoObject f71453b;

            public a(final b val$runnable, final GizmoObject val$gizmoObject) {
                this.f71452a = val$runnable;
                this.f71453b = val$gizmoObject;
            }

            @Override
            public boolean run() {
                if (l.this.f71451g) {
                    return false;
                }
                return this.f71452a.a(this.f71453b);
            }
        }

        public interface b {
            boolean a(GizmoObject gizmoObject);
        }

        public l(GizmoObject gizmoObject, b runnable) {
            this.f71450e = gizmoObject;
            super.i(new a(runnable, gizmoObject));
        }
    }

    public MousePicker(EditorCamera editorCamera, Panel3DView editor3DViewer, R4.b enableFilter) {
        super("MousePicker");
        this.f71421E = new MiniJP();
        this.f71424H = new Vector2();
        this.f71427K = new h();
        this.f71428L = new SteppedArrayList();
        this.f71429M = new SteppedArrayList();
        this.f71430N = new SteppedArrayList();
        this.f71431O = new c();
        this.f71432P = 0.0f;
        this.f71433Q = f71419S;
        this.f71422F = editorCamera;
        this.f71423G = editor3DViewer;
        this.f71425I = enableFilter;
        this.f71426J = new g();
        if (editor3DViewer instanceof N4.d) {
            i J12 = ((N4.d) editor3DViewer).J1();
            this.f71433Q = J12;
            if (J12 == null) {
                this.f71433Q = f71419S;
            }
        }
    }

    public static void blockSelectionForMidSecond() {
        f71418R.d(0.3f);
    }

    private void doRaycast(tc.h touch) {
        PrefabLink prefabLink;
        try {
            Panel3DView panel3DView = this.f71423G;
            if (panel3DView instanceof N4.d) {
                i J12 = ((N4.d) panel3DView).J1();
                this.f71433Q = J12;
                if (J12 == null) {
                    this.f71433Q = f71419S;
                }
            }
            int i10 = 0;
            if (this.f71427K.f71445a) {
                for (int i11 = 0; i11 < this.f71428L.size(); i11++) {
                    this.f71428L.get(i11).f71451g = true;
                }
                this.f71428L.clear();
            } else {
                this.f71428L.clear();
            }
            this.f71429M.clear();
            this.f71423G.a0(touch, this.f71424H);
            C3595c c3595c = new C3595c(this.f71422F.screenPointToWorldRay(this.f71424H));
            World world = com.itsmagic.engine.Engines.Engine.World.a.f80030c;
            if (world != null) {
                int size = world.f80011b.size();
                for (int i12 = 0; i12 < size; i12++) {
                    raycastObject(com.itsmagic.engine.Engines.Engine.World.a.f80030c.f80011b.get(i12), c3595c);
                }
            }
            this.f71429M.removeIf(new e());
            j jVar = null;
            for (int i13 = 0; i13 < this.f71429M.size(); i13++) {
                j jVar2 = this.f71429M.get(i13);
                if (jVar == null || jVar.f71447b.getDistance() > jVar2.f71447b.getDistance()) {
                    jVar = jVar2;
                }
            }
            if (W7.b.f27309i.f31909a.f31910a != null) {
                while (true) {
                    C3589a c3589a = W7.b.f27309i;
                    if (i10 >= c3589a.f31909a.f31910a.N()) {
                        break;
                    }
                    Component L10 = c3589a.f31909a.f31910a.L(i10);
                    if (jVar != null) {
                        if (!L10.allowSwapPickTo(jVar.f71449d)) {
                            return;
                        }
                    } else if (!L10.allowSwapPickTo(null)) {
                        return;
                    }
                    i10++;
                }
            }
            if (jVar == null) {
                this.f71430N.clear();
                W7.b.f27308h.h(null);
                if (EditorSettings.a().vibrateOnSelection) {
                    C2630i.w(50L);
                    return;
                }
                return;
            }
            if (this.f71427K.f71445a) {
                jVar.f71448c.setColor(new Color(0.0f, 0.9f, 0.0f));
            }
            GameObject gameObject = jVar.f71446a;
            if (jVar.f71447b.getGameObject() != null && (prefabLink = (PrefabLink) jVar.f71447b.getGameObject().c0(Component.e.PrefabLink)) != null) {
                while (prefabLink.isChild()) {
                    try {
                        prefabLink = (PrefabLink) prefabLink.f79250n.H0().c0(Component.e.PrefabLink);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                gameObject = prefabLink.f79250n;
            }
            W7.b.f27308h.h(gameObject);
            this.f71430N.add(jVar.f71449d);
            this.f71432P = 1.0f;
            if (EditorSettings.a().vibrateOnSelection) {
                C2630i.w(50L);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    private boolean filterCandidate(Component component) {
        if (W7.b.f27309i.f31909a.f31910a == null) {
            return true;
        }
        int i10 = 0;
        while (true) {
            C3589a c3589a = W7.b.f27309i;
            if (i10 >= c3589a.f31909a.f31910a.N()) {
                return true;
            }
            if (!c3589a.f31909a.f31910a.L(i10).allowSwapPickTo(component)) {
                return false;
            }
            i10++;
        }
    }

    private void focusOnHit(tc.h touch) {
        this.f71423G.a0(touch, this.f71424H);
        SteppedArrayList steppedArrayList = new SteppedArrayList(R8.f.h(Terrain.class));
        aa.d screenPointToWorldRay = this.f71422F.screenPointToWorldRay(this.f71424H);
        if (screenPointToWorldRay.e().lengthF() <= 0.1f) {
            return;
        }
        Thread thread = new Thread(new d(steppedArrayList, screenPointToWorldRay));
        thread.setPriority(1);
        thread.start();
    }

    private void raycastObject(GameObject obj, C3595c ray) {
        Transform J02;
        if (C13317e.J(obj) && obj.isEnabled() && obj.i1()) {
            if (obj.j1() && (J02 = obj.J0()) != null) {
                J02.u0((Vector3) this.f71421E.acquire(Vector3.class));
                int N10 = obj.N();
                for (int i10 = 0; i10 < N10; i10++) {
                    Component L10 = obj.L(i10);
                    if (L10 != null && L10.isEnabled() && L10.f79237B && this.f71433Q.b(L10) && filterCandidate(L10)) {
                        int i11 = 0;
                        while (true) {
                            if (i11 >= this.f71430N.size()) {
                                L10.mousePick(ray, this.f71431O);
                                break;
                            } else if (this.f71430N.get(i11) == L10) {
                                break;
                            } else {
                                i11++;
                            }
                        }
                    }
                }
            }
            int D10 = obj.D();
            for (int i12 = 0; i12 < D10; i12++) {
                raycastObject(obj.C(i12), ray);
            }
        }
    }

    public static void staticUpdate() {
        C2626e c2626e = f71418R;
        float b10 = c2626e.b();
        if (b10 > 0.0f) {
            c2626e.d(b10 - K8.d.d());
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        tc.h y10;
        super.preUpdate(gameObject, isEditor);
        this.f71421E.startFrame();
        try {
            float f10 = this.f71432P;
            if (f10 > 0.0f) {
                float d10 = f10 - K8.d.d();
                this.f71432P = d10;
                if (d10 <= 0.0f) {
                    this.f71430N.clear();
                }
            }
            if (f71418R.b() <= 0.0f) {
                if (this.f71425I.a(W7.b.f27309i.f31909a.f31910a, this.f71423G) && this.f71423G.f71462c0 == null && ((v3.c.b() == null || !v3.c.b().d()) && (y10 = this.f71423G.y(GUIUtils.TouchFilter.Up, true)) != null && !y10.f117309e && C15169a.f108812u.k())) {
                    doRaycast(y10);
                }
            }
            this.f71421E.endFrame();
        } catch (Throwable th2) {
            this.f71421E.endFrame();
            throw th2;
        }
    }
}
