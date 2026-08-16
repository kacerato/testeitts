package com.itsmagic.engine.Activities.Editor.Extensions.PackageManager;

import G7.e;
import Ic.C2633l;
import Ic.C2634m;
import Z6.c;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.load.engine.GlideException;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.r;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;
import m7.C14189a;
import m7.C14190b;
import r4.C15147a;

public class i extends EditorPanel {

    public static final String f70300e0 = "PackageImportSelector";

    public final String f70301X;

    public final File f70302Y;

    public final k f70303Z;

    public F7.l f70304a0;

    public RecyclerView f70305b0;

    public final List<l> f70306c0;

    public final List<F7.i> f70307d0;

    public class a implements C15147a.f {
        @Override
        public void a(FloatingPanelArea floatingPanelArea) {
            floatingPanelArea.D1(false);
        }
    }

    public class b implements Predicate<r.b> {
        public b() {
        }

        @Override
        public boolean test(r.b zFile) {
            return zFile.getName().equals("README.md") || zFile.getName().equals("manifest.json") || zFile.getName().equals(".store");
        }
    }

    public class c extends F7.a {
        public c() {
        }

        @Override
        public List<F7.i> c() {
            return i.this.w1();
        }

        @Override
        public void d(F7.i element, boolean open) {
            if (element instanceof m) {
                ((m) element).f70332m.i().f70314a = open;
            }
        }

        @Override
        public void e(F7.i element) {
            if (((m) element).f70332m.i().f70314a) {
                i.this.f70304a0.x(element);
            } else {
                i.this.f70304a0.z(element);
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return i.this.C1(eElement);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View v10) {
            i.this.f70303Z.a(i.this.A1());
            i.this.R0();
        }
    }

    public class e implements View.OnClickListener {

        public class a implements c.i {
            public a() {
            }

            @Override
            public void a(c.g dialog) {
                i.this.f70303Z.onCancel();
                i.this.R0();
                dialog.dismiss();
            }

            @Override
            public void b(c.g dialog) {
                dialog.dismiss();
            }
        }

        public e() {
        }

        @Override
        public void onClick(View v10) {
            Z6.c.w1(v10, C15147a.e.Below, Lang.l(Lang.T.CLOSE), Lang.l(Lang.T.ARE_YOU_SURE_CANCEL_THE_IMPORT), new a());
        }
    }

    public static class f {

        public static final int[] f70313a;

