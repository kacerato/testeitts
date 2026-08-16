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

public class RTS3DVerticalSlide extends Component {

    public RTS3DTwoFingerSlide f71658E;

    public boolean f71659F;

    public Panel3DView f71660G;

    public RTS3DSlideController f71661H;

    public final Vector3 f71662I;

    public final Vector2 f71663J;

    public final Vector2 f71664K;

    public final Vector2 f71665L;

    public boolean f71666M;

    public boolean f71667N;

    public RTS3DVerticalSlide(RTS3DTwoFingerSlide RTS3DTwoFingerSlide, RTS3DSlideController rts3DSlideController, Panel3DView editor3DViewer) {
        super(null);
        this.f71659F = true;
        this.f71662I = new Vector3();
        this.f71663J = new Vector2();
        this.f71664K = new Vector2();
        this.f71665L = new Vector2();
        this.f71666M = false;
        this.f71667N = false;
        this.f71658E = RTS3DTwoFingerSlide;
        this.f71661H = rts3DSlideController;
        this.f71660G = editor3DViewer;
    }

    private float calculateMouseSens() {
        return EditorSettings.a().verticalMouseSens * 10.0f;
    }

    private float calculateSens() {
        return EditorSettings.a().verticalSlideSens * 10.0f;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        try {
            if (this.f71660G.f71460a0.f97746a.getProjection() == Camera.G.Perspective) {
                if (this.f71659F) {
                    this.f71658E.check();
                    if (this.f71658E.f71653E) {
                        this.f71666M = false;
                    }
                }
                C15169a.g gVar = C15169a.f108812u;
                if (gVar.q() && gVar.x() && this.f71660G.o0()) {
                    this.f71667N = true;
                }
                if (this.f71667N) {
                    if (gVar.A() && gVar.k()) {
                        this.f71660G.cameraPitch -= ((gVar.g() / c.a()) * (-calculateMouseSens())) * 3.0f;
                    } else {
                        this.f71667N = false;
                    }
                } else if (this.f71661H.getSelectedTouch() == null || !gVar.k()) {
                    this.f71666M = false;
                } else {
                    this.f71661H.getSelectedTouch().h(this.f71664K);
                    if (this.f71666M) {
                        this.f71664K.r0(this.f71663J, this.f71665L);
                        this.f71663J.x0(this.f71664K);
                        if (this.f71665L.sqrtLength() > 0.0f) {
                            this.f71660G.cameraPitch += (this.f71665L.f79839y / c.a()) * calculateSens();
                        }
                    } else {
                        this.f71663J.x0(this.f71664K);
                        this.f71666M = true;
                    }
                }
            }
            Panel3DView panel3DView = this.f71660G;
            panel3DView.cameraPitch = b.E(panel3DView.f71464e0, panel3DView.cameraPitch, panel3DView.f71465f0);
            this.f71662I.set(0.0f, b.m1(-this.f71660G.cameraPitch), b.d0(-this.f71660G.cameraPitch));
            gameObject.J0().g2(this.f71662I);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
