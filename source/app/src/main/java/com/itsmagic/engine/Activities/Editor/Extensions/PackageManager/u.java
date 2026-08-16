package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import G7.e;
import Ic.C2633l;
import Ic.C2634m;
import Z6.c;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Files.PFSettings;
import com.itsmagic.engine.Activities.Editor.Utils.C12740h;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.lang.constant.ConstantDescs;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import m7.C14189a;
import m7.C14190b;
import r4.C15147a;

public class u extends EditorPanel {

    public static final String f70457g0 = "PackageExportSelector";

    public final File f70458X;

    public final j f70459Y;

    public final String f70460Z;

    public final List<String> f70461a0;

    public F7.l f70462b0;

    public RecyclerView f70463c0;

    public List<k> f70464d0;

    public final Map<String, k> f70465e0;

    public final List<F7.i> f70466f0;

    public class a implements C15147a.f {
        @Override
        public void a(FloatingPanelArea floatingPanelArea) {
            floatingPanelArea.D1(false);
        }
    }

    public class b extends F7.a {
        public b() {
        }

        @Override
        public List<F7.i> c() {
            return u.this.B1();
        }

        @Override
        public void d(F7.i element, boolean open) {
            if (element instanceof l) {
                ((l) element).f70489m.i().f70472a = open;
            }
        }

        @Override
        public void e(F7.i element) {
            if (((l) element).f70489m.i().f70472a) {
                u.this.f70462b0.x(element);
            } else {
                u.this.f70462b0.z(element);
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return u.this.H1(eElement);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View v10) {
            h F12 = u.this.F1();
            if (F12.a().isEmpty()) {
                Z6.i.y1(Lang.l(Lang.T.STORE_GITHUB_FILE_SELECTOR_EMPTY_TITLE), Lang.l(Lang.T.STORE_GITHUB_FILE_SELECTOR_EMPTY_DESCRIPTION));
            } else {
                u.this.f70459Y.a(F12);
                u.this.R0();
            }
        }
    }

    public class d implements View.OnClickListener {

        public class a implements c.i {
            public a() {
            }

            @Override
            public void a(c.g dialog) {
                u.this.f70459Y.onCancel();
                u.this.R0();
                dialog.dismiss();
            }

            @Override
            public void b(c.g dialog) {
                dialog.dismiss();
            }
        }

        public d() {
        }

        @Override
        public void onClick(View v10) {
            Z6.c.w1(v10, C15147a.e.Below, Lang.l(Lang.T.CLOSE), Lang.l(Lang.T.ARE_YOU_SURE_CANCEL_THE_IMPORT), new a());
        }
    }

    public static class e {

        public static final int[] f70471a;

