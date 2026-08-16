package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera;

import Ic.A;
import Nc.b;
import com.itsmagic.engine.Activities.Editor.Extensions.Settings.Base.EditorSettings;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import m5.C14184b;
import rc.C15169a;

public class RTS3DZoom extends Component {

    public float f71668E;

    public float f71669F;

    public float f71670G;

    public float f71671H;

    public GameObject f71672I;

    public Camera f71673J;

    public C14184b f71674K;

    public RTS3DPinch f71675L;

    public Panel3DView f71676M;

    public boolean f71677N;

    public RTS3DZoom(RTS3DPinch RTS3DPinch, Panel3DView editor3DViewer) {
        super(null);
        this.f71668E = 0.0f;
        this.f71669F = 7.0f;
        this.f71670G = 0.5f;
        this.f71671H = 100000.0f;
        this.f71674K = new C14184b();
        this.f71677N = false;
        this.f71675L = RTS3DPinch;
        this.f71676M = editor3DViewer;
    }

    public float getAppliedZoom() {
        return this.f71669F;
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        try {
            start();
            this.f71675L.check();
            if (this.f71675L.f71645E) {
                Panel3DView panel3DView = this.f71676M;
                float f10 = panel3DView.cameraZoom;
                panel3DView.cameraZoom = f10 + (f10 * 2.0f * EditorSettings.a().zoomSens * (-this.f71675L.f71646F) * 0.03f);
            }
            C15169a.g gVar = C15169a.f108812u;
            if (gVar.q() && this.f71676M.o0() && gVar.h() != 0.0f) {
                Panel3DView panel3DView2 = this.f71676M;
                float f11 = panel3DView2.cameraZoom;
                panel3DView2.cameraZoom = f11 + (2.0f * f11 * EditorSettings.a().mouseZoomSens * (-gVar.h()) * 0.005f * 2.3f);
            }
            Panel3DView panel3DView3 = this.f71676M;
            panel3DView3.cameraZoom = b.E(this.f71670G, panel3DView3.cameraZoom, this.f71671H);
            float f12 = this.f71676M.cameraZoom + this.f71668E;
            this.f71669F = f12;
            this.f71669F = b.M(this.f71670G, A.b(f12));
            if (this.f71676M.f71460a0.f97746a.getProjection() == Camera.G.Perspective) {
                this.f71672I.J0().w3(-this.f71669F);
            } else {
                this.f71672I.J0().w3(0.0f);
            }
            if (this.f71676M.f71460a0.f97746a.getProjection() == Camera.G.Orthographic) {
                this.f71673J.setOrthoDiameter(this.f71669F);
            }
            this.f71668E = 0.0f;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void setAppliedZoom(float appliedZoom) {
        this.f71669F = appliedZoom;
    }

    public void start() {
        if (this.f71677N) {
            return;
        }
        this.f71677N = true;
        try {
            GameObject Z10 = this.f79250n.Z("Main Camera");
            this.f71672I = Z10;
            this.f71673J = (Camera) Z10.e0(Camera.f73075M8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void stepLerp() {
        this.f71669F = this.f71676M.cameraZoom + this.f71668E;
    }
}