        static {
            int[] iArr = new int[e.d.values().length];
            f70313a = iArr;
            try {
                iArr[e.d.Unselected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f70313a[e.d.PartiallySelected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f70313a[e.d.FullSelected.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface g {
        boolean a(String inZipPath);

        boolean b(l file);
    }

    public static class C1064i {

        public final List<j> f70316a;

        public final String f70317b;

        public final int f70318c;

        public C1064i(List<j> files, String commonPath) {
            this.f70316a = files;
            this.f70317b = commonPath;
            Iterator<j> it = files.iterator();
            int i10 = 0;
            while (it.hasNext()) {
                i10 += it.next().e();
            }
            this.f70318c = i10;
        }

        public String a() {
            return this.f70317b;
        }

        public List<j> b() {
            return this.f70316a;
        }

        public int c() {
            return this.f70318c;
        }

        public boolean d(String path) {
            if (path.startsWith("/")) {
                path = path.substring(1);
            }
            for (j jVar : this.f70316a) {
                if (jVar.c().equals(path) || e(jVar.f70322d, path)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean e(List<j> files, String path) {
            for (j jVar : files) {
                String c10 = jVar.c();
                if (c10.startsWith("/")) {
                    c10 = c10.substring(1);
                }
                if (c10.equals(path) || e(jVar.f70322d, path)) {
                    return true;
                }
            }
            return false;
        }
    }

    public interface k {
        void a(C1064i data);

        void onCancel();
    }

    public class m extends F7.i {

        public l f70332m;

        public class a implements e.c {

            public final i f70334a;

            public final l f70335b;

            public a(final i val$this$0, final l val$file) {
                this.f70334a = val$this$0;
                this.f70335b = val$file;
            }

            @Override
            public void a(e.d state) {
                h i10 = this.f70335b.i();
                int i11 = f.f70313a[state.ordinal()];
                if (i11 == 1) {
                    i10.f70315b = false;
                    this.f70335b.o(false);
                    i.this.I1();
                } else {
                    if (i11 != 3) {
                        return;
                    }
                    i10.f70315b = true;
                    this.f70335b.o(true);
                    i.this.I1();
                }
            }

            @Override
            public e.d getState() {
                return this.f70335b.h() == 0 ? this.f70335b.i().f70315b ? e.d.FullSelected : e.d.Unselected : this.f70335b.k() ? e.d.FullSelected : this.f70335b.l() ? e.d.PartiallySelected : e.d.Unselected;
            }
        }

        public m(l file) {
            super(file.j(), file.m() ? new C14190b() : new C14189a());
            this.f70332m = file;
            super.a(new G7.e(new a(i.this, file)));
        }

        @Override
        public String g() {
            return this.f70332m.getName();
        }
    }

    public i(String packageName, File zipFile, k listener) {
        super(null, "Import " + packageName);
        this.f70304a0 = null;
        this.f70306c0 = new SteppedArrayList();
        this.f70307d0 = new SteppedArrayList();
        this.f70301X = packageName;
        this.f70302Y = zipFile;
        this.f70303Z = listener;
    }

    public static i E1(String packageName, File zipFile, View anchor, C15147a.e anchorSide, k listener) {
        i iVar = new i(packageName, zipFile, listener);
        C15147a.i(anchor, iVar, anchorSide, 0.6f, 0.8f, new a());
        return iVar;
    }

    public static i F1(String packageName, File zipFile, k listener) {
        i iVar = new i(packageName, zipFile, listener);
        C15147a.n(iVar, 0.2f, 0.1f, 0.6f, 0.8f).D1(false);
        return iVar;
    }

    public void I1() {
        this.f70304a0.v();
    }

    public static String y1(String filePath) {
        try {
            return filePath.contains("/") ? filePath.substring(0, filePath.lastIndexOf("/")) : filePath;
        } catch (Exception e10) {
            e10.printStackTrace();
            return filePath;
        }
    }

    public static String z1(String filePath) {
        if (filePath == null || !filePath.contains("/")) {
            return filePath;
        }
        try {
            return filePath.substring(filePath.lastIndexOf("/") + 1);
        } catch (Exception unused) {
            return filePath;
        }
    }

    public C1064i A1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Mc.b bVar = new Mc.b();
        for (int i10 = 0; i10 < this.f70307d0.size(); i10++) {
            D1(((m) this.f70307d0.get(i10)).f70332m, bVar, steppedArrayList, null);
        }
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/";
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (j jVar : steppedArrayList) {
            if (jVar.f70320b) {
                jVar.g();
                if (jVar.f70322d.isEmpty()) {
                    steppedArrayList2.add(jVar);
                }
            }
        }
        steppedArrayList.removeAll(steppedArrayList2);
        steppedArrayList2.clear();
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        boolean z10 = true;
        while (z10) {
            for (j jVar2 : steppedArrayList) {
                if (jVar2.f70320b && (str.equals(jVar2.c()) || str.contains(jVar2.c()))) {
                    steppedArrayList2.add(jVar2);
                    if (!jVar2.f70322d.isEmpty()) {
                        steppedArrayList3.addAll(jVar2.f70322d);
                    }
                }
            }
            if (steppedArrayList2.isEmpty()) {
                z10 = false;
            } else {
                steppedArrayList.removeAll(steppedArrayList2);
                steppedArrayList2.clear();
                z10 = true;
            }
            steppedArrayList.addAll(steppedArrayList3);
            steppedArrayList3.clear();
        }
        return new C1064i(steppedArrayList, str);
    }

    public final void B1(l parent, List<F7.i> elements) {
        if (parent != null) {
            for (int i10 = 0; i10 < parent.h(); i10++) {
                l f10 = parent.f(i10);
                if (!x1(f10)) {
                    h i11 = f10.i();
                    m mVar = new m(f10);
                    mVar.r(f10.h() > 0);
                    mVar.f6684f.f6678c = i11.f70314a;
                    elements.add(mVar);
                }
            }
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.package_import_selector, (ViewGroup) null);
        this.f70305b0 = (RecyclerView) inflate.findViewById(R.id.recyclerView);
        List<r.b> h10 = r.h(this.f70302Y);
        if (h10 == null) {
            this.f70302Y.delete();
            this.f70303Z.onCancel();
        }
        h10.removeIf(new b());
        this.f70306c0.clear();
        l lVar = new l("", true, null);
        for (int i10 = 0; i10 < h10.size(); i10++) {
            G1(h10.get(i10), lVar);
        }
        for (int i11 = 0; i11 < lVar.h(); i11++) {
            l f10 = lVar.f(i11);
            f10.f70329j = null;
            this.f70306c0.add(f10);
        }
        this.f70304a0 = new F7.l(this.f70305b0, new c());
        ((Button) inflate.findViewById(R.id.done)).setOnClickListener(new d());
        ((Button) inflate.findViewById(R.id.cancel)).setOnClickListener(new e());
        return inflate;
    }

    public final List<F7.i> C1(F7.i element) {
        LinkedList linkedList = new LinkedList();
        if (element instanceof m) {
            B1(((m) element).f70332m, linkedList);
        }
        for (int i10 = 0; i10 < linkedList.size(); i10++) {
            linkedList.get(i10).q(element.e() + 1);
        }
        return linkedList;
    }

    public final void D1(l fileElement, List<l> outFiles, List<j> out, j parent) {
        int i10 = 0;
        if (!fileElement.i().f70315b) {
            if (fileElement.h() > 0) {
                j jVar = new j(fileElement);
                if (parent != null) {
                    parent.a(jVar);
                } else {
                    out.add(jVar);
                }
                while (i10 < fileElement.h()) {
                    D1(fileElement.f(i10), outFiles, out, jVar);
                    i10++;
                }
                return;
            }
            return;
        }
        j jVar2 = new j(fileElement);
        outFiles.add(fileElement);
        if (parent != null) {
            parent.a(jVar2);
        } else {
            out.add(jVar2);
        }
        if (fileElement.h() > 0) {
            while (i10 < fileElement.h()) {
                D1(fileElement.f(i10), outFiles, out, jVar2);
                i10++;
            }
        }
    }

    public final void G1(r.b zFile, l parent) {
        l lVar = zFile.j() ? new l(zFile.f70378b, true, parent) : new l(zFile.f70378b, parent);
        parent.e(lVar);
        for (int i10 = 0; i10 < zFile.h(); i10++) {
            G1(zFile.f(i10), lVar);
        }
    }

    public final void H1(m element) {
        this.f70304a0.t(element);
    }

    @Override
    public EditorPanel k() {
        i iVar = new i(this.f70301X, this.f70302Y, this.f70303Z);
        R0();
        return iVar;
    }

    public final List<F7.i> w1() {
        if (this.f70307d0.isEmpty()) {
            for (int i10 = 0; i10 < this.f70306c0.size(); i10++) {
                l lVar = this.f70306c0.get(i10);
                if (x1(lVar)) {
                    break;
                }
                h i11 = lVar.i();
                m mVar = new m(lVar);
                mVar.r(lVar.h() > 0);
                mVar.f6684f.f6678c = i11.f70314a;
                this.f70307d0.add(mVar);
            }
        }
        return this.f70307d0;
    }

    public final boolean x1(l file) {
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

    public static class h {

        public boolean f70314a;

        public boolean f70315b;

        public h() {
            this.f70314a = true;
            this.f70315b = true;
        }

        public h(a aVar) {
            this();
        }
    }

    public static class j {

        public final String f70319a;

        public final boolean f70320b;

        public final l f70321c;

        public final List<j> f70322d = new SteppedArrayList();

        public j(l file) {
            this.f70319a = file.getName();
            this.f70320b = file.m();
            this.f70321c = file;
        }

        public void a(j file) {
            this.f70322d.add(file);
        }

        public void b(String tab) {
            if (!this.f70320b) {
                System.out.println(tab + this.f70319a);
                return;
            }
            System.out.println(tab + this.f70319a + " ->");
            Iterator<j> it = this.f70322d.iterator();
            while (it.hasNext()) {
                it.next().b(tab + GlideException.a.f59088e);
            }
        }

        public String c() {
            return this.f70321c.j();
        }

        public String d() {
            return this.f70319a;
        }

        public int e() {
            Iterator<j> it = this.f70322d.iterator();
            int i10 = 1;
            while (it.hasNext()) {
                i10 += it.next().e();
            }
            return i10;
        }

        public boolean f() {
            return this.f70320b;
        }

        public void g() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (j jVar : this.f70322d) {
                if (jVar.f70320b) {
                    jVar.g();
                    if (jVar.f70322d.isEmpty()) {
                        steppedArrayList.add(jVar);
                    }
                }
            }
            this.f70322d.removeAll(steppedArrayList);
            steppedArrayList.clear();
        }

        public j(String name, boolean isDirectory, l file) {
            this.f70319a = name;
            this.f70320b = isDirectory;
            this.f70321c = file;
        }
    }

    public class l extends C2634m {

        public final String f70323b;

        public final String f70324c;

        public final boolean f70325d;

        public final List<l> f70326e;

        public final Set<l> f70327g;

        public final h f70328i;

        public l f70329j;

        public m f70330k;

        public l(String absolutePath, l parent) {
            this.f70326e = new SteppedArrayList();
            this.f70327g = new HashSet();
            this.f70328i = new h(null);
            this.f70323b = absolutePath;
            this.f70329j = parent;
            this.f70325d = false;
            String z12 = i.z1(absolutePath);
            this.f70324c = z12.startsWith("/") ? z12.substring(1) : z12;
        }

        public void e(l file) {
            if (this.f70327g.contains(file)) {
                return;
            }
            this.f70326e.add(file);
            this.f70327g.add(file);
        }

        public l f(int i10) {
            return this.f70326e.get(i10);
        }

        public String getName() {
            return this.f70324c;
        }

        public int h() {
            return this.f70326e.size();
        }

        public h i() {
            return this.f70328i;
        }

        public String j() {
            return this.f70323b;
        }

        public boolean k() {
            if (h() <= 0) {
                return false;
            }
            for (int i10 = 0; i10 < h(); i10++) {
                if (!f(i10).i().f70315b) {
                    return false;
                }
            }
            return true;
        }

        public boolean l() {
            for (int i10 = 0; i10 < h(); i10++) {
                l f10 = f(i10);
                if (f10.i().f70315b || f10.l()) {
                    return true;
                }
            }
            return false;
        }

        public boolean m() {
            return this.f70325d;
        }

        public void n() {
            l lVar = this.f70329j;
            if (lVar != null) {
                m mVar = lVar.f70330k;
                if (mVar != null) {
                    i.this.H1(mVar);
                }
                this.f70329j.n();
            }
        }

        public boolean o(boolean value) {
            for (int i10 = 0; i10 < h(); i10++) {
                l f10 = f(i10);
                f10.i().f70315b = value;
                f10.o(value);
            }
            return false;
        }

        public l(String absolutePath, boolean directory, l parent) {
            this.f70326e = new SteppedArrayList();
            this.f70327g = new HashSet();
            this.f70328i = new h(null);
            this.f70323b = absolutePath;
            this.f70325d = directory;
            this.f70329j = parent;
            String z12 = i.z1(absolutePath);
            this.f70324c = z12.startsWith("/") ? z12.substring(1) : z12;
        }
    }
}