        static {
            int[] iArr = new int[e.d.values().length];
            f70471a = iArr;
            try {
                iArr[e.d.Unselected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70471a[e.d.PartiallySelected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70471a[e.d.FullSelected.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface f {
        boolean a(String inZipPath);

        boolean b(k file);
    }

    public static class h {

        public final List<i> f70475a;

        public h(List<i> files) {
            this.f70475a = files;
        }

        public List<i> a() {
            return this.f70475a;
        }
    }

    public interface j {
        void a(h data);

        void onCancel();
    }

    public class l extends F7.i {

        public k f70489m;

        public class a implements e.c {

            public final u f70491a;

            public final k f70492b;

            public a(final u val$this$0, final k val$file) {
                this.f70491a = val$this$0;
                this.f70492b = val$file;
            }

            @Override
            public void a(e.d state) {
                this.f70492b.i();
                int i10 = e.f70471a[state.ordinal()];
                if (i10 == 1) {
                    this.f70492b.p(false);
                    u.this.Q1();
                } else {
                    if (i10 != 3) {
                        return;
                    }
                    this.f70492b.p(true);
                    u.this.Q1();
                }
            }

            @Override
            public e.d getState() {
                return this.f70492b.h() == 0 ? this.f70492b.i().f70474c ? e.d.FullSelected : e.d.Unselected : this.f70492b.k() ? e.d.FullSelected : this.f70492b.l() ? e.d.PartiallySelected : e.d.Unselected;
            }
        }

        public l(k file) {
            super(file.j(), file.m() ? new C14190b() : new C14189a());
            this.f70489m = file;
            file.f70487k = this;
            super.a(new G7.e(new a(u.this, file)));
        }

        @Override
        public String g() {
            return this.f70489m.getName();
        }
    }

    public u(File outZipFile, j listener) {
        this(outZipFile, com.itsmagic.engine.Core.Components.ProjectController.a.R(), new SteppedArrayList(), listener);
    }

    public List<F7.i> B1() {
        if (this.f70466f0.isEmpty()) {
            for (int i10 = 0; i10 < this.f70464d0.size(); i10++) {
                k kVar = this.f70464d0.get(i10);
                if (!D1(kVar)) {
                    g i11 = kVar.i();
                    l lVar = new l(kVar);
                    lVar.r(kVar.h() > 0);
                    lVar.f6684f.f6678c = i11.f70472a;
                    this.f70466f0.add(lVar);
                }
            }
        }
        return this.f70466f0;
    }

    public static String E1(String filePath) {
        return (filePath == null || filePath.isEmpty()) ? "" : new File(filePath).getName();
    }

    public List<F7.i> H1(F7.i element) {
        LinkedList linkedList = new LinkedList();
        if (element instanceof l) {
            G1(((l) element).f70489m, linkedList);
        }
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            linkedList.get(i10).q(element.e() + 1);
        }
        return linkedList;
    }

    public static u M1(File outZipFile, View anchor, C15147a.e anchorSide, j listener) {
        return O1(outZipFile, com.itsmagic.engine.Core.Components.ProjectController.a.R(), new SteppedArrayList(), anchor, anchorSide, listener);
    }

    public static u N1(File outZipFile, j listener) {
        return P1(outZipFile, com.itsmagic.engine.Core.Components.ProjectController.a.R(), new SteppedArrayList(), listener);
    }

    public static u O1(File outZipFile, String projectRootPath, List<String> initialSelectedPaths, View anchor, C15147a.e anchorSide, j listener) {
        u uVar = new u(outZipFile, projectRootPath, initialSelectedPaths, listener);
        C15147a.i(anchor, uVar, anchorSide, 0.6f, 0.8f, new a());
        return uVar;
    }

    public static u P1(File outZipFile, String projectRootPath, List<String> initialSelectedPaths, j listener) {
        u uVar = new u(outZipFile, projectRootPath, initialSelectedPaths, listener);
        C15147a.n(uVar, 0.2f, 0.1f, 0.6f, 0.8f).D1(false);
        return uVar;
    }

    private void S1() {
        F7.l lVar = this.f70462b0;
        if (lVar != null) {
            lVar.v();
        }
    }

    public final void A1(k file, LinkedHashSet<String> out) {
        if (file == null) {
            return;
        }
        if (file.i().f70473b) {
            z1(file, out);
            return;
        }
        for (int i10 = 0; i10 < file.h(); i10++) {
            A1(file.f(i10), out);
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.package_export_selector, (ViewGroup) null);
        this.f70463c0 = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        Button button = (Button) inflate.findViewById(R.id.done);
        Button button2 = (Button) inflate.findViewById(R.id.cancel);
        textView.setText(Lang.l(Lang.T.STORE_GITHUB_FILE_SELECTOR_TITLE));
        button.setText(Lang.l(Lang.T.CONFIRM));
        button2.setText(Lang.l(Lang.T.CANCEL));
        this.f70464d0 = I1();
        this.f70466f0.clear();
        this.f70465e0.clear();
        Iterator<k> it = this.f70464d0.iterator();
        while (it.hasNext()) {
            C1(it.next());
        }
        x1();
        this.f70462b0 = new F7.l(this.f70463c0, new b());
        button.setOnClickListener(new c());
        button2.setOnClickListener(new d());
        return inflate;
    }

    public final void C1(k file) {
        this.f70465e0.put(file.j(), file);
        for (int i10 = 0; i10 < file.h(); i10++) {
            C1(file.f(i10));
        }
    }

    public final boolean D1(k file) {
        Iterator<String> it = w5.m.b().iterator();
        while (it.hasNext()) {
            if (C2633l.b(file.j(), it.next())) {
                return true;
            }
        }
        Iterator<String> it2 = w5.m.a().iterator();
        while (it2.hasNext()) {
            if (C2633l.b(file.j(), it2.next())) {
                return true;
            }
        }
        return false;
    }

    public h F1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Mc.b bVar = new Mc.b();
        for (int i10 = 0; i10 < this.f70466f0.size(); i10++) {
            K1(((l) this.f70466f0.get(i10)).f70489m, bVar, steppedArrayList, null);
        }
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (i iVar : steppedArrayList) {
            if (iVar.f70477b) {
                iVar.h();
                if (iVar.f70479d.isEmpty()) {
                    steppedArrayList2.add(iVar);
                }
            }
        }
        steppedArrayList.removeAll(steppedArrayList2);
        steppedArrayList2.clear();
        return new h(steppedArrayList);
    }

    public final void G1(k parent, List<F7.i> elements) {
        if (parent != null) {
            for (int i10 = 0; i10 < parent.h(); i10++) {
                k f10 = parent.f(i10);
                if (!D1(f10)) {
                    g i11 = f10.i();
                    l lVar = new l(f10);
                    lVar.r(f10.h() > 0);
                    lVar.f6684f.f6678c = i11.f70472a;
                    elements.add(lVar);
                }
            }
        }
    }

    public final List<k> I1() {
        PFSettings pFSettings;
        try {
            pFSettings = (PFSettings) new Gson().fromJson(X7.a.C("pf", "pfsettings.config", M()), PFSettings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
            pFSettings = null;
        }
        if (pFSettings == null) {
            pFSettings = new PFSettings();
        }
        File file = new File(this.f70460Z);
        k kVar = new k(file.getAbsolutePath(), null);
        J1(file, kVar, pFSettings);
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < kVar.h(); i10++) {
            k f10 = kVar.f(i10);
            steppedArrayList.add(f10);
            f10.i().f70472a = true;
        }
        return steppedArrayList;
    }

    public final void J1(File folder, k parent, PFSettings pfSettings) {
        File[] listFiles = folder.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (com.itsmagic.engine.Core.Components.ProjectController.a.n0(this.f70460Z, file) && !T1(folder, file) && com.itsmagic.engine.Activities.Editor.Panels.Files.a.b(file, pfSettings)) {
                    k kVar = new k(file.getAbsolutePath(), file.isDirectory(), parent);
                    parent.e(kVar);
                    if (file.isDirectory()) {
                        J1(file, kVar, pfSettings);
                    }
                }
            }
        }
    }

    public final void K1(k zfile, List<k> outFiles, List<i> out, i parent) {
        int i10 = 0;
        if (!zfile.i().f70474c) {
            if (zfile.h() > 0) {
                i iVar = new i(zfile);
                if (parent != null) {
                    parent.a(iVar);
                } else {
                    out.add(iVar);
                }
                while (i10 < zfile.h()) {
                    K1(zfile.f(i10), outFiles, out, iVar);
                    i10++;
                }
                return;
            }
            return;
        }
        i iVar2 = new i(zfile);
        outFiles.add(zfile);
        if (parent != null) {
            parent.a(iVar2);
        } else {
            out.add(iVar2);
        }
        if (zfile.h() > 0) {
            while (i10 < zfile.h()) {
                K1(zfile.f(i10), outFiles, out, iVar2);
                i10++;
            }
        }
    }

    public final String L1(String path) {
        return (path == null || path.trim().isEmpty()) ? "" : new File(path).getAbsolutePath();
    }

    public final void Q1() {
        for (int i10 = 0; i10 < this.f70464d0.size(); i10++) {
            y1(this.f70464d0.get(i10));
        }
        LinkedHashSet<String> linkedHashSet = new LinkedHashSet<>();
        for (int i11 = 0; i11 < this.f70464d0.size(); i11++) {
            A1(this.f70464d0.get(i11), linkedHashSet);
        }
        LinkedHashSet<String> linkedHashSet2 = new LinkedHashSet<>(linkedHashSet);
        linkedHashSet2.addAll(C12740h.l(M(), this.f70460Z, new SteppedArrayList(linkedHashSet)));
        for (int i12 = 0; i12 < this.f70464d0.size(); i12++) {
            w1(this.f70464d0.get(i12), linkedHashSet2);
        }
        S1();
    }

    public final void R1(l element) {
        this.f70462b0.t(element);
    }

    public final boolean T1(File parentFolder, File child) {
        if (parentFolder == null || child == null || !child.isDirectory() || !new File(this.f70460Z).getAbsolutePath().equals(parentFolder.getAbsolutePath())) {
            return false;
        }
        String name = child.getName();
        if ("JAVARuntime".equals(name)) {
            return true;
        }
        return name.startsWith(ConstantDescs.DEFAULT_NAME);
    }

    @Override
    public EditorPanel k() {
        u uVar = new u(this.f70458X, this.f70460Z, this.f70461a0, this.f70459Y);
        R0();
        return uVar;
    }

    public final void w1(k file, LinkedHashSet<String> selectedFiles) {
        if (file == null) {
            return;
        }
        if (!file.m()) {
            file.i().f70474c = selectedFiles.contains(L1(file.j()));
            return;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < file.h(); i10++) {
            k f10 = file.f(i10);
            w1(f10, selectedFiles);
            if (f10.i().f70474c || f10.l()) {
                z10 = true;
            }
        }
        file.i().f70474c = z10;
    }

    public final void x1() {
        if (this.f70461a0.isEmpty()) {
            Q1();
            return;
        }
        for (int i10 = 0; i10 < this.f70461a0.size(); i10++) {
            k kVar = this.f70465e0.get(L1(this.f70461a0.get(i10)));
            if (kVar != null) {
                kVar.p(true);
            }
        }
        Q1();
    }

    public final void y1(k file) {
        if (file == null) {
            return;
        }
        file.i().f70474c = false;
        for (int i10 = 0; i10 < file.h(); i10++) {
            y1(file.f(i10));
        }
    }

    public final void z1(k file, LinkedHashSet<String> out) {
        if (file == null) {
            return;
        }
        if (!file.m()) {
            out.add(L1(file.j()));
            return;
        }
        for (int i10 = 0; i10 < file.h(); i10++) {
            z1(file.f(i10), out);
        }
    }

    public u(File outZipFile, String projectRootPath, List<String> initialSelectedPaths, j listener) {
        super(null, Lang.l(Lang.T.STORE_GITHUB_FILE_SELECTOR_TITLE));
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        this.f70461a0 = steppedArrayList;
        this.f70462b0 = null;
        this.f70465e0 = new HashMap();
        this.f70466f0 = new SteppedArrayList();
        this.f70458X = outZipFile;
        this.f70460Z = projectRootPath;
        this.f70459Y = listener;
        if (initialSelectedPaths != null) {
            steppedArrayList.addAll(initialSelectedPaths);
        }
    }

    public static class g {

        public boolean f70472a;

        public boolean f70473b;

        public boolean f70474c;

        public g() {
            this.f70472a = false;
            this.f70473b = false;
            this.f70474c = false;
        }

        public g(a aVar) {
            this();
        }
    }

    public static class i {

        public final String f70476a;

        public final boolean f70477b;

        public final k f70478c;

        public final List<i> f70479d = new SteppedArrayList();

        public i(k file) {
            this.f70476a = file.getName();
            this.f70477b = file.m();
            this.f70478c = file;
        }

        public void a(i file) {
            this.f70479d.add(file);
        }

        public i b(int i10) {
            return this.f70479d.get(i10);
        }

        public int c() {
            return this.f70479d.size();
        }

        public void d(String tab) {
            if (!this.f70477b) {
                System.out.println(tab + this.f70476a);
                return;
            }
            System.out.println(tab + this.f70476a + " ->");
            Iterator<i> it = this.f70479d.iterator();
            while (it.hasNext()) {
                it.next().d(tab + GlideException.a.f59088e);
            }
        }

        public String e() {
            return this.f70478c.j();
        }

        public String f() {
            return this.f70476a;
        }

        public boolean g() {
            return this.f70477b;
        }

        public void h() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (i iVar : this.f70479d) {
                if (iVar.f70477b) {
                    iVar.h();
                    if (iVar.f70479d.isEmpty()) {
                        steppedArrayList.add(iVar);
                    }
                }
            }
            this.f70479d.removeAll(steppedArrayList);
            steppedArrayList.clear();
        }

        public i(String name, boolean isDirectory, k file) {
            this.f70476a = name;
            this.f70477b = isDirectory;
            this.f70478c = file;
        }
    }

