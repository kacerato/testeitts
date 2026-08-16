package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera;

import K8.c;
import Nc.b;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import rc.C15169a;

public class RTS3DHorizontalSlide extends Component {

    public float f71624E;

    public boolean f71625F;

    public RTS3DTwoFingerSlide f71626G;

    public Panel3DView f71627H;

    public RTS3DSlideController f71628I;

    public final Vector3 f71629J;

    public final Vector2 f71630K;

    public final Vector2 f71631L;

    public final Vector2 f71632M;

    public boolean f71633N;

    public boolean f71634O;

    public RTS3DHorizontalSlide(RTS3DTwoFingerSlide RTS3DTwoFingerSlide, RTS3DSlideController rts3DSlideController, Panel3DView editor3DViewer) {
        super(null);
        this.f71624E = 0.0f;
        this.f71625F = true;
        this.f71629J = new Vector3();
        this.f71630K = new Vector2();
        this.f71631L = new Vector2();
        this.f71632M = new Vector2();
        this.f71633N = false;
        this.f71634O = false;
        this.f71626G = RTS3DTwoFingerSlide;
        this.f71628I = rts3DSlideController;
        this.f71627H = editor3DViewer;
    }

    private float calculateMouseSens() {
        return EditorSettings.a().horizontalMouseSens * (c.b() / c.a()) * 10.0f;
    }

    private float calculateSens() {
        return EditorSettings.a().horizontalSlideSens * (c.b() / c.a()) * 10.0f;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        try {
            if (this.f71627H.f71460a0.f97746a.getProjection() == Camera.G.Perspective) {
                if (this.f71625F) {
                    this.f71626G.check();
                    if (this.f71626G.f71653E) {
                        this.f71633N = false;
                    }
                }
                C15169a.g gVar = C15169a.f108812u;
                if (gVar.q() && gVar.x() && this.f71627H.o0()) {
                    this.f71634O = true;
                }
                if (this.f71634O) {
                    if (gVar.A() && gVar.k()) {
                        this.f71627H.cameraYaw -= ((gVar.f() / c.b()) * calculateMouseSens()) * 3.0f;
                    } else {
                        this.f71634O = false;
                    }
                } else if (this.f71628I.getSelectedTouch() == null || !gVar.k()) {
                    this.f71633N = false;
                } else {
                    this.f71628I.getSelectedTouch().h(this.f71631L);
                    if (this.f71633N) {
                        this.f71631L.r0(this.f71630K, this.f71632M);
                        this.f71630K.x0(this.f71631L);
                        if (this.f71632M.sqrtLength() > 0.0f) {
                            this.f71627H.cameraYaw += (this.f71632M.f79838x / c.b()) * (-calculateSens());
                        }
                    } else {
                        this.f71630K.x0(this.f71631L);
                        this.f71633N = true;
                    }
                }
            }
            this.f71629J.set(b.m1(this.f71627H.cameraYaw), 0.0f, b.d0(this.f71627H.cameraYaw));
            gameObject.J0().g2(this.f71629J);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
