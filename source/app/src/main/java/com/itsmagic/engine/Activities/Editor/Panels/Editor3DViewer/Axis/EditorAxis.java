package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Axis;

import JAVARuntime.GUIUtils;
import JAVARuntime.Vertex;
import R4.b;
import U4.a;
import aa.C3595c;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Components.EditorCamera;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.ModelRenderer.ModelRenderer;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import gb.C13317e;
import tc.h;
import v3.c;

public class EditorAxis extends Component implements O4.a {

    public static GameObject f71409L;

    public EditorCamera f71410E;

    public Panel3DView f71411F;

    public ModelRenderer f71412G;

    public h f71413H;

    public final Vector2 f71414I;

    public U4.a f71415J;

    public b f71416K;

    public static class a {

        public static final int[] f71417a;

        static {
            int[] iArr = new int[a.EnumC0712a.values().length];
            f71417a = iArr;
            try {
                iArr[a.EnumC0712a.HIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71417a[a.EnumC0712a.SHOW.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public EditorAxis(EditorCamera editorCamera, Panel3DView editor3DViewer, ModelRenderer modelRenderer, U4.a axisHandler, b enableFilter) {
        super("PositionAxis");
        this.f71414I = new Vector2();
        this.f71410E = editorCamera;
        this.f71411F = editor3DViewer;
        this.f71412G = modelRenderer;
        this.f71415J = axisHandler;
        this.f71416K = enableFilter;
    }

    private boolean calculateDotPass(GameObject axisObject) {
        try {
            int i10 = a.f71417a[this.f71415J.v(this.f71410E, axisObject).ordinal()];
            boolean z10 = true;
            if (i10 == 1) {
                return false;
            }
            if (i10 != 2) {
                Vector3 vector3 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
                Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
                Vector3 u02 = this.f71410E.f79250n.J0().u0(vector3);
                Vector3 n10 = this.f71415J.n(axisObject);
                if (n10 != null) {
                    Vector3 sub = u02.sub(axisObject.J0().u0(vector32), vector33);
                    sub.normalizeLocal();
                    if (Nc.b.k(sub.dot(n10)) > 0.8f) {
                        z10 = false;
                    }
                }
                JP.release(vector3);
                JP.release(vector32);
                JP.release(vector33);
            }
            return z10;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private boolean doRaycast(h touch) {
        try {
            this.f71411F.a0(touch, this.f71414I);
            return this.f71412G.getVertex().J2(this.f71412G.f79250n.transform.x1(), new C3595c(this.f71410E.screenPointToWorldRay(this.f71414I)), Vertex.RayMode.FirstHit, true, true) != null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private void updateActiveState() {
        O4.a aVar = this.f71411F.f71462c0;
        if (aVar == null || aVar == this) {
            enableAxis();
        } else {
            disableAxis();
        }
    }

    public void disableAxis() {
        this.f79250n.C1(false);
    }

    @Override
    public void disabledPreUpdate(GameObject gameObject, boolean isEditor) {
        super.disabledPreUpdate(gameObject, isEditor);
        GameObject gameObject2 = W7.b.f27309i.f31909a.f31910a;
        if (C13317e.J(f71409L)) {
            gameObject2 = f71409L;
        }
        GameObject gameObject3 = gameObject2;
        if (!this.f71416K.c(gameObject3, this.f71411F)) {
            disableAxis();
            return;
        }
        U4.a aVar = this.f71415J;
        EditorCamera editorCamera = this.f71410E;
        aVar.D(gameObject, editorCamera.f79250n, editorCamera, gameObject3, this.f71411F);
        if (calculateDotPass(gameObject)) {
            updateActiveState();
        } else {
            disableAxis();
        }
    }

    public void enableAxis() {
        this.f79250n.C1(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0104  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        boolean z10;
        U4.a aVar;
        super.preUpdate(gameObject, isEditor);
        this.f71415J.f25759a = this.f71411F;
        h hVar = this.f71413H;
        if (hVar != null && hVar.t()) {
            this.f71413H = null;
            Panel3DView panel3DView = this.f71411F;
            if (panel3DView.f71462c0 == this) {
                panel3DView.f71462c0 = null;
            }
        }
        GameObject gameObject2 = W7.b.f27309i.f31909a.f31910a;
        if (C13317e.J(f71409L)) {
            gameObject2 = f71409L;
        }
        boolean z11 = false;
        if (this.f71416K.c(gameObject2, this.f71411F)) {
            U4.a aVar2 = this.f71415J;
            EditorCamera editorCamera = this.f71410E;
            aVar2.D(gameObject, editorCamera.f79250n, editorCamera, gameObject2, this.f71411F);
            if (calculateDotPass(gameObject) || this.f71413H != null) {
                O4.a aVar3 = this.f71411F.f71462c0;
                if ((aVar3 == null || aVar3 == this) && (c.b() == null || !c.b().d())) {
                    if (this.f71413H == null) {
                        h y10 = this.f71411F.y(GUIUtils.TouchFilter.Down, true);
                        this.f71413H = y10;
                        if (y10 == null) {
                            Panel3DView panel3DView2 = this.f71411F;
                            if (panel3DView2.f71462c0 == this) {
                                panel3DView2.f71462c0 = null;
                            }
                        } else if (doRaycast(y10)) {
                            this.f71411F.f71462c0 = this;
                            U4.a aVar4 = this.f71415J;
                            EditorCamera editorCamera2 = this.f71410E;
                            aVar4.u(editorCamera2, gameObject2, editorCamera2.f79250n, gameObject.transform, this.f71413H.i(), this.f71413H, this.f71411F);
                        } else {
                            this.f71413H = null;
                            Panel3DView panel3DView3 = this.f71411F;
                            if (panel3DView3.f71462c0 == this) {
                                panel3DView3.f71462c0 = null;
                            }
                        }
                    }
                    h hVar2 = this.f71413H;
                    if (hVar2 != null) {
                        this.f71411F.f71462c0 = this;
                        if (hVar2.q() && (aVar = this.f71415J) != null) {
                            h hVar3 = this.f71413H;
                            if (hVar3.f117309e) {
                                EditorCamera editorCamera3 = this.f71410E;
                                aVar.t(editorCamera3, gameObject2, editorCamera3.f79250n, gameObject.transform, hVar3.i(), this.f71413H, this.f71411F);
                                z11 = true;
                            }
                        }
                        if (this.f71413H.t()) {
                            this.f71413H = null;
                            this.f71411F.f71462c0 = null;
                        }
                        z10 = z11;
                        z11 = true;
                        if (z11) {
                            updateActiveState();
                        } else {
                            enableAxis();
                        }
                        z11 = z10;
                    }
                } else {
                    this.f71413H = null;
                    Panel3DView panel3DView4 = this.f71411F;
                    if (panel3DView4.f71462c0 == this) {
                        panel3DView4.f71462c0 = null;
                    }
                }
                z10 = false;
                if (z11) {
                }
                z11 = z10;
            } else {
                disableAxis();
            }
        } else {
            this.f71413H = null;
            Panel3DView panel3DView5 = this.f71411F;
            if (panel3DView5.f71462c0 == this) {
                panel3DView5.f71462c0 = null;
            }
            disableAxis();
        }
        if (z11) {
            return;
        }
        this.f71415J.K(gameObject, this.f71410E.f79250n, gameObject.transform);
    }
}