    public class k extends C2634m {

        public final String f70480b;

        public final String f70481c;

        public final boolean f70482d;

        public final List<k> f70483e;

        public final Set<k> f70484g;

        public final g f70485i;

        public final k f70486j;

        public l f70487k;

        public k(String absolutePath, k parent) {
            this.f70483e = new SteppedArrayList();
            this.f70484g = new HashSet();
            this.f70485i = new g(null);
            this.f70480b = absolutePath;
            this.f70486j = parent;
            this.f70482d = false;
            String E12 = u.E1(absolutePath);
            this.f70481c = E12.startsWith("/") ? E12.substring(1) : E12;
        }

        public void e(k file) {
            if (this.f70484g.contains(file)) {
                return;
            }
            this.f70483e.add(file);
            this.f70484g.add(file);
        }

        public k f(int i10) {
            return this.f70483e.get(i10);
        }

        public String getName() {
            return this.f70481c;
        }

        public int h() {
            return this.f70483e.size();
        }

        public g i() {
            return this.f70485i;
        }

        public String j() {
            return this.f70480b;
        }

        public boolean k() {
            if (h() <= 0) {
                return false;
            }
            for (int i10 = 0; i10 < h(); i10++) {
                if (!f(i10).i().f70474c) {
                    return false;
                }
            }
            return true;
        }

