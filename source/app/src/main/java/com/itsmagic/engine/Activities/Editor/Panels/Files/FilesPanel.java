package com.itsmagic.engine.Activities.Editor.Panels.Files;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import bd.C3867a;
import com.google.gson.Gson;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Files.a;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.y;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import h7.AbstractC13433d;
import id.C13696a;
import java.io.File;
import java.util.List;
import java.util.Objects;
import jd.C13823b;
import n7.AbstractC14360e;
import n7.C14358c;
import n7.InterfaceC14359d;
import q7.C15045a;
import w5.C15910a;
import w5.j;
import w5.k;
import w5.n;

public class FilesPanel extends EditorPanel {

    public static final String f71679f0 = "FilesV2";

    public static final Class f71680g0 = FilesPanel.class;

    public AbstractC13433d f71681X;

    public LinearLayout f71682Y;

    public String f71683Z;

    public PFSettings f71684a0;

    public View f71685b0;

    public TextView f71686c0;

    public final a.C1135a f71687d0;

    public final C14358c f71688e0;

    @Expose
    private int gridZoom;

    @Expose
    private boolean isGrid;

    @Expose
    private String serializedSelectedLeftFolder;

    public class a extends EditorPanel.j {
        @Override
        public Class b() {
            return FilesPanel.f71680g0;
        }

        @Override
        public String c() {
            return FilesPanel.f71679f0;
        }
    }

    public class b extends a.C1135a {
        public b() {
        }

        @Override
        public boolean a(File file) {
            if (super.a(file)) {
                return (file.isDirectory() && file.getName().endsWith(".meta")) ? false : true;
            }
            return false;
        }
    }

    public class c extends C14358c {
        public c() {
        }

