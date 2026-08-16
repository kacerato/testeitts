package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base;

import Ic.A;
import Ic.C2624c;
import JAVARuntime.Runnable;
import a4.C3580b;
import a4.InterfaceC3579a;
import a8.C3589a;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis.MousePicker.MousePicker;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.AxisCubeCamera;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.Grid.GridHorizontal;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ParticleSystem.ParticleEmitter;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.jme3.math.Matrix4f;
import com.jme3.math.Vector3f;
import d9.C12886a;
import dd.C12908b;
import e5.C13008a;
import gb.C13317e;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class Panel3DView extends EditorPanel {

    public static final String f71455w0 = "Panel3DView";

    public static final List<N4.c> f71456x0 = Collections.synchronizedList(new LinkedList());

    public final List<GameObject> f71457X;

    public boolean f71458Y;

    public String f71459Z;

    public final n5.d f71460a0;

    public float f71461b0;

    public O4.a f71462c0;

    @Expose
    public float cameraPitch;

    @Expose
    public float cameraYaw;

    @Expose
    public float cameraZoom;

    public final N4.c f71463d0;

    public float f71464e0;

    @Expose
    public boolean enable3DCursor;

    @Expose
    public boolean enableGrid;

    @Expose
    public boolean enableLight;

    public float f71465f0;

    public boolean f71466g0;

    @Expose
    public boolean gridMove;

    @Expose
    private float gridScale;

    public j f71467h0;

    public P4.b f71468i0;

    public i f71469j0;

    public boolean f71470k0;

    public h f71471l0;

    public boolean f71472m0;

    public Vector3 f71473n0;

    public float f71474o0;

    public float f71475p0;

    public float f71476q0;

    public GameObject f71477r0;

    @Expose
    public boolean renderNavMesh;

    public final Matrix4f f71478s0;

    @Expose
    public Vector3 selectedPosition;

    @Expose
    public final C13008a snapToScaleConfigs;

    @Expose
    public final SnapToSurfaceConfigs snapToSurfaceConfigs;

    public final Vector3 f71479t0;

    public final Vector3f f71480u0;

    @Expose
    public boolean useBoundingCenter;

    @Expose
    public boolean useGlobalOrientation;

    public final Vector3f f71481v0;

    public class a implements N4.c {
        public a() {
        }

        @Override
        public void a() {
            Panel3DView.this.O1();
        }

        @Override
        public void b() {
            Panel3DView.this.Z1();
        }

        @Override
        public void c() {
            Panel3DView.this.z1();
        }

        @Override
        public boolean d(Vector3 location, float zoom) {
            return Panel3DView.this.w1(location, zoom);
        }

        @Override
        public void e() {
            Panel3DView.this.v1(true);
        }
    }

    public class b implements InterfaceC3579a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Panel3DView.this.S1(j.Position, false, true);
            }
        }

        public b() {
        }

        @Override
        public void run() {
            N7.c.j0(new a());
        }
    }

    public class c implements InterfaceC3579a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Panel3DView.this.S1(j.Rotation, false, true);
            }
        }

        public c() {
        }

        @Override
        public void run() {
            N7.c.j0(new a());
        }
    }

    public class d implements InterfaceC3579a {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                Panel3DView.this.S1(j.Scale, false, true);
            }
        }

        public d() {
        }

        @Override
        public void run() {
            N7.c.j0(new a());
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            Panel3DView.this.N1();
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            for (int i10 = 0; i10 < Panel3DView.this.f71457X.size(); i10++) {
                Panel3DView.this.f71457X.get(i10).destroy();
            }
            K8.a.E(Panel3DView.this.f71457X);
            Panel3DView.this.f71457X.clear();
            Panel3DView panel3DView = Panel3DView.this;
            panel3DView.f71458Y = false;
            if (panel3DView.f71477r0 != null) {
                K8.a.D(Panel3DView.this.f71477r0);
                Panel3DView.this.f71477r0 = null;
            }
        }
    }

    public class g extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View v10) {
                Panel3DView.this.useBoundingCenter = !r2.useBoundingCenter;
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                Panel3DView.this.f71466g0 = !r2.f71466g0;
            }
        }

        public class c implements dd.d {
            public c() {
            }

            @Override
            public void onSelected(View v10) {
                Panel3DView.this.enableLight = !r2.enableLight;
            }
        }

        public class d implements dd.d {
            public d() {
            }

            @Override
            public void onSelected(View v10) {
                Panel3DView.this.enableGrid = !r2.enableGrid;
            }
        }

        public class e implements dd.d {
            public e() {
            }

            @Override
            public void onSelected(View v10) {
                Panel3DView.this.enable3DCursor = !r2.enable3DCursor;
            }
        }

        public class f implements dd.d {
            public f() {
            }

            @Override
            public void onSelected(View v10) {
                Panel3DView.this.renderNavMesh = !r2.renderNavMesh;
            }
        }

        public g() {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(Panel3DView.this.useBoundingCenter ? "X" : " ");
            sb2.append("] Use bounding center");
            add(new C12908b(sb2.toString(), new a()));
            StringBuilder sb3 = new StringBuilder();
            sb3.append("[");
            sb3.append(Panel3DView.this.f71466g0 ? "X" : " ");
            sb3.append("] Physics debug mode ");
            add(new C12908b(sb3.toString(), new b()));
            StringBuilder sb4 = new StringBuilder();
            sb4.append("[");
            sb4.append(Panel3DView.this.enableLight ? "X" : " ");
            sb4.append("] ");
            sb4.append(Lang.l(Lang.T.RENDER_LIGHT));
            add(new C12908b(sb4.toString(), new c()));
            StringBuilder sb5 = new StringBuilder();
            sb5.append("[");
            sb5.append(Panel3DView.this.enableGrid ? "X" : " ");
            sb5.append("] ");
            sb5.append(Lang.l(Lang.T.RENDER_GRID));
            add(new C12908b(sb5.toString(), new d()));
            StringBuilder sb6 = new StringBuilder();
            sb6.append("[");
            sb6.append(Panel3DView.this.enable3DCursor ? "X" : " ");
            sb6.append("] ");
            sb6.append(Lang.l(Lang.T.RENDER_3D_CURSOR));
            add(new C12908b(sb6.toString(), new e()));
            StringBuilder sb7 = new StringBuilder();
            sb7.append("[");
            sb7.append(Panel3DView.this.renderNavMesh ? "X" : " ");
            sb7.append("] Render navmesh");
            add(new C12908b(sb7.toString(), new f()));
        }
    }

    public enum h {
        TopRight,
        TopLeft,
        BottomRight
    }

    public enum i {
        Local,
        Global
    }

    public enum j {
        Disable,
        Position,
        Rotation,
        Scale,
        AccumulatedRotation,
        SPosition,
        SScale,
        HPOPAdd,
        HPOPRemove,
        TerrainUpper,
        TerrainDown,
        Custom,
        SnapToSurface,
        SnapToScale,
        All
    }

    public Panel3DView(K8.a engine) {
        this.f71457X = Collections.synchronizedList(new SteppedArrayList());
        this.f71458Y = false;
        this.f71459Z = null;
        this.f71460a0 = new n5.d();
        this.f71461b0 = 0.0f;
        this.f71463d0 = new a();
        this.selectedPosition = new Vector3();
        this.cameraZoom = 7.0f;
        this.cameraYaw = 0.0f;
        this.f71464e0 = -90.0f;
        this.f71465f0 = 90.0f;
        this.cameraPitch = 0.0f;
        this.gridMove = false;
        this.gridScale = 0.25f;
        this.useBoundingCenter = true;
        this.useGlobalOrientation = false;
        this.renderNavMesh = true;
        this.enableGrid = false;
        this.enableLight = true;
        this.enable3DCursor = true;
        this.snapToSurfaceConfigs = new SnapToSurfaceConfigs();
        this.snapToScaleConfigs = new C13008a();
        this.f71466g0 = false;
        this.f71467h0 = j.SnapToSurface;
        this.f71468i0 = null;
        this.f71469j0 = i.Local;
        this.f71470k0 = false;
        this.f71471l0 = h.BottomRight;
        this.f71472m0 = true;
        this.f71473n0 = null;
        this.f71474o0 = 0.0f;
        this.f71475p0 = 0.0f;
        this.f71476q0 = 0.0f;
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_positionAxis)).j(new b()).g(this));
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_rotationAxis)).j(new c()).g(this));
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_scaleAxis)).j(new d()).g(this));
        this.f71478s0 = new Matrix4f();
        this.f71479t0 = new Vector3();
        this.f71480u0 = new Vector3f();
        this.f71481v0 = new Vector3f();
    }

    public static void A1() {
        List<N4.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<N4.c> list2 = f71456x0;
            if (i10 >= list2.size()) {
                break;
            }
            N4.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.c();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71456x0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void P1() {
        List<N4.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<N4.c> list2 = f71456x0;
            if (i10 >= list2.size()) {
                break;
            }
            N4.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.a();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71456x0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void a2() {
        List<N4.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<N4.c> list2 = f71456x0;
            if (i10 >= list2.size()) {
                break;
            }
            N4.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.b();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71456x0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void x1() {
        List<N4.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<N4.c> list2 = f71456x0;
            if (i10 >= list2.size()) {
                break;
            }
            N4.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.e();
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71456x0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    public static void y1(Vector3 location, float zoom) {
        List<N4.c> list;
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            List<N4.c> list2 = f71456x0;
            if (i10 >= list2.size()) {
                break;
            }
            N4.c cVar = list2.get(i10);
            if (cVar != null) {
                cVar.d(location, zoom);
            } else {
                z10 = true;
            }
            i10++;
        }
        if (!z10) {
            return;
        }
        while (true) {
            int i11 = 0;
            while (true) {
                list = f71456x0;
                if (i11 >= list.size()) {
                    return;
                }
                if (list.get(i11) == null) {
                    break;
                } else {
                    i11++;
                }
            }
            list.remove(i11);
        }
    }

    @Override
    public void A0(o4.b engineUpdateData) {
        if (this.f71458Y) {
            n5.d dVar = this.f71460a0;
            dVar.f97746a.f73132Z = false;
            dVar.f97747b.C1(false);
            n5.d dVar2 = this.f71460a0;
            AxisCubeCamera axisCubeCamera = dVar2.f97742M;
            if (axisCubeCamera != null) {
                axisCubeCamera.f73132Z = false;
                GameObject gameObject = dVar2.f97743N.f79250n;
                if (gameObject != null) {
                    gameObject.C1(false);
                }
            }
            i1(false);
            for (int i10 = 0; i10 < this.f71457X.size(); i10++) {
                Q1(this.f71457X.get(i10));
            }
        }
    }

    public void B1(List<GameObject> objectList, n5.d sceneHierarchy) {
        n5.c.a(objectList, M(), sceneHierarchy, this);
    }

    @Override
    public View C0() {
        K8.a.I(new e());
        f71456x0.add(this.f71463d0);
        s1();
        return super.C0();
    }

    public void C1(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
    }

    public void D1(List<GameObject> list, n5.d sceneHierarchy, Panel3DView editor3DViewer) {
        ModelRenderer modelRenderer = new ModelRenderer();
        modelRenderer.setModel(new C12886a(Vertex.C1(Vertex.v.SQUARE)));
        Material material = new Material();
        material.f78885e = "@InfiniteGrid-" + Tc.b.L();
        material.f78886g = false;
        material.f0("InfinityGrid/Simple");
        modelRenderer.setMaterial(material);
        GameObject gameObject = new GameObject("GRID_HORIZONTAL", new Transform(new Vector3(0.0f, 0.0f, 0.0f), new Quaternion(0.0f, 0.0f, 0.0f), new Vector3(10.0f), Transform.G.DYNAMIC), modelRenderer, new GridHorizontal(sceneHierarchy.f97746a, editor3DViewer, modelRenderer));
        list.add(gameObject);
        sceneHierarchy.f97745P = gameObject;
    }

    public boolean E1(N4.a axis3DType) {
        return true;
    }

    public j F1() {
        return this.f71467h0;
    }

    @Override
    public void G0() {
        super.G0();
        f71456x0.remove(this.f71463d0);
        b2();
    }

    public h G1() {
        return this.f71471l0;
    }

    public P4.b H1() {
        return this.f71468i0;
    }

    public float I1() {
        return this.gridScale;
    }

    public MousePicker.i J1() {
        return null;
    }

    public i K1() {
        return this.f71469j0;
    }

    public boolean L1() {
        return this.f71472m0;
    }

    public boolean M1(tc.h touch) {
        return false;
    }

    @Override
    public List<C12908b> N() {
        return new g();
    }

    public final void N1() {
        String str;
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c == null || com.itsmagic.engine.Core.Components.ProjectController.a.T() == null) {
            return;
        }
        if (this.f71458Y && (str = this.f71459Z) != null && str.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
            return;
        }
        K8.a.E(this.f71457X);
        this.f71457X.clear();
        B1(this.f71457X, this.f71460a0);
        D1(this.f71457X, this.f71460a0, this);
        C1(this.f71457X, this.f71460a0, this);
        K8.a.M(this.f71457X);
        this.f71459Z = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        for (int i10 = 0; i10 < this.f71457X.size(); i10++) {
            GameObject gameObject = this.f71457X.get(i10);
            gameObject.f79294k = null;
            gameObject.Z1();
            gameObject.A1(true);
        }
        this.f71458Y = true;
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (panelIntent instanceof n4.g) {
            ((n4.g) panelIntent).a().a(this);
        }
        if (panelIntent instanceof O3.a) {
            this.f71460a0.f97746a.receiveEvent(new C2624c());
        }
        return super.O0(panelIntent);
    }

    public void O1() {
        this.selectedPosition.set(this.f71473n0);
        this.cameraZoom = A.c(this.f71474o0, 1.0f);
        this.cameraYaw = this.f71475p0;
        this.cameraPitch = this.f71476q0;
    }

    public final void Q1(GameObject object) {
        object.f79296m.j(0.0f);
        object.f79296m.k(0.0f);
        object.f79296m.i(0.0f);
        object.f79296m.h(0.0f);
        List<GameObject> z02 = object.z0();
        for (int i10 = 0; i10 < z02.size(); i10++) {
            Q1(z02.get(i10));
        }
    }

    public boolean R1() {
        return true;
    }

    public void S1(j axis, boolean callTopbarListener, boolean callCustomAxisListener) {
        P4.b bVar;
        if (this.f71467h0 != axis) {
            this.f71467h0 = axis;
            if (axis == j.Custom || (bVar = this.f71468i0) == null) {
                return;
            }
            P4.a aVar = bVar.f20685a;
            if (aVar != null && callCustomAxisListener) {
                aVar.b();
            }
            this.f71468i0.g();
            P4.a aVar2 = this.f71468i0.f20685a;
            if (aVar2 != null) {
                aVar2.a();
            }
            this.f71468i0 = null;
        }
    }

    public void T1(h axisCubeLocation) {
        this.f71471l0 = axisCubeLocation;
    }

    public void U1() {
        this.f71460a0.f97746a.setRenderPercentage(EditorSettings.a().cameraResolutionPercentage);
        this.f71460a0.f97746a.setFixedResolutionPixelsWidth(EditorSettings.a().fixedResolutionPixelsWidth);
        this.f71460a0.f97746a.setFixedResolutionPixelsHeight(EditorSettings.a().fixedResolutionPixelsHeight);
        this.f71460a0.f97746a.setFreeResolutionPixels(EditorSettings.a().freeResolutionPixels);
        this.f71460a0.f97746a.setResolutionMode(EditorSettings.a().resolutionMode);
    }

    public void V1(P4.b customAxis) {
        if (customAxis != null) {
            customAxis.g();
            P4.a aVar = customAxis.f20685a;
            if (aVar != null) {
                aVar.a();
            }
        }
        this.f71468i0 = customAxis;
        if (customAxis != null) {
            S1(j.Custom, true, true);
        } else {
            S1(j.Disable, true, true);
        }
    }

    public void W1(float gridScale) {
        this.gridScale = A.c(gridScale, 1.0f);
    }

    public final void X1(GameObject object, o4.f globalPercentageRect) {
        object.f79296m.f(globalPercentageRect);
        List<GameObject> z02 = object.z0();
        for (int i10 = 0; i10 < z02.size(); i10++) {
            X1(z02.get(i10), globalPercentageRect);
        }
    }

    public void Y1(boolean showAxisCube) {
        this.f71472m0 = showAxisCube;
    }

    public void Z1() {
        this.f71473n0 = this.selectedPosition.m1249clone();
        this.f71474o0 = A.c(this.cameraZoom, 1.0f);
        this.f71475p0 = this.cameraYaw;
        this.f71476q0 = this.cameraPitch;
    }

    public void b2() {
        if (com.itsmagic.engine.Engines.Engine.World.a.f80030c == null || this.f71457X.isEmpty()) {
            return;
        }
        K8.a.I(new f());
    }

    @Deprecated
    public final float c2(GameObject gameObject, boolean calculateZoom, Vector3 position, float maxZoom, AtomicInteger positionTotal) {
        if (!C13317e.J(gameObject) || !gameObject.isEnabled()) {
            return maxZoom;
        }
        Vector3 m1249clone = gameObject.transform.J0().m1249clone();
        for (int i10 = 0; i10 < gameObject.N(); i10++) {
            Component L10 = gameObject.L(i10);
            if (L10 != null && L10.isEnabled() && L10.getType() == Component.e.ParticleEmitter) {
                ParticleEmitter particleEmitter = (ParticleEmitter) L10;
                if (particleEmitter.getBounding() != null) {
                    AABB bounding = particleEmitter.getBounding();
                    if (calculateZoom) {
                        float M10 = Nc.b.M(1.0f, bounding.getRadius());
                        maxZoom = particleEmitter.getWorldSpace() == ParticleEmitter.z.Local ? A.c(Nc.b.S0(M10 * m1249clone.lengthF(), maxZoom), 1.0f) : A.c(Nc.b.S0(M10, maxZoom), 1.0f);
                    }
                    gameObject.transform.q0(this.f71478s0);
                    bounding.m().toVector3fJME(this.f71481v0);
                    this.f71478s0.mult(this.f71481v0, this.f71480u0);
                    position.addLocal(this.f71480u0);
                    positionTotal.incrementAndGet();
                }
            }
        }
        System.out.println("Position:" + position.toString() + " at " + gameObject.getName());
        float f10 = maxZoom;
        for (int i11 = 0; i11 < gameObject.D(); i11++) {
            if (!gameObject.transform.X1() && gameObject.isEnabled()) {
                f10 = c2(gameObject.C(i11), calculateZoom, position, f10, positionTotal);
            }
        }
        return f10;
    }

    @Override
    public boolean f() {
        return false;
    }

    @Override
    public EditorPanel k() {
        return new Panel3DView();
    }

    public void s1() {
        v1(true);
    }

    public void t1(GameObject gameObject) {
        u1(gameObject, true);
    }

    public void u1(GameObject gameObject, boolean calculateZoom) {
        Vector3 d10;
        n5.d dVar;
        EditorCamera editorCamera;
        if (C13317e.J(gameObject)) {
            GameObject.g z10 = this.useBoundingCenter ? gameObject.z() : gameObject.A(gameObject.transform.u0((Vector3) JP.acquire(Vector3.class)));
            GameObject.f x10 = gameObject.x();
            if (z10.f() && x10.f()) {
                this.selectedPosition.set(gameObject.transform.u0((Vector3) JP.acquire(Vector3.class)));
                if (calculateZoom) {
                    this.cameraZoom = 5.0f;
                    return;
                }
                return;
            }
            if (calculateZoom && (dVar = this.f71460a0) != null && (editorCamera = dVar.f97746a) != null) {
                float radians = (float) Math.toRadians(editorCamera.getFov());
                this.cameraZoom = (Nc.b.S0(z10.e(), x10.e()) / ((float) Math.tan(Math.min(radians, ((float) Math.atan(Math.tan(radians / 2.0f) * this.f71460a0.f97746a.getImageRatio())) * 2.0f) / 2.0f))) * 1.6f;
            }
            if (z10.f() || x10.f()) {
                d10 = (z10.f() || !x10.f()) ? (!z10.f() || x10.f()) ? null : x10.d() : z10.d();
            } else {
                d10 = z10.d().add(x10.d());
                d10.divLocal(2.0f);
            }
            if (d10 != null) {
                this.selectedPosition.set(d10);
            }
        }
    }

    public void v1(boolean calculateZoom) {
        C3589a c3589a = W7.b.f27309i;
        if (C13317e.J(c3589a.f31909a.f31910a)) {
            u1(c3589a.f31909a.f31910a, calculateZoom);
        }
    }

    public boolean w1(Vector3 location, float zoom) {
        this.selectedPosition.set(location);
        this.cameraZoom = A.c(zoom, 1.0f);
        return true;
    }

    @Override
    public void z(o4.b engineUpdateData) {
        N1();
        while (true) {
            float f10 = this.cameraYaw;
            if (f10 < 360.0f) {
                break;
            } else {
                this.cameraYaw = f10 - 360.0f;
            }
        }
        while (true) {
            float f11 = this.cameraYaw;
            if (f11 >= 0.0f) {
                break;
            } else {
                this.cameraYaw = f11 + 360.0f;
            }
        }
        this.cameraPitch = Nc.b.E(this.f71464e0, this.cameraPitch, this.f71465f0);
        if (this.f71458Y) {
            boolean g10 = this.f70922x.g();
            this.f71460a0.f97746a.f73132Z = w0() && !g10;
            this.f71460a0.f97746a.setRenderDistance(EditorSettings.a().renderDistanceV2);
            this.f71460a0.f97746a.setMinimalDistance(EditorSettings.a().minimalRenderDistanceV2);
            this.f71460a0.f97747b.C1(w0());
            this.f71460a0.f97746a.setFov(EditorSettings.a().cameraFov);
            U1();
            if (this.f71460a0.f97742M != null) {
                boolean z10 = this.f71472m0 && EditorSettings.a().drawAxisCube && w0() && R1();
                n5.d dVar = this.f71460a0;
                dVar.f97742M.f73132Z = z10 && !g10;
                GameObject gameObject = dVar.f97743N.f79250n;
                if (gameObject != null) {
                    gameObject.C1(z10);
                }
            }
            if (w0()) {
                o4.f O10 = super.O();
                for (int i10 = 0; i10 < this.f71457X.size(); i10++) {
                    X1(this.f71457X.get(i10), O10);
                }
                if (this.f71470k0) {
                    v1(false);
                }
            }
        }
        if (v3.c.b() != null) {
            v3.c.b().c(this, engineUpdateData);
        }
        GameObject gameObject2 = this.f71460a0.f97745P;
        if (gameObject2 != null) {
            gameObject2.C1(this.enableGrid);
        }
        EditorCamera editorCamera = this.f71460a0.f97746a;
        if (editorCamera != null) {
            editorCamera.f71528S8 = this.renderNavMesh;
            boolean z11 = this.enableLight;
            editorCamera.f71529T8 = !z11;
            editorCamera.f71530U8 = !z11;
            editorCamera.f71531V8 = true;
            editorCamera.f71532W8 = this.f71466g0;
        }
    }

    public void z1() {
        EditorCamera editorCamera;
        n5.d dVar = this.f71460a0;
        if (dVar == null || (editorCamera = dVar.f97746a) == null) {
            return;
        }
        editorCamera.clearBuffers();
    }

    public Panel3DView() {
        super(null, Lang.l(Lang.T.D3_EDITOR));
        this.f71457X = Collections.synchronizedList(new SteppedArrayList());
        this.f71458Y = false;
        this.f71459Z = null;
        this.f71460a0 = new n5.d();
        this.f71461b0 = 0.0f;
        this.f71463d0 = new a();
        this.selectedPosition = new Vector3();
        this.cameraZoom = 7.0f;
        this.cameraYaw = 0.0f;
        this.f71464e0 = -90.0f;
        this.f71465f0 = 90.0f;
        this.cameraPitch = 0.0f;
        this.gridMove = false;
        this.gridScale = 0.25f;
        this.useBoundingCenter = true;
        this.useGlobalOrientation = false;
        this.renderNavMesh = true;
        this.enableGrid = false;
        this.enableLight = true;
        this.enable3DCursor = true;
        this.snapToSurfaceConfigs = new SnapToSurfaceConfigs();
        this.snapToScaleConfigs = new C13008a();
        this.f71466g0 = false;
        this.f71467h0 = j.SnapToSurface;
        this.f71468i0 = null;
        this.f71469j0 = i.Local;
        this.f71470k0 = false;
        this.f71471l0 = h.BottomRight;
        this.f71472m0 = true;
        this.f71473n0 = null;
        this.f71474o0 = 0.0f;
        this.f71475p0 = 0.0f;
        this.f71476q0 = 0.0f;
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_positionAxis)).j(new b()).g(this));
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_rotationAxis)).j(new c()).g(this));
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_scaleAxis)).j(new d()).g(this));
        this.f71478s0 = new Matrix4f();
        this.f71479t0 = new Vector3();
        this.f71480u0 = new Vector3f();
        this.f71481v0 = new Vector3f();
        super.a1(false);
    }

    public Panel3DView(String serializedComponentType) {
        super(null, Lang.l(Lang.T.D3_EDITOR), serializedComponentType);
        this.f71457X = Collections.synchronizedList(new SteppedArrayList());
        this.f71458Y = false;
        this.f71459Z = null;
        this.f71460a0 = new n5.d();
        this.f71461b0 = 0.0f;
        this.f71463d0 = new a();
        this.selectedPosition = new Vector3();
        this.cameraZoom = 7.0f;
        this.cameraYaw = 0.0f;
        this.f71464e0 = -90.0f;
        this.f71465f0 = 90.0f;
        this.cameraPitch = 0.0f;
        this.gridMove = false;
        this.gridScale = 0.25f;
        this.useBoundingCenter = true;
        this.useGlobalOrientation = false;
        this.renderNavMesh = true;
        this.enableGrid = false;
        this.enableLight = true;
        this.enable3DCursor = true;
        this.snapToSurfaceConfigs = new SnapToSurfaceConfigs();
        this.snapToScaleConfigs = new C13008a();
        this.f71466g0 = false;
        this.f71467h0 = j.SnapToSurface;
        this.f71468i0 = null;
        this.f71469j0 = i.Local;
        this.f71470k0 = false;
        this.f71471l0 = h.BottomRight;
        this.f71472m0 = true;
        this.f71473n0 = null;
        this.f71474o0 = 0.0f;
        this.f71475p0 = 0.0f;
        this.f71476q0 = 0.0f;
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_positionAxis)).j(new b()).g(this));
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_rotationAxis)).j(new c()).g(this));
        d(new C3580b(C3580b.a(EditorSettings.a().shortcut_scaleAxis)).j(new d()).g(this));
        this.f71478s0 = new Matrix4f();
        this.f71479t0 = new Vector3();
        this.f71480u0 = new Vector3f();
        this.f71481v0 = new Vector3f();
        super.a1(false);
    }
}
