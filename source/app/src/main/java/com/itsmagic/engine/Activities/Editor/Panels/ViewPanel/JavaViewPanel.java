package com.itsmagic.engine.Activities.Editor.Panels.ViewPanel;

import JAVARuntime.ViewPanel;
import android.view.View;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Core.Components.JCompiler.JavaMetaInfo;
import d8.j;
import d8.m;
import o8.InterfaceC14490d;

public class JavaViewPanel extends EditorPanel {

    public String f71934X;

    public String f71935Y;

    public transient ViewPanel f71936Z;

    public transient Class f71937a0;

    @Expose
    public String className;

    public class a implements o8.h {
        public a() {
        }

        @Override
        public void a(ViewPanel component, Class classAddress, JavaMetaInfo javaMetaInfo) {
            if (component == null || classAddress == null) {
                return;
            }
            JavaViewPanel.this.f71936Z = component;
            JavaViewPanel javaViewPanel = JavaViewPanel.this;
            javaViewPanel.f71937a0 = classAddress;
            component.setPanel(javaViewPanel);
        }

        @Override
        public void onError(String error) {
            JavaViewPanel.this.f71935Y = error;
        }
    }

    public class b implements InterfaceC14490d {
        public b() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.updateUI();
        }
    }

    public class c implements InterfaceC14490d {
        public c() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.updateUIVisible();
        }
    }

    public class d implements InterfaceC14490d {
        public d() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.minimizedUpdate();
        }
    }

    public class e implements InterfaceC14490d {
        public e() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.lpTaskUpdate();
        }
    }

    public class f implements InterfaceC14490d {
        public f() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.onBindView();
        }
    }

    public class g implements InterfaceC14490d {

        public final View[] f71944a;

        public g(final View[] val$v) {
            this.f71944a = val$v;
        }

        @Override
        public void run() {
            this.f71944a[0] = JavaViewPanel.this.f71936Z.onAttach();
        }
    }

    public class h implements InterfaceC14490d {
        public h() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.onUnbindView();
        }
    }

    public class i implements InterfaceC14490d {
        public i() {
        }

        @Override
        public void run() {
            JavaViewPanel.this.f71936Z.onDetach();
        }
    }

    public JavaViewPanel() {
        super(null, "");
        this.f71934X = "CustomPanels";
    }

    @Override
    public void B0() {
        super.B0();
        m.d(new d());
    }

    @Override
    public View C0() {
        View[] viewArr = {null};
        m.d(new g(viewArr));
        return viewArr[0];
    }

    @Override
    public void E0() {
        super.E0();
        m.d(new f());
    }

    @Override
    public void G0() {
        super.G0();
        m.d(new i());
    }

    @Override
    public void N0() {
        super.N0();
        m.d(new h());
    }

    @Override
    public EditorPanel k() {
        return new JavaViewPanel(this.className);
    }

    @Override
    public void m1() {
        super.m1();
        m.d(new b());
    }

    @Override
    public void n1() {
        super.n1();
        m.d(new c());
    }

    public String s1() {
        return this.f71934X;
    }

    public void t1() {
        if (this.f71936Z == null) {
            j.I0(this.className, new a());
        }
    }

    public void u1(String menu) {
        this.f71934X = menu;
    }

    public void v1() {
        ViewPanel viewPanel = this.f71936Z;
        if (viewPanel == null) {
            t1();
        } else {
            try {
                viewPanel.setPanel(this);
            } catch (Exception unused) {
            }
        }
    }

    @Override
    public void x0() {
        super.x0();
        m.d(new e());
    }

    public JavaViewPanel(String className) {
        super(null, "");
        this.f71934X = "CustomPanels";
        this.className = className;
        f1(Tc.b.O(className));
        v1();
    }

    public JavaViewPanel(String className, ViewPanel runtimeComponent, Class classAddress) {
        super(null, "");
        this.f71934X = "CustomPanels";
        this.className = className;
        this.f71936Z = runtimeComponent;
        this.f71937a0 = classAddress;
        f1(Tc.b.O(className));
        v1();
    }
}
