package com.itsmagic.engine.Activities.Editor.Panels.Scripting;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Areas.HUBPanel;
import com.itsmagic.engine.Activities.Editor.Interface.Panel.Panel;
import i4.C13580a;
import i4.InterfaceC13584e;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import n4.C14351c;
import w4.C15909a;

public class ScriptingHUB extends HUBPanel {

    public static final String f71893y = "ScriptingHUB";

    public static final Class f71894z = ScriptingHUB.class;

    @Expose
    public Set<String> openScripts;

    public class a extends Panel.h {
        @Override
        public Class b() {
            return ScriptingHUB.f71894z;
        }

        @Override
        public String c() {
            return ScriptingHUB.f71893y;
        }
    }

    public class b implements Runnable {

        public final String f71895b;

        public b(final String val$openScript) {
            this.f71895b = val$openScript;
        }

        @Override
        public void run() {
            ScriptingHUB.this.J0(this.f71895b, false);
        }
    }

    public class c implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                try {
                    ScriptingHUB scriptingHUB = ScriptingHUB.this;
                    ScriptingHUB.super.q(ScriptingHUB.super.D0(scriptingHUB.serializedSelectedPanelIndex));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        public c() {
        }

        @Override
        public void run() {
            N7.c.c0(new a());
        }
    }

    public class d implements Runnable {

        public final boolean f71899b;

        public final y6.c f71900c;

        public final String f71901d;

        public d(final boolean val$focus, final y6.c val$panel, final String val$inProjectPath) {
            this.f71899b = val$focus;
            this.f71900c = val$panel;
            this.f71901d = val$inProjectPath;
        }

        @Override
        public void run() {
            try {
                if (ScriptingHUB.this.f70945i.h()) {
                    ScriptingHUB.this.f70945i.a();
                    N7.c.c0(this);
                } else {
                    if (this.f71899b) {
                        ScriptingHUB.this.f70945i.o(this.f71900c);
                    }
                    this.f71900c.z1(this.f71901d);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class e implements Runnable {

        public final boolean f71903b;

        public final C15909a f71904c;

        public final String f71905d;

        public e(final boolean val$focus, final C15909a val$panel, final String val$inProjectPath) {
            this.f71903b = val$focus;
            this.f71904c = val$panel;
            this.f71905d = val$inProjectPath;
        }

        @Override
        public void run() {
            try {
                InterfaceC13584e interfaceC13584e = ScriptingHUB.this.f70945i;
                if (interfaceC13584e != null) {
                    if (interfaceC13584e.h()) {
                        ScriptingHUB.this.f70945i.a();
                        N7.c.c0(this);
                    } else {
                        if (this.f71903b) {
                            ScriptingHUB.this.f70945i.o(this.f71904c);
                        }
                        this.f71904c.q1(this.f71905d);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class f implements Runnable {

        public final String f71907b;

        public f(final String val$openScript) {
            this.f71907b = val$openScript;
        }

        @Override
        public void run() {
            ScriptingHUB.this.J0(this.f71907b, false);
        }
    }

    static {
        Panel.u(new a());
    }

    public ScriptingHUB() {
        super(f71893y, Lang.l(Lang.T.CODING));
        this.openScripts = new HashSet();
        super.A0(new y6.e());
    }

    public static boolean K0(String filePath) {
        return M0(filePath) || L0(filePath);
    }

    public static boolean L0(String filePath) {
        return C15909a.r1(filePath);
    }

    public static boolean M0(String filePath) {
        return y6.c.A1(filePath);
    }

    public final boolean J0(String inProjectPath, boolean focus) {
        String w12;
        int E02 = E0();
        for (int i10 = 0; i10 < E02; i10++) {
            Panel D02 = D0(i10);
            if ((D02.M() instanceof y6.c) && (w12 = ((y6.c) D02.M()).w1()) != null && w12.equals(inProjectPath)) {
                if (focus) {
                    this.f70945i.u(D02);
                }
                return true;
            }
        }
        if (M0(inProjectPath)) {
            y6.c cVar = new y6.c();
            super.A0(cVar);
            N7.c.c0(new d(focus, cVar, inProjectPath));
            return true;
        }
        if (!L0(inProjectPath)) {
            return false;
        }
        C15909a c15909a = new C15909a();
        super.A0(c15909a);
        N7.c.c0(new e(focus, c15909a, inProjectPath));
        return true;
    }

    @Override
    public View c0(Activity activity, LayoutInflater layoutInflater, C13580a editor3DScreen) {
        if (!this.openScripts.isEmpty()) {
            Iterator<String> it = this.openScripts.iterator();
            while (it.hasNext()) {
                N7.c.c0(new b(it.next()));
            }
            this.openScripts.clear();
            if (this.serializedSelectedPanelIndex >= 0) {
                N7.c.c0(new c());
            }
        }
        return super.c0(activity, layoutInflater, editor3DScreen);
    }

    @Override
    public boolean q0(n4.f panelIntent) {
        return panelIntent instanceof C14351c ? J0(((C14351c) panelIntent).f97724a, true) : super.q0(panelIntent);
    }

    @Override
    public void v(o4.e panelsBundle) {
        super.v(panelsBundle);
        Object a10 = panelsBundle.a("open-scripts");
        if (a10 instanceof HashSet) {
            HashSet hashSet = (HashSet) a10;
            if (hashSet.isEmpty()) {
                return;
            }
            Iterator<E> it = hashSet.iterator();
            while (it.hasNext()) {
                N7.c.c0(new f((String) it.next()));
            }
            hashSet.clear();
        }
    }

    @Override
    public void x0(LinearLayout parent, FrameLayout screenArea, Activity activity, Context context, LayoutInflater layoutInflater, C13580a editor3DScreen, float x10, float y10, float w10, float h10, float ax, float ay, float aw, float ah2, FrameLayout panelContentLayout, View fullPanelArea, InterfaceC13584e panelsControllerListener) {
        String w12;
        super.x0(parent, screenArea, activity, context, layoutInflater, editor3DScreen, x10, y10, w10, h10, ax, ay, aw, ah2, panelContentLayout, fullPanelArea, panelsControllerListener);
        this.openScripts.clear();
        for (int i10 = 0; i10 < E0(); i10++) {
            Panel D02 = D0(i10);
            if (D02 != null && (D02.M() instanceof y6.c) && (w12 = ((y6.c) D02.M()).w1()) != null) {
                this.openScripts.add(w12);
            }
        }
    }

    @Override
    public void z(o4.e panelsBundle) {
        super.z(panelsBundle);
        panelsBundle.b("open-scripts", this.openScripts);
    }
}