        public boolean l() {
            for (int i10 = 0; i10 < h(); i10++) {
                k f10 = f(i10);
                if (f10.i().f70474c || f10.l()) {
                    return true;
                }
            }
            return false;
        }

        public boolean m() {
            return this.f70482d;
        }

        public void n() {
            k kVar = this.f70486j;
            if (kVar != null) {
                l lVar = kVar.f70487k;
                if (lVar != null) {
                    u.this.R1(lVar);
                }
                this.f70486j.n();
            }
        }

        public boolean o(boolean value) {
            for (int i10 = 0; i10 < h(); i10++) {
                k f10 = f(i10);
                f10.i().f70474c = value;
                f10.o(value);
            }
            return false;
        }

        public void p(boolean value) {
            this.f70485i.f70473b = value;
            for (int i10 = 0; i10 < h(); i10++) {
                f(i10).p(value);
            }
        }

        public k(String absolutePath, boolean directory, k parent) {
            this.f70483e = new SteppedArrayList();
            this.f70484g = new HashSet();
            this.f70485i = new g(null);
            this.f70480b = absolutePath;
            this.f70482d = directory;
            this.f70486j = parent;
            String E12 = u.E1(absolutePath);
            this.f70481c = E12.startsWith("/") ? E12.substring(1) : E12;
        }
    }
}
