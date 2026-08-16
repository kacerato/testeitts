package com.itsmagic.engine.Engines.Engine.ImGUI.Controller;

import C5.b;
import JAVARuntime.Component;
import JAVARuntime.Vertex;
import N7.c;
import V9.r;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.EmbeddedMatMR;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.ImGUI.BaseComponents.ImGuiComponent;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import eb.f;
import fb.AbstractC13203c;
import fb.C13201a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import rc.C15169a;
import s8.InterfaceC15237a;
import tc.h;

public class UI3DInputSystem extends ImGuiComponent {

    public static final String f78018H = "UI3DInputSystem";

    public static final Class f78019I = UI3DInputSystem.class;

    public final Map<Camera, Map<h, r>> f78020E;

    public final Mc.a<r> f78021F;

    public Component f78022G;

    @Expose
    @f
    private float maxHitDistance;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UI3DInputSystem.f78019I;
        }

        @Override
        public String c() {
            return UI3DInputSystem.f78018H;
        }

        @Override
        public String e() {
            return "UI/3D";
        }
    }

    public class b implements D5.h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UI3DInputSystem.this.maxHitDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UI3DInputSystem.this.maxHitDistance = variable.float_value;
            }
        }
    }

    static {
        C13201a.b(new a());
    }

    public UI3DInputSystem() {
        super(f78018H);
        this.f78020E = new HashMap();
        this.f78021F = new Mc.a<>();
        this.maxHitDistance = 15.0f;
    }

    private boolean filterEditor(h touch) {
        return ((touch.k() || touch.q() || touch.t()) && c.D().W(touch)) ? false : true;
    }

    private void touchForVertex(Map<h, r> touchesInCamera, Camera camera, Vertex vertex, float[] renderMatrix, UIController controller) {
        boolean z10;
        C3593a H22;
        for (int i10 = 0; i10 < C15169a.L(); i10++) {
            h n10 = C15169a.n(i10);
            r rVar = touchesInCamera.get(n10);
            if (!filterEditor(n10) || (!(n10.k() || n10.q() || n10.t()) || (H22 = vertex.H2(renderMatrix, new C3595c(camera.screenPointToWorldRay(n10.b()), this.maxHitDistance), Vertex.RayMode.ClosestPoint)) == null)) {
                z10 = false;
            } else {
                if (rVar == null) {
                    rVar = controller.emitTouch();
                    touchesInCamera.put(n10, rVar);
                } else {
                    controller.emitTouch(rVar);
                }
                rVar.D(H22.p().getX() * controller.getFrameBufferW(), H22.p().getY() * controller.getFrameBufferH());
                rVar.K(false);
                rVar.v(n10.k());
                rVar.F(n10.q());
                rVar.J(n10.t());
                z10 = true;
            }
            if (!z10 && rVar != null) {
                rVar.v(false);
                rVar.F(false);
                if (!rVar.u()) {
                    rVar.J(true);
                    rVar.K(true);
                }
                this.f78021F.add(rVar);
            }
        }
    }

    @Override
    public List<C5.b> getInspectorEntries(Context context) {
        List<C5.b> inspectorEntries = super.getInspectorEntries(context);
        if (inspectorEntries == null) {
            inspectorEntries = new SteppedArrayList<>();
        }
        if (context == null) {
            return inspectorEntries;
        }
        inspectorEntries.add(new C5.b(new b(), "Max hit distance", b.a.SLFloat).d(this.f79250n, this, "maxHitDistance", com.itsmagic.engine.Engines.Engine.Animation.c.FLOAT));
        return inspectorEntries;
    }

    @InterfaceC15237a
    public float getMaxHitDistance() {
        return this.maxHitDistance;
    }

    @Override
    public String getTitle() {
        return f78018H;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        UIController uIController;
        com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex;
        super.preUpdate(gameObject, isEditor);
        if (!c8.b.k() || (uIController = (UIController) gameObject.d0(UIController.class)) == null) {
            return;
        }
        for (int i10 = 0; i10 < this.f78021F.size(); i10++) {
            r rVar = this.f78021F.get(i10);
            rVar.J(false);
            uIController.releaseTouch(rVar);
        }
        this.f78021F.clear();
        List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(Camera.class);
        for (int i11 = 0; i11 < h10.size(); i11++) {
            try {
                Camera camera = (Camera) h10.get(i11);
                if (!(camera instanceof EditorCamera) && camera.isHierarchyActive() && camera.showInScreen) {
                    Map<h, r> map = this.f78020E.get(camera);
                    if (map == null) {
                        map = new HashMap<>();
                        this.f78020E.put(camera, map);
                    }
                    Map<h, r> map2 = map;
                    EmbeddedMatMR embeddedMatMR = (EmbeddedMatMR) gameObject.d0(EmbeddedMatMR.class);
                    if (embeddedMatMR != null) {
                        com.itsmagic.engine.Engines.Engine.Vertex.Vertex vertex2 = embeddedMatMR.getVertex();
                        if (vertex2 != null) {
                            touchForVertex(map2, camera, vertex2, embeddedMatMR.getRenderMatrix(), uIController);
                        }
                    } else {
                        ModelRenderer modelRenderer = (ModelRenderer) gameObject.d0(ModelRenderer.class);
                        if (modelRenderer != null && (vertex = modelRenderer.getVertex()) != null) {
                            touchForVertex(map2, camera, vertex, modelRenderer.getRenderMatrix(), uIController);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    @InterfaceC15237a
    public void setMaxHitDistance(float maxHitDistance) {
        this.maxHitDistance = maxHitDistance;
    }

    @Override
    public void setRuntime(Component run) {
        this.f78022G = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78022G;
        if (component != null) {
            return component;
        }
        JAVARuntime.UI3DInputSystem uI3DInputSystem = new JAVARuntime.UI3DInputSystem(this);
        this.f78022G = uI3DInputSystem;
        return uI3DInputSystem;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UI3DInputSystem uI3DInputSystem = new UI3DInputSystem();
        uI3DInputSystem.maxHitDistance = this.maxHitDistance;
        return uI3DInputSystem;
    }
}