        @Override
        public List<File> j(File parent) {
            return super.j(parent);
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View view) {
            j.f126810a = null;
            j.f126811b = null;
            FilesPanel.this.f71685b0.setVisibility(8);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {

        public class a implements K3.a {

            public final C15045a f71693a;

            public a(final C15045a val$loading) {
                this.f71693a = val$loading;
            }

            @Override
            public void a() {
                this.f71693a.p1();
                N7.c.v0(Lang.l(Lang.T.SOMETHING_WENT_WRONG));
            }

            @Override
            public void onSuccess() {
                try {
                    y.c();
                    d8.j.v0();
                    if (j.f126811b.exists()) {
                        j.f126811b.delete();
                    }
                    j.f126811b = null;
                    this.f71693a.p1();
                } catch (Throwable th2) {
                    this.f71693a.p1();
                    throw th2;
                }
            }
        }

        public e() {
        }

        @Override
        public void click(View view) {
            FilesPanel.this.f71685b0.setVisibility(8);
            final C15045a r12 = C15045a.r1();
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + FilesPanel.this.f71681X.l());
            if (j.f126810a == null) {
                if (j.f126811b != null) {
                    File file2 = new File(file, j.f126811b.getName());
                    try {
                        if (j.f126811b.getCanonicalPath().equals(file2.getCanonicalPath())) {
                            N7.c.u0(new C3867a("Cannot move to the same location", "Nao \u00e9 poss\u00edvel mover para o mesmo local"));
                            Objects.requireNonNull(r12);
                            N7.c.c0(new Runnable() {
                                @Override
                                public final void run() {
                                    C15045a.this.p1();
                                }
                            });
                            return;
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                    K3.e.b(j.f126811b, file2, new a(r12));
                    return;
                }
                return;
            }
            File file3 = new File(file, j.f126810a.getName());
            try {
                if (j.f126810a.getCanonicalPath().equals(file3.getCanonicalPath())) {
                    N7.c.u0(new C3867a("Cannot copy to the same location", "Nao \u00e9 poss\u00edvel copiar para o mesmo local"));
                    Objects.requireNonNull(r12);
                    N7.c.c0(new Runnable() {
                        @Override
                        public final void run() {
                            C15045a.this.p1();
                        }
                    });
                    return;
                }
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            if (C13696a.a(j.f126810a, file3)) {
                j.f126810a = null;
            } else {
                N7.c.v0(Lang.l(Lang.T.SOMETHING_WENT_WRONG));
            }
            Objects.requireNonNull(r12);
            N7.c.c0(new Runnable() {
                @Override
                public final void run() {
                    C15045a.this.p1();
                }
            });
        }
    }

    public class f extends AbstractC13433d {

        public class a extends C15910a {
            public a() {
            }

            @Override
            public void f(String ipp) {
                FilesPanel.this.f71681X.o(ipp);
            }
        }

        public f(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
            super(activity, explorerDataProvider, filter);
        }

        @Override
        public void s(String openFolder, View v10) {
            C13823b c13823b = new C13823b(openFolder, Tc.b.v(com.itsmagic.engine.Core.Components.ProjectController.a.S(FilesPanel.this.M()) + "/" + openFolder));
            c13823b.f92880c = C13823b.a.Directory;
            j.b(FilesPanel.this.A(), FilesPanel.this.A(), v10, c13823b, openFolder, false, null);
        }

        @Override
        public void t(String openFolder, View v10) {
            com.itsmagic.engine.Core.Components.ProjectController.a.i0(openFolder);
        }

        @Override
        public void u(File file, View v10) {
            if (file.isDirectory()) {
                return;
            }
            j.l(v10, file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(FilesPanel.this.M()) + "/", ""));
        }

        @Override
        public void v(File file, View v10) {
            String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.S(FilesPanel.this.M()) + "/", "");
            C13823b c13823b = new C13823b(replace, Tc.b.v(file.getAbsolutePath()));
            if (file.isDirectory()) {
                c13823b.f92880c = C13823b.a.Directory;
            }
            j.b(FilesPanel.this.A(), FilesPanel.this.A(), v10, c13823b, replace, true, new a());
        }
    }

    public class g implements h7.f {
        public g() {
        }

        @Override
        public void a(int newSize) {
            FilesPanel.this.gridZoom = newSize;
        }
    }

    public class h extends SteppedArrayList<C12908b> {

        public class a implements dd.d {
            public a() {
            }

            @Override
            public void onSelected(View view) {
                if (FilesPanel.this.f71681X != null) {
                    FilesPanel.this.f71681X.s(FilesPanel.this.f71681X.l(), view);
                }
            }
        }

        public class b implements dd.d {
            public b() {
            }

            @Override
            public void onSelected(View v10) {
                if (FilesPanel.this.f71681X != null) {
                    com.itsmagic.engine.Core.Components.ProjectController.a.i0(FilesPanel.this.f71681X.l());
                }
            }
        }

        public class c implements dd.d {
            public c() {
            }

            @Override
            public void onSelected(View v10) {
                if (FilesPanel.this.f71681X != null) {
                    FilesPanel.this.f71681X.j();
                    FilesPanel.this.f71683Z = com.itsmagic.engine.Core.Components.ProjectController.a.T();
                }
            }
        }

        public class d implements dd.d {
            public d() {
            }

            @Override
            public void onSelected(View v10) {
                if (FilesPanel.this.f71681X != null) {
                    FilesPanel.this.f71681X.n();
                }
            }
        }

        public class e implements dd.d {
            public e() {
            }

            @Override
            public void onSelected(View view) {
                if (FilesPanel.this.f71681X != null) {
                    FilesPanel.this.f71681X.G();
                }
            }
        }

        public h() {
            add(new C12908b(R.drawable.new_icon, "New file", new a()));
            add(new C12908b(R.drawable.import_files, "Import files", new b()));
            add(new C12908b(R.drawable.restore, F2.d.f6290y0, new c()));
            add(new C12908b(R.drawable.restore, "Go back", new d()));
            add(new C12908b(R.drawable.import_files, "Toggle view mode", new e()));
        }
    }

    static {
        EditorPanel.a(new a());
    }

    public FilesPanel(K8.a engine) {
        super(engine);
        this.serializedSelectedLeftFolder = "Files/Models";
        this.isGrid = false;
        this.gridZoom = 0;
        this.f71687d0 = new b();
        this.f71688e0 = new c();
    }

    @Override
    public View C0() {
        LinearLayout linearLayout = (LinearLayout) this.f70908j.inflate(R.layout.files_panel, (ViewGroup) null);
        this.f71682Y = (LinearLayout) linearLayout.findViewById(R.id.content);
        View findViewById = linearLayout.findViewById(R.id.pasteActionLayout);
        this.f71685b0 = findViewById;
        findViewById.setVisibility(8);
        this.f71686c0 = (TextView) this.f71685b0.findViewById(R.id.tv);
        this.f71685b0.findViewById(R.id.cancelBtn).setOnClickListener(new d());
        this.f71685b0.findViewById(R.id.btn).setOnClickListener(new e());
        try {
            this.f71684a0 = (PFSettings) new Gson().fromJson(X7.a.C("pf", "pfsettings.config", M()), PFSettings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f71684a0 == null) {
            this.f71684a0 = new PFSettings();
        }
        f fVar = new f(A(), this.f71688e0, this.f71687d0);
        this.f71681X = fVar;
        fVar.A(new g());
        int i10 = this.gridZoom;
        if (i10 > 0) {
            this.f71681X.z(i10);
        } else {
            this.gridZoom = this.f71681X.k();
        }
        this.f71681X.i(this.f71682Y);
        this.f71681X.o(this.serializedSelectedLeftFolder);
        this.f71681X.y(this.isGrid);
        this.f71683Z = com.itsmagic.engine.Core.Components.ProjectController.a.T();
        return linearLayout;
    }

    @Override
    public void G0() {
    }

    @Override
    public void J0() {
        this.serializedSelectedLeftFolder = this.f71681X.l();
        super.J0();
    }

    @Override
    public List<C12908b> N() {
        return new h();
    }

    @Override
    public boolean O0(n4.f panelIntent) {
        if (panelIntent instanceof n) {
            return false;
        }
        if (!(panelIntent instanceof k)) {
            return super.O0(panelIntent);
        }
        k kVar = (k) panelIntent;
        AbstractC13433d abstractC13433d = this.f71681X;
        if (abstractC13433d != null) {
            abstractC13433d.o(kVar.a());
        }
        S0();
        return false;
    }

    @Override
    public EditorPanel k() {
        return new FilesPanel();
    }

    @Override
    public void m1() {
        this.f71687d0.b(this.f71684a0);
        if (j.f126810a != null) {
            this.f71685b0.setVisibility(0);
            this.f71686c0.setText(Lang.l(Lang.T.COPY) + ": " + Tc.b.v(j.f126810a.getAbsolutePath()));
            return;
        }
        if (j.f126811b == null) {
            this.f71685b0.setVisibility(8);
            return;
        }
        this.f71685b0.setVisibility(0);
        this.f71686c0.setText(Lang.l(Lang.T.MOVE) + ": " + Tc.b.v(j.f126811b.getAbsolutePath()));
    }

    @Override
    public void n1() {
        AbstractC13433d abstractC13433d = this.f71681X;
        if (abstractC13433d != null) {
            abstractC13433d.K();
            this.isGrid = this.f71681X.q();
        }
    }

    @Override
    public void o1() {
        super.o1();
        if (this.f71681X != null) {
            String str = this.f71683Z;
            if (str == null || !str.equals(com.itsmagic.engine.Core.Components.ProjectController.a.T())) {
                this.f71681X.o("Files/");
                this.f71683Z = com.itsmagic.engine.Core.Components.ProjectController.a.T();
            }
        }
    }

    @Override
    public void z(o4.b engineUpdateData) {
    }

    public FilesPanel() {
        super(null, Lang.l(Lang.T.FILES), f71679f0);
        this.serializedSelectedLeftFolder = "Files/Models";
        this.isGrid = false;
        this.gridZoom = 0;
        this.f71687d0 = new b();
        this.f71688e0 = new c();
    }
}
