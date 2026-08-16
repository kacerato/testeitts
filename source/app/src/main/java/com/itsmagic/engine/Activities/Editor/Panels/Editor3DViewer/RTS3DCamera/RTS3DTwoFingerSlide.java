package com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.RTS3DCamera;

import com.itsmagic.engine.Activities.Editor.Panels.Editor3DViewer.Base.Panel3DView;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import rc.C15169a;
import tc.h;

public class RTS3DTwoFingerSlide extends Component {

    public boolean f71653E;

    public Vector2 f71654F;

    public Panel3DView f71655G;

    public h f71656H;

    public h f71657I;

    public RTS3DTwoFingerSlide(Panel3DView editor3DViewer) {
        super(null);
        this.f71654F = new Vector2();
        this.f71655G = editor3DViewer;
    }

    public void calculate(h t02, h t12) {
        Vector2 i10 = t02.i();
        Vector2 i11 = t12.i();
        if (i10.getX() == 0.0f || i11.getX() == 0.0f) {
            this.f71654F.B0(0.0f);
        } else {
            this.f71654F.B0((i10.getX() + i11.getX()) / 2.0f);
        }
        if (i10.getY() == 0.0f || i11.getY() == 0.0f) {
            this.f71654F.C0(0.0f);
        } else {
            this.f71654F.C0((i10.getY() + i11.getY()) / 2.0f);
        }
    }

    public void check() {
        h n10;
        h n11;
        Panel3DView panel3DView = this.f71655G;
        if (panel3DView == null || panel3DView.f70922x == null) {
            return;
        }
        try {
            if (this.f71656H == null && (n11 = C15169a.n(0)) != null && n11.q() && this.f71655G.s0(n11)) {
                this.f71656H = n11;
                if (this.f71655G.f70922x.c(n11)) {
                    this.f71656H = null;
                }
            }
            if (this.f71657I == null && (n10 = C15169a.n(1)) != null && n10.q() && this.f71655G.s0(n10)) {
                this.f71657I = n10;
                if (this.f71655G.f70922x.c(n10)) {
                    this.f71657I = null;
                }
            }
            h hVar = this.f71656H;
            if (hVar == null || this.f71657I == null) {
                this.f71653E = false;
                if (hVar != null && (hVar.t() || !this.f71656H.q())) {
                    this.f71656H = null;
                }
                h hVar2 = this.f71657I;
                if (hVar2 != null) {
                    if (hVar2.t() || !this.f71657I.q()) {
                        this.f71657I = null;
                        return;
                    }
                    return;
                }
                return;
            }
            if (!hVar.q() || !this.f71657I.q()) {
                this.f71653E = false;
            } else if (this.f71656H.s() && this.f71657I.s()) {
                this.f71653E = true;
                calculate(this.f71656H, this.f71657I);
            } else {
                this.f71653E = false;
            }
            h hVar3 = this.f71656H;
            if (hVar3 != null && (hVar3.t() || !this.f71656H.q())) {
                this.f71656H = null;
            }
            h hVar4 = this.f71657I;
            if (hVar4 != null) {
                if (hVar4.t() || !this.f71657I.q()) {
                    this.f71657I = null;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f71653E = false;
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
