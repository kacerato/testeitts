package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera;

import K8.c;
import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.JavaPool.JP;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import rc.C15169a;
import tc.h;

public class RTS3DPinch extends Component {

    public boolean f71645E;

    public float f71646F;

    public float f71647G;

    public final Panel3DView f71648H;

    public h f71649I;

    public h f71650J;

    public RTS3DPinch(Panel3DView editor3DViewer) {
        super(null);
        this.f71648H = editor3DViewer;
    }

    public void calculate(h t02, h t12) {
        Vector2 vector2 = (Vector2) JP.acquire(Vector2.class);
        Vector2 vector22 = (Vector2) JP.acquire(Vector2.class);
        try {
            t02.h(vector2);
            t12.h(vector22);
            vector2.B0(vector2.getX() / c.b());
            vector2.C0(vector2.getY() / c.a());
            vector22.B0(vector22.getX() / c.b());
            vector22.C0(vector22.getY() / c.a());
            float distance = vector2.distance(vector22);
            float f10 = this.f71647G;
            if (f10 > 0.0f) {
                this.f71646F = distance - f10;
            }
            this.f71647G = distance;
            JP.release(vector22);
            JP.release(vector2);
        } catch (Throwable th2) {
            JP.release(vector22);
            JP.release(vector2);
            throw th2;
        }
    }

    public void check() {
        h n10;
        h n11;
        Panel3DView panel3DView = this.f71648H;
        if (panel3DView == null || panel3DView.f70922x == null) {
            return;
        }
        try {
            if (this.f71649I == null && (n11 = C15169a.n(0)) != null && n11.q() && this.f71648H.s0(n11)) {
                this.f71649I = n11;
                if (this.f71648H.f70922x.c(n11)) {
                    this.f71649I = null;
                }
            }
            if (this.f71650J == null && (n10 = C15169a.n(1)) != null && n10.q() && this.f71648H.s0(n10)) {
                this.f71650J = n10;
                if (this.f71648H.f70922x.c(n10)) {
                    this.f71650J = null;
                }
            }
            h hVar = this.f71649I;
            if (hVar == null || this.f71650J == null) {
                this.f71645E = false;
                this.f71647G = 0.0f;
                this.f71646F = 0.0f;
                if (hVar != null && (hVar.t() || !this.f71649I.q())) {
                    this.f71649I = null;
                }
                h hVar2 = this.f71650J;
                if (hVar2 != null) {
                    if (hVar2.t() || !this.f71650J.q()) {
                        this.f71650J = null;
                        return;
                    }
                    return;
                }
                return;
            }
            if (!hVar.q() || !this.f71650J.q()) {
                this.f71645E = false;
                this.f71647G = 0.0f;
                this.f71646F = 0.0f;
            } else if (this.f71649I.s() && this.f71650J.s()) {
                this.f71645E = true;
                calculate(this.f71649I, this.f71650J);
            } else {
                this.f71645E = false;
                this.f71647G = 0.0f;
                this.f71646F = 0.0f;
            }
            h hVar3 = this.f71649I;
            if (hVar3 != null && (hVar3.t() || !this.f71649I.q())) {
                this.f71649I = null;
            }
            h hVar4 = this.f71650J;
            if (hVar4 != null) {
                if (hVar4.t() || !this.f71650J.q()) {
                    this.f71650J = null;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f71645E = false;
        }
    }

    @Override
    public void preUpdate(GameObject gameObject, boolean isEditor) {
        super.preUpdate(gameObject, isEditor);
        if (gameObject == null) {
            return;
        }
        check();
    }
}
