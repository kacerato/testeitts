package com.itsmagic.engine.Activities.Editor.Utils;

import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import rc.C15169a;

public class G {

    public boolean f72010a;

    public float f72011b;

    public float f72012c;

    public final EditorPanel f72013d;

    public tc.h f72014e;

    public tc.h f72015f;

    public G(EditorPanel editor3DViewer) {
        this.f72013d = editor3DViewer;
    }

    public void a(tc.h t02, tc.h t12) {
        Vector2 clone = t02.g().clone();
        Vector2 clone2 = t12.g().clone();
        clone.B0(clone.getX() / K8.c.b());
        clone.C0(clone.getY() / K8.c.a());
        clone2.B0(clone2.getX() / K8.c.b());
        clone2.C0(clone2.getY() / K8.c.a());
        float distance = clone.distance(clone2);
        float f10 = this.f72012c;
        if (f10 > 0.0f) {
            this.f72011b = distance - f10;
        }
        this.f72012c = distance;
    }

    public void b() {
        tc.h n10;
        tc.h n11;
        EditorPanel editorPanel = this.f72013d;
        if (editorPanel == null || editorPanel.f70922x == null) {
            return;
        }
        try {
            if (this.f72014e == null && (n11 = C15169a.n(0)) != null && n11.q() && this.f72013d.s0(n11)) {
                this.f72014e = n11;
                if (this.f72013d.f70922x.c(n11)) {
                    this.f72014e = null;
                }
            }
            if (this.f72015f == null && (n10 = C15169a.n(1)) != null && n10.q() && this.f72013d.s0(n10)) {
                this.f72015f = n10;
                if (this.f72013d.f70922x.c(n10)) {
                    this.f72015f = null;
                }
            }
            tc.h hVar = this.f72014e;
            if (hVar == null || this.f72015f == null) {
                this.f72010a = false;
                this.f72012c = 0.0f;
                this.f72011b = 0.0f;
                if (hVar != null && (hVar.t() || !this.f72014e.q())) {
                    this.f72014e = null;
                }
                tc.h hVar2 = this.f72015f;
                if (hVar2 != null) {
                    if (hVar2.t() || !this.f72015f.q()) {
                        this.f72015f = null;
                        return;
                    }
                    return;
                }
                return;
            }
            if (!hVar.q() || !this.f72015f.q()) {
                this.f72010a = false;
                this.f72012c = 0.0f;
                this.f72011b = 0.0f;
            } else if (this.f72014e.s() && this.f72015f.s()) {
                this.f72010a = true;
                a(this.f72014e, this.f72015f);
            } else {
                this.f72010a = false;
                this.f72012c = 0.0f;
                this.f72011b = 0.0f;
            }
            tc.h hVar3 = this.f72014e;
            if (hVar3 != null && (hVar3.t() || !this.f72014e.q())) {
                this.f72014e = null;
            }
            tc.h hVar4 = this.f72015f;
            if (hVar4 != null) {
                if (hVar4.t() || !this.f72015f.q()) {
                    this.f72015f = null;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f72010a = false;
        }
    }

    public void c() {
        b();
    }
}
