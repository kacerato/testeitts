package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components;

import JAVARuntime.GUIUtils;
import JAVARuntime.GizmoObject;
import R8.f;
import aa.C3593a;
import aa.C3595c;
import aa.d;
import aa.e;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Terrain;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain.Utils.TerrainRaycaster;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Wind.WindEffect;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import gb.C13317e;
import java.util.List;
import rc.C15169a;
import tc.h;
import ub.p;
import v3.c;
import yb.C16165b;

public class Cursor3D extends Component {

    public static final Vector3 f71511K = new Vector3();

    public GizmoObject f71512E;

    public float f71513F;

    public EditorCamera f71514G;

    public Panel3DView f71515H;

    public boolean f71516I;

    public final Vector2 f71517J;

    public class a implements Runnable {

        public final List f71518b;

        public final d f71519c;

        public final Vector3 f71520d;

        public final Vector3 f71521e;

        public class RunnableC1131a implements Runnable {

            public final Vector3 f71523b;

            public RunnableC1131a(final Vector3 val$finalClosestHit) {
                this.f71523b = val$finalClosestHit;
            }

            @Override
            public void run() {
                Vector3 vector3 = this.f71523b;
                if (vector3 != null) {
                    Cursor3D.f71511K.set(vector3);
                } else {
                    Cursor3D.f71511K.set(a.this.f71521e);
                }
            }
        }

        public a(final List val$terrains, final d val$ray, final Vector3 val$cursorGlobalPosition, final Vector3 val$fallbackPosition) {
            this.f71518b = val$terrains;
            this.f71519c = val$ray;
            this.f71520d = val$cursorGlobalPosition;
            this.f71521e = val$fallbackPosition;
        }

        @Override
        public void run() {
            SteppedArrayList<Vector3> steppedArrayList = new SteppedArrayList();
            try {
                for (Component component : this.f71518b) {
                    if (component.isHierarchyActive()) {
                        Vector3 vector3 = new Vector3();
                        d dVar = this.f71519c;
                        if (TerrainRaycaster.c(dVar.f31957b, dVar.f31958c, (Terrain) component, vector3)) {
                            steppedArrayList.add(vector3);
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            e eVar = new e();
            eVar.o(false);
            eVar.n(false);
            C3593a z10 = eVar.z(new C3595c(this.f71519c), true);
            if (z10 != null) {
                steppedArrayList.add(z10.i());
            }
            float f10 = 1.0E9f;
            Vector3 vector32 = null;
            for (Vector3 vector33 : steppedArrayList) {
                float sqrtDistance = this.f71520d.sqrtDistance(vector33);
                if (vector32 == null || sqrtDistance <= f10) {
                    vector32 = vector33;
                    f10 = sqrtDistance;
                }
            }
            K8.a.I(new RunnableC1131a(vector32));
        }
    }

    public Cursor3D(EditorCamera camera, Panel3DView panel3DView) {
        super("3DCursor");
        this.f71516I = true;
        this.f71517J = new Vector2();
        this.f71514G = camera;
        this.f71515H = panel3DView;
    }

    private void doRaycast(h touch) {
        if (touch.k() || touch.q() || touch.t()) {
            this.f71515H.a0(touch, this.f71517J);
            SteppedArrayList steppedArrayList = new SteppedArrayList(f.h(Terrain.class));
            d screenPointToWorldRay = this.f71514G.screenPointToWorldRay(this.f71517J);
            if (screenPointToWorldRay.e().lengthF() <= 0.1f) {
                return;
            }
            Thread thread = new Thread(new a(steppedArrayList, screenPointToWorldRay, this.f79250n.transform.u0(new Vector3()), screenPointToWorldRay.f31957b.add(screenPointToWorldRay.f31958c.mul(this.f71513F))));
            thread.setPriority(1);
            thread.start();
        }
    }

    private h pressed() {
        h y10;
        if ((c.b() == null || !c.b().d()) && (y10 = this.f71515H.y(GUIUtils.TouchFilter.Up, true)) != null) {
            h n10 = C15169a.n(1);
            if (y10.t() && !y10.n() && !y10.f117309e && !n10.q()) {
                return y10;
            }
        }
        return null;
    }

    private void setupMR() {
        this.f71512E = new GizmoObject();
        this.f71512E.setVertex(Vertex.B1(WindEffect.f77883R, null).x2());
        this.f71512E.setEnableTransparency(true);
        this.f71512E.setDrawInFront(true);
        this.f71512E.setDualFaceRender(true);
        this.f71512E.setTexture(C16165b.u("@@ASSET@@/Engine/Interface/Textures/3dcursor_v3.png").p0());
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        try {
            EditorCamera editorCamera = this.f71514G;
            if (editorCamera != null) {
                if (C13317e.J(editorCamera.f79250n) && C13317e.J(gameObject)) {
                    float B12 = gameObject.transform.B1(this.f71514G.f79250n.transform);
                    this.f71513F = B12;
                    try {
                        gameObject.transform.setScale(B12 * 0.06f * 1.5f);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                        gameObject.transform.setScale(1.0f);
                    }
                }
                h pressed = pressed();
                if (pressed != null) {
                    try {
                        doRaycast(pressed);
                    } catch (Error | Exception e11) {
                        e11.printStackTrace();
                    }
                }
                if (this.f71512E == null) {
                    setupMR();
                }
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
                Quaternion quaternion = (Quaternion) JP.acquire(Quaternion.class);
                gameObject.transform.u0(vector32);
                vector32.subLocal(this.f71514G.f79250n.J0().u0(vector33));
                vector32.normalizeLocal();
                quaternion.U(vector32);
                try {
                    gameObject.transform.x3(quaternion);
                } catch (Exception e12) {
                    e12.printStackTrace();
                }
                try {
                    gameObject.transform.p3(f71511K);
                } catch (IllegalArgumentException e13) {
                    e13.printStackTrace();
                    f71511K.set(0.0f);
                }
                gameObject.transform.u0(vector3);
                this.f71512E.setPosition(vector3.toJAVARuntime());
                gameObject.transform.C0(quaternion);
                this.f71512E.setRotation(quaternion.N0());
                gameObject.transform.r1(vector3);
                this.f71512E.setScale(vector3.toJAVARuntime());
                JP.release(vector3);
                JP.release(vector32);
                JP.release(vector33);
                JP.release(quaternion);
                if (this.f71516I && this.f71512E.getTexture() != null && p.L(this.f71512E.getTexture().instance)) {
                    Ub.a.a(this.f71512E);
                }
            }
        } catch (Exception e14) {
            e14.printStackTrace();
        }
    }

    public Cursor3D(String serializedComponentType) {
        super(serializedComponentType);
        this.f71516I = true;
        this.f71517J = new Vector2();
    }
}
