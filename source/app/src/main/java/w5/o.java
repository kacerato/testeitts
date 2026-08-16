package w5;

import Ic.C2633l;
import JAVARuntime.Runnable;
import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.C12740h;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import h7.AbstractC13433d;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.HashSet;
import java.util.List;
import jd.C13823b;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import q7.C15045a;
import r4.C15147a;

public class o extends EditorPanel {

    public static final String f127196f0 = "UnusedFilesPanel";

    public static final Class f127197g0 = o.class;

    public AbstractC13433d f127198X;

    public LinearLayout f127199Y;

    public String f127200Z;

    public final Object f127201a0;

    public final List<File> f127202b0;

    public final HashSet<String> f127203c0;

    public final AbstractC14360e f127204d0;

    public final InterfaceC14359d f127205e0;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return o.f127197g0;
        }

        @Override
        public String c() {
            return o.f127196f0;
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
            String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(o.this.M());
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
            synchronized (o.this.f127201a0) {
                steppedArrayList = new SteppedArrayList(o.this.f127202b0);
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
            synchronized (o.this.f127201a0) {
                contains = o.this.f127203c0.contains(o10);
            }
            return contains;
        }
    }

    public class d extends AbstractC13433d {
        public d(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
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
            j.l(v10, file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(o.this.M()) + "/", ""));
        }

        @Override
        public void v(File file, View v10) {
            String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(o.this.M()) + "/", "");
            C13823b c13823b = new C13823b(replace, Tc.b.v(file.getAbsolutePath()));
            if (file.isDirectory()) {
                c13823b.f92880c = C13823b.a.Directory;
            }
            j.b(o.this.A(), o.this.A(), v10, c13823b, replace, true, null);
        }
    }

    public class e implements C15045a.d {
        public e() {
        }

        @Override
        public void a(C15045a loading) {
            o.this.z1(loading);
        }
    }

    public class f implements Runnable {

        public final C15045a f127210b;

        public class a implements Runnable {

            public final List f127212b;

            public a(final List val$unused) {
                this.f127212b = val$unused;
            }

            @Override
            public void run() {
                synchronized (o.this.f127201a0) {
                    try {
                        o.this.f127202b0.clear();
                        o.this.f127203c0.clear();
                        if (this.f127212b != null) {
                            o.this.f127202b0.addAll(this.f127212b);
                            for (int i10 = 0; i10 < this.f127212b.size(); i10++) {
                                File file = (File) this.f127212b.get(i10);
                                if (file != null) {
                                    o.this.f127203c0.add(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file)));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                if (o.this.f127198X != null) {
                    o.this.f127198X.K();
                }
                C15045a c15045a = f.this.f127210b;
                if (c15045a != null) {
                    c15045a.p1();
                }
            }
        }

        public f(final C15045a val$finalLoading) {
            this.f127210b = val$finalLoading;
        }

        @Override
        public void run() {
            o oVar = o.this;
            N7.c.j0(new a(oVar.x1(oVar.M())));
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public o() {
        super(null, "Unused Files", f127196f0);
        this.f127201a0 = new Object();
        this.f127202b0 = new SteppedArrayList();
        this.f127203c0 = new HashSet<>();
        this.f127204d0 = new b();
        this.f127205e0 = new c();
        super.e1(false);
    }

    public static void y1() {
        C15147a.m(new o(), N7.c.g(260), N7.c.f(320));
    }

    @Override
    public View C0() {
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.vertical_linear_layout_panel, (ViewGroup) null);
        this.f127199Y = linearLayout;
        d dVar = new d(A(), this.f127204d0, this.f127205e0);
        this.f127198X = dVar;
        dVar.i(this.f127199Y);
        this.f127198X.o("Files/");
        this.f127198X.y(false);
        this.f127198X.E(true);
        this.f127200Z = com.itsmagic.engine.Core.Components.ProjectController.a.T();
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
        return new o();
    }

    @Override
    public void m1() {
        AbstractC13433d abstractC13433d = this.f127198X;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void n1() {
        AbstractC13433d abstractC13433d = this.f127198X;
        if (abstractC13433d != null) {
            abstractC13433d.K();
        }
    }

    @Override
    public void o1() {
        super.o1();
        String T10 = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        if (T10 == null || !T10.equals(this.f127200Z)) {
            this.f127200Z = T10;
            w1(false);
        }
    }

    public final void v1(File folder, List<File> output, File projectRoot) {
        File[] listFiles;
        File[] listFiles2;
        if (folder == null || !folder.exists() || (listFiles = folder.listFiles()) == null) {
            return;
        }
        for (File file : listFiles) {
            if (file.isDirectory()) {
                if (projectRoot == null || !folder.equals(projectRoot) || (!file.getName().startsWith(ConstantDescs.DEFAULT_NAME) && !"Resources".equalsIgnoreCase(file.getName()))) {
                    v1(file, output, projectRoot);
                }
            } else if (!C2633l.a(file, ".java") && !C2633l.a(file, ".javac") && !C2633l.a(file, ".jar") && !C2633l.a(file, ".class") && !C2633l.a(file, ".dex") && !C2633l.a(file, ".mwf")) {
                if (C2633l.a(file, ".config")) {
                    File file2 = new File(file.getAbsolutePath().substring(0, file.getAbsolutePath().length() - 7));
                    if (C2633l.a(file2, ".png|.jpg|.jpeg|.bmp|.webp|.heif|.ppm|.tif|.tga|.ivo|.nse|.rte|.nm") && file2.exists()) {
                    }
                }
                if (C2633l.a(file, ".texture") && (listFiles2 = folder.listFiles()) != null) {
                    for (File file3 : listFiles2) {
                        Tc.b.O(file3.getName()).equals(Tc.b.O(file.getName()));
                    }
                }
                File parentFile = file.getParentFile();
                if ((parentFile == null || !parentFile.getName().endsWith(".meta") || (!"jmi.config".equalsIgnoreCase(file.getName()) && !"thumb.png".equalsIgnoreCase(file.getName()) && !"thumb_manifest.json".equalsIgnoreCase(file.getName()))) && !file.getName().equals("f.manifest")) {
                    file.getAbsolutePath();
                    output.add(file);
                }
            }
        }
    }

    public final void w1(boolean showLoading) {
        if (M() == null) {
            return;
        }
        if (showLoading) {
            C15045a.u1(true, new e());
        } else {
            z1(null);
        }
    }

    public final List<File> x1(Context context) {
        String S10 = com.itsmagic.engine.Core.Components.ProjectController.a.S(context);
        if (S10 == null || S10.isEmpty()) {
            return new SteppedArrayList();
        }
        File file = new File(S10);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        v1(file, steppedArrayList, file);
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            File file2 = steppedArrayList.get(i10);
            if (file2 != null) {
                hashSet.add(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file2)));
            }
        }
        if (hashSet.isEmpty()) {
            return new SteppedArrayList();
        }
        C12740h.b bVar = new C12740h.b();
        bVar.f72131a = true;
        bVar.f72132b = true;
        C12740h.c n10 = C12740h.n(context, bVar);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (int i11 = 0; i11 < steppedArrayList.size(); i11++) {
            File file3 = steppedArrayList.get(i11);
            if (file3 != null && !n10.e(Tc.b.o(com.itsmagic.engine.Core.Components.ProjectController.a.P(file3)))) {
                steppedArrayList2.add(file3);
            }
        }
        return steppedArrayList2;
    }

    @Override
    public void z(o4.b engineUpdateData) {
    }

    public final void z1(C15045a finalLoading) {
        O9.b.d(new f(finalLoading));
    }
}
