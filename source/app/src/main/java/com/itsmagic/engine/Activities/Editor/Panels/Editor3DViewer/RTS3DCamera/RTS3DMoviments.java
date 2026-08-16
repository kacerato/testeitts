package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera;

import JAVARuntime.GUIUtils;
import K8.c;
import K8.d;
import Nc.b;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import m5.C14183a;
import rc.C15169a;
import tc.h;

public class RTS3DMoviments extends Component {

    public a f71635E;

    public float f71636F;

    public float f71637G;

    public GameObject f71638H;

    public RTS3DTwoFingerSlide f71639I;

    public C14183a f71640J;

    public Panel3DView f71641K;

    public RTS3DZoom f71642L;

    public h f71643M;

    public boolean f71644N;

    public enum a {
        SingleFinger,
        TwoFinger
    }

    public RTS3DMoviments(RTS3DTwoFingerSlide RTS3DTwoFingerSlide, Panel3DView editor3DViewer, RTS3DZoom RTS3DZoom) {
        super(null);
        this.f71635E = a.TwoFinger;
        this.f71636F = 0.0f;
        this.f71637G = 0.0f;
        this.f71640J = new C14183a();
        this.f71639I = RTS3DTwoFingerSlide;
        this.f71641K = editor3DViewer;
        this.f71642L = RTS3DZoom;
    }

    private float calculateHSens() {
        return EditorSettings.a().moveSens * (c.b() / c.a());
    }

    private float calculateMouseHSens() {
        return EditorSettings.a().mouseMoveSens * (c.b() / c.a());
    }

    private float calculateMouseVSens() {
        return EditorSettings.a().mouseMoveSens;
    }

    private float calculateVSens() {
        return EditorSettings.a().moveSens;
    }

    private void lerpPosition() {
        try {
            float C12 = this.f79250n.J0().C1(this.f71641K.selectedPosition);
            if (C12 <= 1000.0f) {
                this.f79250n.J0().d2(this.f71641K.selectedPosition, b.E(0.5f, C12, 1000.0f) * 24.0f * d.e());
            } else {
                this.f79250n.J0().p3(this.f71641K.selectedPosition);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void zeroSpeed() {
        this.f71636F = 0.0f;
        this.f71637G = 0.0f;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        float f10;
        float f11;
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        try {
            start();
            Vector3 vector3 = null;
            float f12 = 0.0f;
            if (this.f71641K.f71460a0.f97746a.getProjection() == Camera.G.Perspective) {
                boolean z10 = false;
                if (this.f71641K.f71462c0 == null) {
                    if (v3.c.b() != null) {
                        if (!v3.c.b().d()) {
                        }
                    }
                    this.f71639I.check();
                    C15169a.g gVar = C15169a.f108812u;
                    if (gVar.q() && gVar.K()) {
                        float f13 = (gVar.f() / c.b()) * this.f71641K.cameraZoom * calculateMouseHSens() * 3.0f;
                        float g10 = (gVar.g() / c.a()) * this.f71641K.cameraZoom * calculateMouseVSens() * 3.0f;
                        this.f71636F = f13;
                        this.f71637G = g10;
                        z10 = true;
                    }
                    if (!z10 && this.f71639I.f71653E && gVar.k()) {
                        float x10 = (this.f71639I.f71654F.getX() / c.b()) * this.f71641K.cameraZoom * calculateHSens();
                        float y10 = (this.f71639I.f71654F.getY() / c.a()) * this.f71641K.cameraZoom * calculateVSens();
                        this.f71636F = x10;
                        this.f71637G = y10;
                        z10 = true;
                    }
                }
                if (!z10) {
                    zeroSpeed();
                }
            } else if (this.f71641K.f71462c0 != null || (v3.c.b() != null && v3.c.b().d())) {
                zeroSpeed();
            } else {
                a aVar = this.f71635E;
                if (aVar == a.SingleFinger) {
                    if (this.f71643M == null) {
                        Panel3DView panel3DView = this.f71641K;
                        if (panel3DView.f71462c0 == null) {
                            h v10 = panel3DView.v(GUIUtils.TouchFilter.Down);
                            this.f71643M = v10;
                            if (v10 != null && this.f71641K.f70922x.c(v10)) {
                                this.f71643M = null;
                            }
                        }
                    }
                    if (this.f71641K.f71462c0 != null) {
                        this.f71643M = null;
                    }
                    h hVar = this.f71643M;
                    if (hVar != null) {
                        if (hVar.f117309e) {
                            f10 = (hVar.i().f79838x / c.b()) * this.f71641K.cameraZoom * calculateHSens();
                            f11 = (this.f71643M.i().f79839y / c.a()) * this.f71641K.cameraZoom * calculateVSens();
                        } else {
                            f10 = 0.0f;
                            f11 = 0.0f;
                        }
                        this.f71636F = f10;
                        this.f71637G = f11;
                        if (this.f71643M.t() || !this.f71643M.q()) {
                            this.f71643M = null;
                        }
                    } else {
                        zeroSpeed();
                    }
                } else if (aVar == a.TwoFinger) {
                    this.f71639I.check();
                    RTS3DTwoFingerSlide rTS3DTwoFingerSlide = this.f71639I;
                    if (rTS3DTwoFingerSlide.f71653E) {
                        float x11 = (rTS3DTwoFingerSlide.f71654F.getX() / c.b()) * this.f71641K.cameraZoom * calculateHSens() * 2.0f;
                        float y11 = (this.f71639I.f71654F.getY() / c.a()) * this.f71641K.cameraZoom * calculateVSens() * 2.0f;
                        this.f71636F = x11;
                        this.f71637G = y11;
                    } else {
                        zeroSpeed();
                    }
                }
            }
            Vector3 vector32 = (Vector3) JP.acquire(Vector3.class);
            try {
                this.f71638H.J0().r4(vector32);
                vector32.mulLocal(this.f71637G * 0.1f);
                vector32.setX(this.f71640J.f96689a ? 0.0f : vector32.getX());
                vector32.setY(this.f71640J.f96690b ? 0.0f : vector32.getY());
                if (!this.f71640J.f96689a) {
                    f12 = vector32.getZ();
                }
                vector32.setZ(f12);
                this.f71641K.selectedPosition.addLocal(vector32);
                if (!this.f71640J.f96689a) {
                    Vector3 vector33 = (Vector3) JP.acquire(Vector3.class);
                    try {
                        gameObject.J0().S2(vector33);
                        vector33.mulLocal(this.f71636F * 0.1f);
                        this.f71641K.selectedPosition.addLocal(vector33);
                        vector3 = vector33;
                    } catch (Throwable th2) {
                        th = th2;
                        vector3 = vector33;
                        JP.release(vector3);
                        JP.release(vector32);
                        throw th;
                    }
                }
                JP.release(vector3);
                JP.release(vector32);
                lerpPosition();
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void start() {
        if (this.f71644N) {
            return;
        }
        this.f71644N = true;
        this.f71638H = this.f79250n.Z("Main Camera");
    }

    public RTS3DMoviments(RTS3DTwoFingerSlide RTS3DTwoFingerSlide, Panel3DView editor3DViewer, RTS3DZoom RTS3DZoom, a orthographicMode) {
        super(null);
        this.f71635E = a.TwoFinger;
        this.f71636F = 0.0f;
        this.f71637G = 0.0f;
        this.f71640J = new C14183a();
        this.f71639I = RTS3DTwoFingerSlide;
        this.f71641K = editor3DViewer;
        this.f71642L = RTS3DZoom;
        this.f71635E = orthographicMode;
    }
}
