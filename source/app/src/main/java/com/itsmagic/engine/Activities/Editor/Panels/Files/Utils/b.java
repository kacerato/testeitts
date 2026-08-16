package com.itsmagic.engine.Activities.Editor.Panels.Files.Utils;

import C5.b;
import D5.h;
import F5.c;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine.Engines.Utils.Variable;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import w5.c;
import w5.j;

public class b {

    public static final j.m0[] f71711a = {j.m0.Component};

    public static final AtomicBoolean f71712b = new AtomicBoolean(true);

    public static final AtomicBoolean f71713c = new AtomicBoolean(true);

    public static final AtomicBoolean f71714d = new AtomicBoolean(true);

    public static final String[] f71715e = {"MyScript"};

    public class a implements G4.f {

        public final String f71716a;

        public final Runnable f71717b;

        public class C1133a implements c.I0 {

            public final G4.e f71718a;

            public C1133a(final G4.e val$panel) {
                this.f71718a = val$panel;
            }

            @Override
            public void b() {
                d8.j.v0();
                this.f71718a.R0();
                y.c();
                Runnable runnable = a.this.f71717b;
                if (runnable != null) {
                    runnable.run();
                }
            }

            @Override
            public void onError(String error) {
                N7.c.v0(error);
            }
        }

        public a(final String val$folderPath, final Runnable val$runnable) {
            this.f71716a = val$folderPath;
            this.f71717b = val$runnable;
        }

        @Override
        public void a(View v10, G4.e panel) {
            w5.c.A(N7.c.t(), this.f71716a, b.f71715e[0], b.f71711a[0], b.f71712b.get(), b.f71713c.get(), b.f71714d.get(), new C1133a(panel));
        }

        @Override
        public void b(G4.e entriesClassPanel) {
            entriesClassPanel.f7555b0 = true;
            entriesClassPanel.v1(b.g(entriesClassPanel));
        }

        @Override
        public void c(G4.e entriesClassPanel) {
            entriesClassPanel.v1(b.g(entriesClassPanel));
        }

        @Override
        public void e(G4.e entriesClassPanel) {
        }

        @Override
        public void f(G4.e entriesClassPanel) {
            entriesClassPanel.v1(b.g(entriesClassPanel));
        }

        @Override
        public void g(View v10, G4.e panel) {
            panel.R0();
        }
    }

    public class C1134b implements h {
        @Override
        public Variable get() {
            return new Variable("", b.f71715e[0] + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                b.f71715e[0] = variable.str_value;
            }
        }
    }

    public class c extends c.n0<j.m0> {

        public final G4.e f71720a;

        public c(final G4.e val$entriesClassPanel) {
            this.f71720a = val$entriesClassPanel;
        }

        @Override
        public void a() {
            G4.e eVar = this.f71720a;
            eVar.v1(b.g(eVar));
        }

        @Override
        public void set(j.m0 value) {
            b.f71711a[0] = value;
        }
    }

    public class d implements h {
        @Override
        public Variable get() {
            return new Variable("", b.f71712b.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                b.f71712b.set(variable.booolean_value.booleanValue());
            }
        }
    }

    public class e implements h {
        @Override
        public Variable get() {
            return new Variable("", b.f71713c.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                b.f71713c.set(variable.booolean_value.booleanValue());
            }
        }
    }

    public class f implements h {
        @Override
        public Variable get() {
            return new Variable("", b.f71714d.get() + "");
        }

        @Override
        public void set(Variable variable) {
            if (variable != null) {
                b.f71714d.set(variable.booolean_value.booleanValue());
            }
        }
    }

    public static List<C5.b> g(G4.e entriesClassPanel) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        steppedArrayList.add(new C5.b(new C1134b(), "Name", b.a.SLString));
        String l10 = Lang.l(Lang.T.TYPE);
        j.m0[] m0VarArr = f71711a;
        steppedArrayList.add(F5.c.i(l10, j.m0.class, m0VarArr[0], new c(entriesClassPanel)));
        d dVar = new d();
        b.a aVar = b.a.SLBoolean;
        steppedArrayList.add(new C5.b(dVar, "Hide package declaration", aVar));
        steppedArrayList.add(new C5.b(new e(), "Hide imports declaration", aVar));
        if (m0VarArr[0] == j.m0.Component) {
            steppedArrayList.add(new C5.b(new f(), "Hide class declaration", aVar));
        }
        return steppedArrayList;
    }

    public static void h(View v10, String folderPath, Runnable runnable) {
        G4.e.x1("New java script", 250, 230, new a(folderPath, runnable));
    }
}
