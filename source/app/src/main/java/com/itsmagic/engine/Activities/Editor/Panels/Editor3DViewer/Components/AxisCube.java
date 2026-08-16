package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components;

import JAVARuntime.GUIUtils;
import JAVARuntime.GizmoObject;
import JAVARuntime.Vertex;
import K8.c;
import Nc.b;
import aa.C3593a;
import aa.C3595c;
import aa.d;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vertex.Vertex;
import o4.f;
import rc.C15169a;
import tc.h;
import ub.g;
import ub.p;
import yb.C16165b;

public class AxisCube extends Component {

    public static final float f71498M = -10000.0f;

    public static final int f71499N = 50;

    public static final String f71500O = "AxisCube";

    public AxisCubeCamera f71501E;

    public Panel3DView f71502F;

    public GizmoObject f71503G;

    public final Vector3 f71504H;

    public float f71505I;

    public float f71506J;

    public final d f71507K;

    public final C3595c f71508L;

    public static class a {

        public static final int[] f71509a;

        static {
            int[] iArr = new int[Panel3DView.h.values().length];
            f71509a = iArr;
            try {
                iArr[Panel3DView.h.TopRight.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71509a[Panel3DView.h.TopLeft.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71509a[Panel3DView.h.BottomRight.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public AxisCube(AxisCubeCamera axisCubeCamera, Panel3DView editor3DViewer) {
        super("AxisCube");
        this.f71504H = new Vector3();
        this.f71505I = 0.0f;
        this.f71506J = 0.0f;
        d dVar = new d();
        this.f71507K = dVar;
        this.f71508L = new C3595c(dVar);
        this.f71501E = axisCubeCamera;
        this.f71502F = editor3DViewer;
    }

    private void calculateCameraRect() {
        float l02 = b.l0(50.0f, this.f71502F.M());
        float c02 = l02 / this.f71502F.c0();
        float R10 = l02 / this.f71502F.R();
        int i10 = a.f71509a[this.f71502F.G1().ordinal()];
        if (i10 == 1) {
            this.f71501E.setRectWidth(c02);
            this.f71501E.setRectHeight(R10);
            this.f71501E.setRectPosX(1.0f - c02);
        } else if (i10 == 2) {
            this.f71501E.setRectWidth(c02);
            this.f71501E.setRectHeight(R10);
            this.f71501E.setRectPosX(0.0f);
        } else if (i10 == 3) {
            this.f71501E.setRectWidth(c02);
            this.f71501E.setRectHeight(R10);
            this.f71501E.setRectPosX(1.0f - c02);
            this.f71501E.setRectPosY(1.0f - R10);
        }
        this.f71505I = c02;
        this.f71506J = R10;
    }

    private void createGizmo() {
        D8.b bVar = W7.b.f27306f.f2458a.f4942e;
        if (this.f71503G == null) {
            this.f71503G = new GizmoObject(bVar.c().x2());
            TextureConfig textureConfig = new TextureConfig();
            textureConfig.j0(TextureConfig.c.Nearest);
            g v10 = C16165b.v(bVar.f4960d, textureConfig);
            if (v10 != null) {
                this.f71503G.setTexture(v10.p0());
            }
        }
    }

    private h getTouch() {
        h v10 = this.f71502F.v(GUIUtils.TouchFilter.Up);
        if (v10 == null || v10.f117309e || !isTouchInsideAxisCubeRect(v10) || this.f71502F.f70922x.c(v10) || v10.f117309e || !C15169a.f108802k.get(1).r()) {
            return null;
        }
        return v10;
    }

    private boolean isTouchInsideAxisCubeRect(h touch) {
        int i10;
        float f10;
        int i11;
        Vector2 g10;
        float f11;
        float f12;
        f O10 = this.f71502F.O();
        int e10 = (int) (O10.e() * c.b());
        int f13 = (int) (O10.f() * c.a());
        int d10 = (int) (O10.d() * c.b());
        int c10 = (int) (O10.c() * c.a());
        int i12 = a.f71509a[this.f71502F.G1().ordinal()];
        if (i12 == 1) {
            int i13 = e10 + d10;
            float f14 = this.f71505I;
            float f15 = d10;
            e10 = i13 - ((int) (f14 * f15));
            i10 = (int) (f14 * f15);
            f10 = this.f71506J;
        } else {
            if (i12 != 2) {
                if (i12 != 3) {
                    i11 = 0;
                    e10 = 0;
                    f13 = 0;
                    i10 = 0;
                } else {
                    int i14 = e10 + d10;
                    float f16 = this.f71505I;
                    float f17 = d10;
                    e10 = i14 - ((int) (f16 * f17));
                    int i15 = f13 + c10;
                    float f18 = this.f71506J;
                    float f19 = c10;
                    f13 = i15 - ((int) (f18 * f19));
                    i10 = (int) (f16 * f17);
                    i11 = (int) (f18 * f19);
                }
                g10 = touch.g();
                f11 = g10.f79838x;
                if (f11 >= e10 && f11 <= e10 + i10) {
                    f12 = g10.f79839y;
                    if (f12 < f13 && f12 <= f13 + i11) {
                        return true;
                    }
                }
                return false;
            }
            i10 = (int) (this.f71505I * d10);
            f10 = this.f71506J;
        }
        i11 = (int) (f10 * c10);
        g10 = touch.g();
        f11 = g10.f79838x;
        if (f11 >= e10) {
            f12 = g10.f79839y;
            if (f12 < f13) {
            }
        }
        return false;
    }

    private void setRotation(GameObject gameObject) {
        float d02 = b.d0(this.f71502F.cameraYaw);
        this.f71504H.set(b.m1(this.f71502F.cameraYaw), 0.0f, d02);
        gameObject.transform.g2(this.f71504H);
        float d03 = b.d0(-this.f71502F.cameraPitch);
        this.f71504H.set(0.0f, b.m1(-this.f71502F.cameraPitch), d03);
        gameObject.C(0).transform.g2(this.f71504H);
    }

    private void showGizmo(GameObject gameObject) {
        createGizmo();
        if (this.f71503G.getTexture() == null || !p.L(this.f71503G.getTexture().instance)) {
            return;
        }
        Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
        gameObject.transform.u0(vector3);
        this.f71503G.setPosition(vector3.toJAVARuntime());
        JP.release(vector3);
        Ub.a.a(this.f71503G);
    }

    private void userInput() {
        GizmoObject gizmoObject;
        Vertex vertex;
        GameObject gameObject;
        if (getTouch() == null || (gizmoObject = this.f71503G) == null || (vertex = gizmoObject.getVertex().vertex) == null || (gameObject = this.f71501E.f79250n) == null) {
            return;
        }
        gameObject.transform.u0(this.f71507K.f31957b);
        this.f71507K.f31957b.subLocal(-10000.0f);
        gameObject.transform.a0(this.f71507K.f31958c);
        C3593a A22 = vertex.A2(this.f71508L, Vertex.RayMode.ClosestPoint);
        if (A22 != null) {
            Vector3 f10 = A22.f();
            if (f10.getX() != 0.0f || f10.getZ() != 0.0f) {
                this.f71502F.cameraYaw = b.t(f10.getX(), f10.getZ()) + 180.0f;
            }
            if (f10.getY() != 0.0f) {
                this.f71502F.cameraPitch = b.t(f10.getY(), 0.0f);
            } else {
                this.f71502F.cameraPitch = 0.0f;
            }
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        this.f71501E.setEnabled(true);
        showGizmo(gameObject);
        setRotation(gameObject);
        calculateCameraRect();
    }
}
