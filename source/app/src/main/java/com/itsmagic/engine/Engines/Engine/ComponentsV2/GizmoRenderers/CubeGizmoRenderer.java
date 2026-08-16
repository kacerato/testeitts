package com.itsmagic.engine.Engines.Engine.ComponentsV2.GizmoRenderers;

import C5.b;
import D5.h;
import JAVARuntime.GizmoElement;
import JAVARuntime.GizmoObject;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.f;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import fb.AbstractC13203c;
import fb.C13201a;
import ib.InterfaceC13601h;
import java.io.Serializable;
import java.util.LinkedList;
import java.util.List;
import t6.e;
import t6.j;

public class CubeGizmoRenderer extends Component implements Serializable {

    public static final String f73303H = "CubeGizmoRenderer";

    public static final Class f73304I = CubeGizmoRenderer.class;

    public final float[] f73305E;

    public transient GizmoObject f73306F;

    public final InterfaceC13601h f73307G;

    @Expose
    public ColorINT color;

    @Expose
    public boolean wireframe;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return CubeGizmoRenderer.f73304I;
        }

        @Override
        public String c() {
            return CubeGizmoRenderer.f73303H;
        }

        @Override
        public String e() {
            return "Gizmos";
        }

        @Override
        public String f() {
            return CubeGizmoRenderer.f73303H;
        }
    }

    public class b implements InterfaceC13601h {
        public b() {
        }

        @Override
        public void a(f globalMatrix) {
            if (globalMatrix != null) {
                CubeGizmoRenderer cubeGizmoRenderer = CubeGizmoRenderer.this;
                if (cubeGizmoRenderer.f79250n == null) {
                    return;
                }
                globalMatrix.o(cubeGizmoRenderer.f73305E);
            }
        }
    }

    public class c implements h {

        public class a implements Runnable {

            public final Variable f73310b;

            public a(final Variable val$variable) {
                this.f73310b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("CubeGizmoRenderer - set wireframe") : null;
                try {
                    CubeGizmoRenderer.this.wireframe = this.f73310b.booolean_value.booleanValue();
                    CubeGizmoRenderer.this.syncCubeGizmoStyle();
                } finally {
                    j.P1(S12);
                }
            }
        }

        public c() {
        }

        @Override
        public Variable get() {
            return new Variable("", CubeGizmoRenderer.this.wireframe + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                K8.a.I(new a(variable));
            }
        }
    }

    public class d implements h {

        public class a implements Runnable {

            public final Variable f73313b;

            public a(final Variable val$variable) {
                this.f73313b = val$variable;
            }

            @Override
            public void run() {
                e S12 = j.J1() ? j.S1("CubeGizmoRenderer - set color") : null;
                try {
                    CubeGizmoRenderer.this.color = new ColorINT(this.f73313b.color_value.intColor);
                    CubeGizmoRenderer.this.syncCubeGizmoStyle();
                } finally {
                    j.P1(S12);
                }
            }
        }

        public d() {
        }

        @Override
        public Variable get() {
            return new Variable("", CubeGizmoRenderer.this.color);
        }

        @Override
        public void set(Variable variable) {
            if (variable == null || variable.e() || variable.color_value == null) {
                return;
            }
            K8.a.I(new a(variable));
        }
    }

    static {
        C13201a.b(new a());
    }

    public CubeGizmoRenderer() {
        super(f73303H);
        this.wireframe = true;
        this.color = new ColorINT(255, 255, 255, 255);
        this.f73305E = new float[16];
        this.f73307G = new b();
    }

    private void bindTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.O2(this.f73307G);
        this.f79250n.transform.u(this.f73307G);
    }

    private void ensureCubeGizmo() {
        if (this.f73306F != null) {
            return;
        }
        GizmoObject gizmoObject = new GizmoObject((this.wireframe ? Vertex.E1(Vertex.v.CUBE, null) : Vertex.C1(Vertex.v.CUBE)).x2());
        this.f73306F = gizmoObject;
        ColorINT colorINT = this.color;
        if (colorINT == null) {
            colorINT = new ColorINT(255, 255, 255, 255);
        }
        gizmoObject.setColor(colorINT.e0());
        this.f73306F.setRenderMode(this.wireframe ? GizmoElement.RenderMode.WireFrame : GizmoElement.RenderMode.Triangles);
        this.f73306F.setEnableTransparency(true);
        this.f73306F.setWireFrameWidth(1);
    }

    public void syncCubeGizmoStyle() {
        GizmoObject gizmoObject = this.f73306F;
        if (gizmoObject == null) {
            return;
        }
        gizmoObject.setRenderMode(this.wireframe ? GizmoElement.RenderMode.WireFrame : GizmoElement.RenderMode.Triangles);
        this.f73306F.setVertex((this.wireframe ? Vertex.E1(Vertex.v.CUBE, null) : Vertex.C1(Vertex.v.CUBE)).x2());
        GizmoObject gizmoObject2 = this.f73306F;
        ColorINT colorINT = this.color;
        if (colorINT == null) {
            colorINT = new ColorINT(255, 255, 255, 255);
        }
        gizmoObject2.setColor(colorINT.e0());
    }

    private void syncRenderMatrix() {
        GameObject gameObject = this.f79250n;
        if (gameObject == null) {
            return;
        }
        gameObject.transform.r0(this.f73305E);
    }

    private void unbindTransformListener() {
        Transform transform;
        GameObject gameObject = this.f79250n;
        if (gameObject == null || (transform = gameObject.transform) == null) {
            return;
        }
        transform.O2(this.f73307G);
    }

    @Override
    public String getDisplayableTitle() {
        return f73303H;
    }

    @Override
    public int getInspectorColor(Context context) {
        return R.color.inspector_meshrenderer;
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        LinkedList linkedList = new LinkedList();
        if (context == null) {
            return linkedList;
        }
        linkedList.add(new C5.b(new c(), "Wireframe", b.a.SLBoolean));
        linkedList.add(new C5.b(new d(), SerializableShaderEntry.f81153g, b.a.Color, context));
        return linkedList;
    }

    @Override
    public String getTitle() {
        return f73303H;
    }

    @Override
    public void onAttach() {
        super.onAttach();
        bindTransformListener();
        syncRenderMatrix();
    }

    @Override
    public void onDetach() {
        unbindTransformListener();
        this.f73306F = null;
        super.onDetach();
    }

    @Override
    public void onHierarchyActiveChanged(boolean enabled) {
        super.onHierarchyActiveChanged(enabled);
        if (enabled) {
            syncRenderMatrix();
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        ensureCubeGizmo();
        syncCubeGizmoStyle();
        this.f73306F.setMatrix(this.f73305E);
        Ub.a.a(this.f73306F);
    }

    @Override
    public Component mo1248clone() {
        CubeGizmoRenderer cubeGizmoRenderer = new CubeGizmoRenderer();
        cubeGizmoRenderer.wireframe = this.wireframe;
        cubeGizmoRenderer.color = this.color != null ? new ColorINT(this.color.intColor) : new ColorINT(255, 255, 255, 255);
        return cubeGizmoRenderer;
    }
}
