package com.itsmagic.engine.Activities.Editor.Utils;

import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import rc.C15169a;

public class H {

    public boolean f72025a;

    public Vector2 f72026b = new Vector2();

    public EditorPanel f72027c;

    public tc.h f72028d;

    public tc.h f72029e;

    public H(EditorPanel editor3DViewer) {
        this.f72027c = editor3DViewer;
    }

    public void a(tc.h t02, tc.h t12) {
        Vector2 i10 = t02.i();
        Vector2 i11 = t12.i();
        if (i10.getX() == 0.0f || i11.getX() == 0.0f) {
            this.f72026b.B0(0.0f);
        } else {
            this.f72026b.B0((i10.getX() + i11.getX()) / 2.0f);
        }
        if (i10.getY() == 0.0f || i11.getY() == 0.0f) {
            this.f72026b.C0(0.0f);
        } else {
            this.f72026b.C0((i10.getY() + i11.getY()) / 2.0f);
        }
    }

    public void b() {
        tc.h n10;
        tc.h n11;
        EditorPanel editorPanel = this.f72027c;
        if (editorPanel == null || editorPanel.f70922x == null) {
            return;
        }
        try {
            if (this.f72028d == null && (n11 = C15169a.n(0)) != null && n11.q() && this.f72027c.s0(n11)) {
                this.f72028d = n11;
                if (this.f72027c.f70922x.c(n11)) {
                    this.f72028d = null;
                }
            }
            if (this.f72029e == null && (n10 = C15169a.n(1)) != null && n10.q() && this.f72027c.s0(n10)) {
                this.f72029e = n10;
                if (this.f72027c.f70922x.c(n10)) {
                    this.f72029e = null;
                }
            }
            tc.h hVar = this.f72028d;
            if (hVar == null || this.f72029e == null) {
                this.f72025a = false;
                if (hVar != null && (hVar.t() || !this.f72028d.q())) {
                    this.f72028d = null;
                }
                tc.h hVar2 = this.f72029e;
                if (hVar2 != null) {
                    if (hVar2.t() || !this.f72029e.q()) {
                        this.f72029e = null;
                        return;
                    }
                    return;
                }
                return;
            }
            if (!hVar.q() || !this.f72029e.q()) {
                this.f72025a = false;
            } else if (this.f72028d.s() && this.f72029e.s()) {
                this.f72025a = true;
                a(this.f72028d, this.f72029e);
            } else {
                this.f72025a = false;
            }
            tc.h hVar3 = this.f72028d;
            if (hVar3 != null && (hVar3.t() || !this.f72028d.q())) {
                this.f72028d = null;
            }
            tc.h hVar4 = this.f72029e;
            if (hVar4 != null) {
                if (hVar4.t() || !this.f72029e.q()) {
                    this.f72029e = null;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            this.f72025a = false;
        }
    }

    public void c() {
        b();
    }
}
