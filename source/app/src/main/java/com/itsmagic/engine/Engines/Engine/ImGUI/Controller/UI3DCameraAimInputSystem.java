package com.itsmagic.engine.Engines.Engine.ImGUI.Controller;

import C5.b;
import D5.h;
import J4.d;
import JAVARuntime.Component;
import JAVARuntime.Vertex;
import V9.r;
import aa.C3593a;
import aa.C3595c;
import android.content.Context;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
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

public class UI3DCameraAimInputSystem extends ImGuiComponent {

    public static final String f78008J = "UI3DCameraAimInputSystem";

    public static final Class f78009K = UI3DCameraAimInputSystem.class;

    public final Map<UIController, r> f78010E;

    public final Mc.a<r> f78011F;

    public final Mc.a<r> f78012G;

    public boolean f78013H;

    public Component f78014I;

    @Expose
    @f
    private float maxHitDistance;

    public class a extends AbstractC13203c {
        @Override
        public Class b() {
            return UI3DCameraAimInputSystem.f78009K;
        }

        @Override
        public String c() {
            return UI3DCameraAimInputSystem.f78008J;
        }

        @Override
        public String e() {
            return "UI/3D";
        }
    }

    public class b implements h {
        public b() {
        }

        @Override
        public Variable get() {
            return new Variable("", UI3DCameraAimInputSystem.this.maxHitDistance + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                UI3DCameraAimInputSystem.this.maxHitDistance = variable.float_value;
            }
        }
    }

    public class c implements D5.b {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                UI3DCameraAimInputSystem.this.setPerformClick(true);
            }
        }

        public c() {
        }

        @Override
        public void a(View view) {
            K8.a.I(new a());
        }
    }

    static {
        C13201a.b(new a());
    }

    public UI3DCameraAimInputSystem() {
        super(f78008J);
        this.f78010E = new HashMap();
        this.f78011F = new Mc.a<>();
        this.f78012G = new Mc.a<>();
        this.maxHitDistance = 15.0f;
        this.f78013H = false;
    }

    private boolean filterEditor(tc.h touch) {
        return ((touch.k() || touch.q() || touch.t()) && N7.c.D().W(touch)) ? false : true;
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
        inspectorEntries.add(new C5.b(new c(), "Perform click", b.a.Button));
        return inspectorEntries;
    }

    @Override
    public String getTitle() {
        return f78008J;
    }

    public boolean isPerformClick() {
        return this.f78013H;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        ModelRenderer modelRenderer;
        Vertex vertex;
        boolean z10;
        super.preUpdate(gameObject, isEditor);
        if (c8.b.k()) {
            List<com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component> h10 = R8.f.h(UIController.class);
            for (int i10 = 0; i10 < h10.size(); i10++) {
                try {
                    UIController uIController = (UIController) h10.get(i10);
                    for (int i11 = 0; i11 < this.f78011F.size(); i11++) {
                        uIController.releaseTouch(this.f78011F.get(i11));
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            for (int i12 = 0; i12 < this.f78011F.size(); i12++) {
                r rVar = this.f78011F.get(i12);
                rVar.J(false);
                this.f78012G.remove(rVar);
            }
            this.f78011F.clear();
            Camera camera = (Camera) gameObject.d0(Camera.class);
            if (camera == null) {
                d.E1();
                d.M1("UI3DCameraAimInputSystem needs to be attached to a camera object.");
            } else if (camera.isHierarchyActive()) {
                C3595c c3595c = new C3595c(new aa.d(camera.getRenderCameraPosition(), camera.getRenderCameraDirection()), this.maxHitDistance);
                for (int i13 = 0; i13 < h10.size(); i13++) {
                    UIController uIController2 = (UIController) h10.get(i13);
                    if (uIController2.isHierarchyActive() && (modelRenderer = (ModelRenderer) uIController2.f79250n.d0(ModelRenderer.class)) != null && (vertex = modelRenderer.getVertex()) != null) {
                        r rVar2 = this.f78010E.get(uIController2);
                        C3593a H22 = vertex.H2(modelRenderer.getRenderMatrix(), c3595c, Vertex.RayMode.ClosestPoint);
                        if (H22 != null) {
                            if (rVar2 == null) {
                                rVar2 = uIController2.emitTouch();
                                this.f78010E.put(uIController2, rVar2);
                            } else {
                                uIController2.emitTouch(rVar2);
                            }
                            rVar2.D(H22.p().getX() * uIController2.getFrameBufferW(), H22.p().getY() * uIController2.getFrameBufferH());
                            rVar2.K(false);
                            rVar2.v(false);
                            rVar2.F(true);
                            rVar2.J(false);
                            z10 = true;
                        } else {
                            z10 = false;
                        }
                        if (!z10 && rVar2 != null) {
                            rVar2.v(false);
                            rVar2.F(false);
                            if (!rVar2.u()) {
                                rVar2.J(true);
                                rVar2.K(true);
                            }
                            this.f78011F.add(rVar2);
                        }
                        if (rVar2 != null) {
                            this.f78012G.add(rVar2);
                        }
                    }
                }
            }
            for (int i14 = 0; i14 < this.f78012G.size(); i14++) {
                this.f78012G.get(i14).N(this.f78013H);
            }
            if (this.f78013H) {
                this.f78013H = false;
            }
        }
    }

    public void setPerformClick(boolean performClick) {
        this.f78013H = performClick;
    }

    @Override
    public void setRuntime(Component run) {
        this.f78014I = run;
    }

    @Override
    public Component toJAVARuntime() {
        Component component = this.f78014I;
        if (component != null) {
            return component;
        }
        JAVARuntime.UI3DCameraAimInputSystem uI3DCameraAimInputSystem = new JAVARuntime.UI3DCameraAimInputSystem(this);
        this.f78014I = uI3DCameraAimInputSystem;
        return uI3DCameraAimInputSystem;
    }

    @Override
    public com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component mo1248clone() {
        UI3DCameraAimInputSystem uI3DCameraAimInputSystem = new UI3DCameraAimInputSystem();
        uI3DCameraAimInputSystem.maxHitDistance = this.maxHitDistance;
        return uI3DCameraAimInputSystem;
    }
}
