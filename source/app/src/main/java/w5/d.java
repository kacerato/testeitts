package w5;

import JAVARuntime.Runnable;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.C12740h;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import h7.AbstractC13433d;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import jd.C13823b;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import q7.C15045a;
import r4.C15147a;

public class d extends EditorPanel {

    public static final String f126789g0 = "FileUsagesPanel";

    public static final Class f126790h0 = d.class;

    public AbstractC13433d f126791X;

    public LinearLayout f126792Y;

    public String f126793Z;

    public String f126794a0;

    public final Object f126795b0;

    public final List<File> f126796c0;

    public final HashSet<String> f126797d0;

    public final AbstractC14360e f126798e0;

    public final InterfaceC14359d f126799f0;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return d.f126790h0;
        }

        @Override
        public String c() {
            return d.f126789g0;
        }
    }

    public class b extends AbstractC14360e {
        public b() {
        }

        @Override
        public boolean a(File file) {
            return file != null && file.exists();
        }

        @Override
        public String f() {
            String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(d.this.M());
            if (S10 == null) {
                S10 = "";
            }
            if (S10.endsWith("/")) {
                return S10;
            }
            return S10 + "/";
        }

        @Override
        public boolean h(File file) {
            return file != null && file.isDirectory();
        }

        @Override
        public List<File> j(File parent) {
            SteppedArrayList steppedArrayList;
            synchronized (d.this.f126795b0) {
                steppedArrayList = new SteppedArrayList(d.this.f126796c0);
            }
            return steppedArrayList;
        }

        @Override
        public boolean l() {
            return true;
        }
    }

    public class c implements InterfaceC14359d {
        public c() {
        }

        @Override
        public boolean a(File file) {
            boolean contains;
            if (file == null || file.isDirectory()) {
                return false;
            }
            String o10 = Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file));
            synchronized (d.this.f126795b0) {
                contains = d.this.f126797d0.contains(o10);
            }
            return contains;
        }
    }

    public class C2106d extends AbstractC13433d {
        public C2106d(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
            super(activity, explorerDataProvider, filter);
        }

        @Override
        public void s(String openFolder, View v10) {
        }

        @Override
        public void t(String openFolder, View v10) {
        }

        @Override
        public void u(File file, View v10) {
            if (file.isDirectory()) {
                return;
            }
            j.l(v10, file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(d.this.M()) + "/", ""));
        }

        @Override
        public void v(File file, View v10) {
            String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(d.this.M()) + "/", "");
            C13823b c13823b = new C13823b(replace, Tc.b.v(file.getAbsolutePath()));
            if (file.isDirectory()) {
                c13823b.f92880c = C13823b.a.Directory;
            }
            j.b(d.this.A(), d.this.A(), v10, c13823b, replace, true, null);
        }
    }

    public class e implements C15045a.d {
        public e() {
        }

        @Override
        public void a(C15045a loading) {
            d.this.z1(loading);
        }
    }

    public class f implements Runnable {

        public final C15045a f126804b;

        public class a implements Runnable {

            public final List f126806b;

            public a(final List val$resolved) {
                this.f126806b = val$resolved;
            }

            @Override
            public void run() {
                synchronized (d.this.f126795b0) {
                    try {
                        d.this.f126796c0.clear();
                        d.this.f126797d0.clear();
                        d.this.f126796c0.addAll(this.f126806b);
                        for (int i10 = 0; i10 < this.f126806b.size(); i10++) {
                            File file = (File) this.f126806b.get(i10);
                            if (file != null) {
                                d.this.f126797d0.add(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file)));
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (d.this.f126791X != null) {
                    d.this.f126791X.K();
                }
                C15045a c15045a = f.this.f126804b;
                if (c15045a != null) {
                    c15045a.p1();
                }
            }
        }

        public f(final C15045a val$finalLoading) {
            this.f126804b = val$finalLoading;
        }

        @Override
        public void run() {
            N7.c.j0(new a(C12740h.i(d.this.f126794a0, d.this.M())));
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public d() {
        super(null, "File Usages", f126789g0);
        this.f126795b0 = new Object();
        this.f126796c0 = new SteppedArrayList();
        this.f126797d0 = new HashSet<>();
        this.f126798e0 = new b();
        this.f126799f0 = new c();
        super.e1(false);
    }

    public static String v1(String ipp) {
        if (ipp == null) {
            return null;
        }
        String trim = ipp.trim();
        if (trim.isEmpty()) {
            return null;
        }
        String o10 = Tc.b.o(trim);
        return o10.startsWith("/") ? o10.substring(1) : o10;
    }

    public static void x1(File file) {
        if (file == null) {
            return;
        }
        y1(com.itsmagic.engine.Core.Components.ProjectController.a.P(file));
    }

    public static void y1(String ipp) {
        float g10 = N7.c.g(260);
        float f10 = N7.c.f(320);
        d dVar = new d();
        dVar.f126794a0 = v1(ipp);
        C15147a.m(dVar, g10, f10);
    }

    @Override
    public View C0() {
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.vertical_linear_layout_panel, (ViewGroup) null);
        this.f126792Y = linearLayout;
        C2106d c2106d = new C2106d(A(), this.f126798e0, this.f126799f0);
        this.f126791X = c2106d;
        c2106d.i(this.f126792Y);
        this.f126791X.o("Files/");
        this.f126791X.y(false);
        this.f126791X.E(true);
        this.f126793Z = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        w1(true);
        return linearLayout;
    }

    @Override
    public void G0() {
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        return super.O0(panelIntent);
    }

    @Override
    public EditorPanel k() {
        return new d();
    }

    @Override
    public void m1() {
        AbstractC13433d abstractC13433d = this.f126791X;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void n1() {
        AbstractC13433d abstractC13433d = this.f126791X;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void o1() {
        super.o1();
        String T10 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        if (T10 == null || !T10.equals(this.f126793Z)) {
            this.f126793Z = T10;
            w1(false);
        }
    }

    public final void w1(boolean showLoading) {
        String str;
        if (M() == null || (str = this.f126794a0) == null || str.isEmpty()) {
            return;
        }
        if (showLoading) {
            C15045a.u1(true, new e());
        } else {
            z1(null);
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
    }

    public final void z1(C15045a finalLoading) {
        O9.b.d(new f(finalLoading));
    }
}
