package u5;

import G7.e;
import Ic.C2633l;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.bumptech.glide.load.engine.GlideException;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import m7.C14189a;
import m7.C14190b;
import qb.C15052a;
import r4.C15147a;
import w3.C15908b;
import y8.C16152a;

public class b extends EditorPanel {

    public static final String f118384i0 = "FileImporter";

    public View f118385X;

    public View f118386Y;

    public LinearLayout f118387Z;

    public View f118388a0;

    public View f118389b0;

    public F7.l f118390c0;

    public F7.l f118391d0;

    public final s f118392e0;

    public final List<F7.i> f118393f0;

    public final String f118394g0;

    public final String f118395h0;

    public class a extends AbstractViewOnClickListenerC12733a {

        public class C2024a implements C15052a.InterfaceC1967a {
            public C2024a() {
            }

            @Override
            public void a() {
                b.this.D1();
            }

            @Override
            public void b() {
                b.this.B1();
            }
        }

        public a() {
        }

        @Override
        public void click(View v10) {
            C15052a.d(new C2024a());
        }
    }

    public class C2025b extends j7.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public C2025b(String name, String path, j7.d folder) {
            super(name, path, folder);
            this.f6688j = new a();
        }

        @Override
        public int w() {
            return R.color.colorAccent;
        }

        @Override
        public int y() {
            return R.color.colorAccent;
        }
    }

    public class c extends j7.f {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public c(String name, String path) {
            super(name, path);
            this.f6688j = new a();
        }

        @Override
        public int w() {
            return R.color.colorAccent;
        }

        @Override
        public int y() {
            return R.color.colorAccent;
        }
    }

    public class d extends j7.f {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public d(String name, String path) {
            super(name, path);
            this.f6688j = new a();
        }

        @Override
        public int w() {
            return R.color.colorAccent;
        }

        @Override
        public int y() {
            return R.color.colorAccent;
        }
    }

    public class e extends j7.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public e(String name, String path, j7.d folder) {
            super(name, path, folder);
            this.f6688j = new a();
        }

        @Override
        public int w() {
            return R.color.colorAccent;
        }

        @Override
        public int y() {
            return R.color.colorAccent;
        }
    }

    public class f extends C14189a {

        public final r f118406a;

        public f(final r val$file) {
            this.f118406a = val$file;
        }

        @Override
        public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
            C2633l.i(imageView, this.f118406a.c(), context);
        }
    }

    public static class g {

        public static final int[] f118408a;

        static {
            int[] iArr = new int[e.d.values().length];
            f118408a = iArr;
            try {
                iArr[e.d.Unselected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f118408a[e.d.PartiallySelected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f118408a[e.d.FullSelected.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class h extends F7.a {
        public h() {
        }

        @Override
        public List<F7.i> c() {
            return b.this.F1();
        }

        @Override
        public void e(F7.i element) {
            if (((p) element).f6684f.f6678c) {
                b.this.f118390c0.x(element);
            } else {
                b.this.f118390c0.z(element);
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return b.this.P1(eElement);
        }
    }

    public class i extends F7.a {
        public i() {
        }

        @Override
        public List<F7.i> c() {
            return b.this.L1();
        }

        @Override
        public void e(F7.i element) {
            if (element.f6684f.f6678c) {
                b.this.f118391d0.x(element);
            } else {
                b.this.f118391d0.z(element);
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return b.this.R1(eElement);
        }
    }

    public class j extends AbstractViewOnClickListenerC12733a {
        public j() {
        }

        @Override
        public void click(View v10) {
            b.this.G1();
            b.this.f118392e0.a(null);
            b.this.R0();
        }
    }

    public class k extends AbstractViewOnClickListenerC12733a {

        public class a implements SweetAlertDialog.OnSweetClickListener {

            public final SweetAlertDialog f118413a;

            public a(final SweetAlertDialog val$dialog) {
                this.f118413a = val$dialog;
            }

            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                b.this.f118392e0.onCancel();
                b.this.R0();
                this.f118413a.dismissWithAnimation();
            }
        }

        public class C2026b implements SweetAlertDialog.OnSweetClickListener {

            public final SweetAlertDialog f118415a;

            public C2026b(final SweetAlertDialog val$dialog) {
                this.f118415a = val$dialog;
            }

            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                this.f118415a.dismissWithAnimation();
            }
        }

        public k() {
        }

        @Override
        public void click(View v10) {
            SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(b.this.M(), 3);
            sweetAlertDialog.setTitle("Attention");
            sweetAlertDialog.setContentText("Are you sure you want to cancel the import?");
            sweetAlertDialog.setConfirmButton("Yes", new a(sweetAlertDialog));
            sweetAlertDialog.setCancelButton("No", new C2026b(sweetAlertDialog));
            sweetAlertDialog.show();
        }
    }

    public class l implements Yc.d {
        public l() {
        }

        @Override
        public boolean a(File file) {
            return !C2633l.b(file.getName(), ".meta");
        }
    }

    public class m implements Yc.d {
        public m() {
        }

        @Override
        public boolean a(File file) {
            return !C2633l.b(file.getName(), ".meta");
        }
    }

    public class n extends j7.f {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public n(String name, String path) {
            super(name, path);
            this.f6688j = new a();
        }

        @Override
        public int w() {
            return R.color.colorAccent;
        }

        @Override
        public int y() {
            return R.color.colorAccent;
        }
    }

    public class o extends j7.f {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public o(String name, String path) {
            super(name, path);
            this.f6688j = new a();
        }

        @Override
        public int w() {
            return R.color.colorAccent;
        }

        @Override
        public int y() {
            return R.color.colorAccent;
        }
    }

    public class p extends F7.i {

        public File f118423m;

        public boolean f118424n;

        public final List<F7.i> f118425o;

        public p f118426p;

        public class a implements e.c {

            public final b f118428a;

            public a(final b val$this$0) {
                this.f118428a = val$this$0;
            }

            @Override
            public void a(e.d state) {
                int i10 = g.f118408a[state.ordinal()];
                if (i10 == 1) {
                    p pVar = p.this;
                    pVar.f118424n = false;
                    pVar.x(false);
                    b.this.W1();
                    return;
                }
                if (i10 != 3) {
                    return;
                }
                p pVar2 = p.this;
                pVar2.f118424n = true;
                pVar2.x(true);
                b.this.W1();
            }

            @Override
            public e.d getState() {
                return p.this.f118425o.isEmpty() ? p.this.f118424n ? e.d.FullSelected : e.d.Unselected : p.this.u() ? e.d.FullSelected : p.this.v() ? e.d.PartiallySelected : e.d.Unselected;
            }
        }

        public p(File file) {
            super(file.getPath(), file.isDirectory() ? new C14190b() : new C14189a());
            this.f118424n = false;
            this.f118425o = new SteppedArrayList();
            this.f118423m = file;
            super.a(new G7.e(new a(b.this)));
        }

        @Override
        public String g() {
            return this.f118423m.getName();
        }

        public boolean u() {
            if (this.f118425o.isEmpty()) {
                return false;
            }
            Iterator<F7.i> it = this.f118425o.iterator();
            while (it.hasNext()) {
                if (!((p) it.next()).f118424n) {
                    return false;
                }
            }
            return true;
        }

        public boolean v() {
            Iterator<F7.i> it = this.f118425o.iterator();
            while (it.hasNext()) {
                p pVar = (p) it.next();
                if (pVar.f118424n || pVar.v()) {
                    return true;
                }
            }
            return false;
        }

        public void w() {
            p pVar = this.f118426p;
            if (pVar != null) {
                b.this.V1(pVar);
                this.f118426p.w();
            }
        }

        public boolean x(boolean value) {
            Iterator<F7.i> it = this.f118425o.iterator();
            while (it.hasNext()) {
                p pVar = (p) it.next();
                pVar.f118424n = value;
                pVar.x(value);
            }
            return false;
        }
    }

    public static class q {

        public final List<r> f118430a;

        public final String f118431b;

        public q(List<r> files, String commonPath) {
            this.f118430a = files;
            this.f118431b = commonPath;
        }
    }

    public interface s {
        void a(List<File> files);

        void onCancel();
    }

    public b(s listener, String inProjectDestinationFolder) {
        super(null, Lang.l(Lang.T.IMPORT));
        this.f118390c0 = null;
        this.f118391d0 = null;
        this.f118393f0 = new SteppedArrayList();
        this.f118392e0 = listener;
        inProjectDestinationFolder = inProjectDestinationFolder.startsWith("/") ? inProjectDestinationFolder.substring(1) : inProjectDestinationFolder;
        this.f118394g0 = inProjectDestinationFolder;
        this.f118395h0 = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + inProjectDestinationFolder;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public List<F7.i> F1() {
        File[] listFiles;
        if (this.f118393f0.isEmpty() && (listFiles = new File(W7.b.f27306f.f2458a.h()).listFiles()) != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    steppedArrayList.add(file);
                } else {
                    steppedArrayList2.add(file);
                }
            }
            Collections.sort(steppedArrayList, Comparator.comparing(new C15908b()));
            Collections.sort(steppedArrayList2, Comparator.comparing(new C15908b()));
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            steppedArrayList3.addAll(steppedArrayList);
            steppedArrayList3.addAll(steppedArrayList2);
            for (int i10 = 0; i10 < steppedArrayList3.size(); i10++) {
                File file2 = (File) steppedArrayList3.get(i10);
                if (I1(file2)) {
                    p pVar = new p(file2);
                    pVar.r(file2.listFiles() != null && file2.listFiles().length > 0);
                    this.f118393f0.add(pVar);
                }
            }
        }
        return this.f118393f0;
    }

    public List<F7.i> P1(F7.i element) {
        p pVar = (p) element;
        File file = pVar.f118423m;
        List<F7.i> list = pVar.f118425o;
        if (list.isEmpty()) {
            O1(file, list, pVar);
            pVar.r(!list.isEmpty());
            for (int i10 = 0; i10 < list.size(); i10++) {
                list.get(i10).q(element.e() + 1);
            }
        }
        return list;
    }

    public static b U1(View anchor, C15147a.e anchorSide, String inProjectDestinationFolder, s listener) {
        b bVar = new b(listener, inProjectDestinationFolder);
        C15147a.g(anchor, bVar, anchorSide, 0.8f, 0.8f);
        return bVar;
    }

    public void W1() {
        this.f118390c0.v();
        Y1();
    }

    private void Y1() {
        K1();
        this.f118391d0.v();
    }

    public final void B1() {
        E1();
        this.f118388a0.setVisibility(0);
        ((TextView) this.f118385X.findViewById(R.id.errorText)).setText(Lang.l(Lang.T.WRITE_PERMISSION_FAILED));
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.file_importer, (ViewGroup) null);
        this.f118385X = inflate;
        this.f118386Y = inflate.findViewById(R.id.inflateRoot);
        this.f118388a0 = inflate.findViewById(R.id.errorViews);
        this.f118389b0 = inflate.findViewById(R.id.requestViews);
        if (C15052a.a()) {
            D1();
        } else {
            C1();
        }
        return inflate;
    }

    public final void C1() {
        E1();
        this.f118389b0.setVisibility(0);
        ((TextView) this.f118389b0.findViewById(R.id.f131513t1)).setText(Lang.l(Lang.T.READ_PERMISSION_IS_REQUIRED));
        Button button = (Button) this.f118389b0.findViewById(R.id.f131503b1);
        button.setText(Lang.l(Lang.T.GIVE_PERMISSION));
        button.setOnClickListener(new a());
    }

    public final void D1() {
        this.f118386Y.setVisibility(0);
        View view = this.f118386Y;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recyclerView);
        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(R.id.previewRecyclerView);
        ((TextView) view.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.SELECT_FILES));
        ((TextView) view.findViewById(R.id.previewTittle)).setText(Lang.l(Lang.T.PREVIEW_IN_PROJECT));
        this.f118390c0 = new F7.l(recyclerView, new h());
        this.f118391d0 = new F7.l(recyclerView2, new i());
        Button button = (Button) view.findViewById(R.id.done);
        Lang.k(button, Lang.T.IMPORT);
        button.setOnClickListener(new j());
        Button button2 = (Button) view.findViewById(R.id.cancel);
        Lang.k(button2, Lang.T.CANCEL);
        button2.setOnClickListener(new k());
    }

    public final void E1() {
        this.f118388a0.setVisibility(8);
        this.f118389b0.setVisibility(8);
        this.f118386Y.setVisibility(8);
    }

    public final void G1() {
        q K12 = K1();
        H1(K12.f118430a, this.f118395h0, K12);
    }

    public final void H1(List<r> files, String destination, q data) {
        for (r rVar : files) {
            if (rVar.e()) {
                H1(rVar.f118435d, destination, data);
            } else {
                String str = destination + rVar.c().replace(data.f118431b, "");
                if (rVar.e()) {
                    str = str + "/";
                }
                C16152a.b(rVar.f118434c, new File(str));
            }
        }
    }

    public final boolean I1(File file) {
        System.out.println("Filter " + file.getAbsolutePath());
        return (file.isDirectory() && file.getName().startsWith(".")) ? false : true;
    }

    public final boolean J1(List<F7.i> elements, Yc.d listFilter, q importData, String folderInProject, List<r> files) {
        for (r rVar : files) {
            String str = this.f118394g0 + rVar.c().replace(importData.f118431b, "");
            if (!str.endsWith("/")) {
                str = str + "/";
            }
            if (folderInProject.equals(str)) {
                if (rVar.f118435d.isEmpty()) {
                    File[] listFiles = rVar.f118434c.listFiles();
                    if (listFiles != null) {
                        for (File file : listFiles) {
                            if (listFilter.a(file)) {
                                if (file.isDirectory()) {
                                    F7.i nVar = C2633l.b(file.getName(), ".meta") ? new n(Tc.b.w(file.getName(), true), file.getAbsolutePath()) : new o(file.getName(), file.getAbsolutePath());
                                    File[] listFiles2 = file.listFiles();
                                    if (listFiles2 == null || listFiles2.length <= 0) {
                                        nVar.r(false);
                                    } else {
                                        nVar.r(false);
                                        int i10 = 0;
                                        while (true) {
                                            if (i10 >= listFiles2.length) {
                                                break;
                                            }
                                            if (listFilter.a(listFiles2[i10])) {
                                                nVar.r(true);
                                                break;
                                            }
                                            i10++;
                                        }
                                    }
                                    elements.add(nVar);
                                } else {
                                    C2025b c2025b = new C2025b(file.getName(), file.getAbsolutePath(), null);
                                    File file2 = new File(Tc.b.O(file.getAbsolutePath()) + ".meta");
                                    if (file2.exists()) {
                                        File[] listFiles3 = file2.listFiles();
                                        if (listFiles3 == null || listFiles3.length <= 0) {
                                            c2025b.r(false);
                                        } else {
                                            c2025b.r(false);
                                            int i11 = 0;
                                            while (true) {
                                                if (i11 >= listFiles3.length) {
                                                    break;
                                                }
                                                if (listFilter.a(listFiles3[i11])) {
                                                    c2025b.r(true);
                                                    break;
                                                }
                                                i11++;
                                            }
                                        }
                                    } else {
                                        c2025b.r(false);
                                    }
                                    elements.add(c2025b);
                                }
                            }
                        }
                    }
                } else {
                    Iterator<r> it = rVar.f118435d.iterator();
                    while (it.hasNext()) {
                        X1(elements, listFilter, folderInProject, importData, it.next());
                    }
                }
                return true;
            }
            if (J1(elements, listFilter, importData, folderInProject, rVar.f118435d)) {
                return true;
            }
        }
        return false;
    }

    public q K1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Mc.b bVar = new Mc.b();
        for (int i10 = 0; i10 < this.f118393f0.size(); i10++) {
            T1((p) this.f118393f0.get(i10), bVar, steppedArrayList, null);
        }
        String h10 = Tc.b.h(bVar);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (r rVar : steppedArrayList) {
            if (rVar.f118433b && rVar.f118435d.isEmpty()) {
                steppedArrayList2.add(rVar);
            } else {
                rVar.f();
            }
        }
        steppedArrayList.removeAll(steppedArrayList2);
        steppedArrayList2.clear();
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        boolean z10 = true;
        while (z10) {
            for (r rVar2 : steppedArrayList) {
                if (rVar2.f118433b && (h10.equals(rVar2.f118434c.getAbsolutePath()) || h10.contains(rVar2.f118434c.getAbsolutePath()))) {
                    steppedArrayList2.add(rVar2);
                    if (!rVar2.f118435d.isEmpty()) {
                        steppedArrayList3.addAll(rVar2.f118435d);
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
        return new q(steppedArrayList, h10);
    }

    public final List<F7.i> L1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (!com.itsmagic.engine.Core.Components.ProjectController.a.T().isEmpty()) {
            Q1(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()), steppedArrayList, new l());
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            steppedArrayList.get(i10).f6684f.f6678c = true;
        }
        return steppedArrayList;
    }

    public final boolean M1(File file) {
        String[] split = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "").split("/");
        String[] split2 = this.f118394g0.split("/");
        for (int i10 = 0; i10 < split2.length; i10++) {
            String str = split2[i10];
            if (split.length <= i10) {
                return true;
            }
            if (!str.equals(split[i10])) {
                return false;
            }
        }
        return true;
    }

    public final boolean N1(File file) {
        String[] split = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "").split("/");
        String[] split2 = this.f118394g0.split("/");
        if (split.length > split2.length) {
            return false;
        }
        for (int i10 = 0; i10 < split2.length; i10++) {
            String str = split2[i10];
            if (split.length <= i10) {
                return true;
            }
            if (!str.equals(split[i10])) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void O1(File parent, List<F7.i> elements, p parentElement) {
        File[] listFiles;
        if (parent == null || (listFiles = parent.listFiles()) == null) {
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (File file : listFiles) {
            if (file.isDirectory()) {
                steppedArrayList.add(file);
            } else {
                steppedArrayList2.add(file);
            }
        }
        Collections.sort(steppedArrayList, Comparator.comparing(new C15908b()));
        Collections.sort(steppedArrayList2, Comparator.comparing(new C15908b()));
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        steppedArrayList3.addAll(steppedArrayList);
        steppedArrayList3.addAll(steppedArrayList2);
        for (int i10 = 0; i10 < steppedArrayList3.size(); i10++) {
            File file2 = (File) steppedArrayList3.get(i10);
            if (I1(file2)) {
                p pVar = new p(file2);
                pVar.f118426p = parentElement;
                pVar.f118424n = parentElement.f118424n;
                pVar.r(file2.listFiles() != null && file2.listFiles().length > 0);
                elements.add(pVar);
            }
        }
    }

    public final void Q1(String path, List<F7.i> elements, Yc.d listFilter) {
        File file = new File(Tc.b.o(path));
        if (!file.isDirectory()) {
            elements.clear();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2 != null && listFilter.a(file2) && M1(file2)) {
                    if (file2.isDirectory()) {
                        j7.f fVar = C2633l.b(file2.getName(), ".meta") ? new j7.f(Tc.b.w(file2.getName(), true), file2.getAbsolutePath()) : new j7.f(file2.getName(), file2.getAbsolutePath());
                        File[] listFiles2 = file2.listFiles();
                        if (listFiles2 == null || listFiles2.length <= 0) {
                            fVar.r(false);
                        } else {
                            fVar.r(false);
                            int i10 = 0;
                            while (true) {
                                if (i10 >= listFiles2.length) {
                                    break;
                                }
                                if (listFilter.a(listFiles2[i10])) {
                                    fVar.r(true);
                                    break;
                                }
                                i10++;
                            }
                        }
                        elements.add(fVar);
                    } else {
                        j7.e eVar = new j7.e(file2.getName(), file2.getAbsolutePath(), null);
                        File file3 = new File(Tc.b.O(file2.getAbsolutePath()) + ".meta");
                        if (file3.exists()) {
                            File[] listFiles3 = file3.listFiles();
                            if (listFiles3 == null || listFiles3.length <= 0) {
                                eVar.r(false);
                            } else {
                                eVar.r(false);
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= listFiles3.length) {
                                        break;
                                    }
                                    if (listFilter.a(listFiles3[i11])) {
                                        eVar.r(true);
                                        break;
                                    }
                                    i11++;
                                }
                            }
                        } else {
                            eVar.r(false);
                        }
                        elements.add(eVar);
                    }
                }
            }
        }
        String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
        if (!replace.endsWith("/")) {
            replace = replace + "/";
        }
        if (replace.equals(this.f118394g0)) {
            q K12 = K1();
            Iterator<r> it = K12.f118430a.iterator();
            while (it.hasNext()) {
                X1(elements, listFilter, replace, K12, it.next());
            }
            return;
        }
        if (N1(file)) {
            return;
        }
        q K13 = K1();
        String str = this.f118394g0 + file.getAbsolutePath().replace(K13.f118431b, "");
        if (!str.endsWith("/")) {
            str = str + "/";
        }
        J1(elements, listFilter, K13, str, K13.f118430a);
    }

    public final List<F7.i> R1(F7.i folder) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Q1(folder.f6679a, steppedArrayList, new m());
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            F7.i iVar = steppedArrayList.get(i10);
            if (N1(new File(iVar.f6679a))) {
                iVar.f6684f.f6678c = true;
            } else {
                iVar.f6684f.f6678c = false;
            }
            iVar.q(folder.e() + 1);
        }
        return steppedArrayList;
    }

    public final void S1(File file, List<File> outFiles, List<r> out, r parent) {
        r rVar = new r(file);
        outFiles.add(file);
        if (parent != null) {
            parent.a(rVar);
        } else {
            out.add(rVar);
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                S1(file2, outFiles, out, rVar);
            }
        }
    }

    public final void T1(p fileElement, List<File> outFiles, List<r> out, r parent) {
        int i10 = 0;
        if (!fileElement.f118424n) {
            if (fileElement.f118425o.isEmpty()) {
                return;
            }
            r rVar = new r(fileElement.f118423m);
            if (parent != null) {
                parent.a(rVar);
            } else {
                out.add(rVar);
            }
            while (i10 < fileElement.f118425o.size()) {
                T1((p) fileElement.f118425o.get(i10), outFiles, out, rVar);
                i10++;
            }
            return;
        }
        r rVar2 = new r(fileElement.f118423m);
        outFiles.add(fileElement.f118423m);
        if (parent != null) {
            parent.a(rVar2);
        } else {
            out.add(rVar2);
        }
        if (fileElement.f118425o.isEmpty()) {
            S1(fileElement.f118423m, outFiles, out, rVar2);
            return;
        }
        while (i10 < fileElement.f118425o.size()) {
            T1((p) fileElement.f118425o.get(i10), outFiles, out, rVar2);
            i10++;
        }
    }

    public final void V1(p element) {
        this.f118390c0.t(element);
    }

    public final void X1(List<F7.i> elements, Yc.d listFilter, String inProject, q importData, r file) {
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + inProject + file.c().replace(importData.f118431b, "");
        int i10 = 0;
        if (file.e()) {
            F7.i cVar = C2633l.b(file.d(), ".meta") ? new c(Tc.b.w(file.d(), true), str) : new d(file.d(), file.c());
            if (file.f118435d.isEmpty()) {
                cVar.r(false);
            } else {
                cVar.r(false);
                while (true) {
                    if (i10 >= file.f118435d.size()) {
                        break;
                    }
                    if (listFilter.a(file.f118435d.get(i10).f118434c)) {
                        cVar.r(true);
                        break;
                    }
                    i10++;
                }
            }
            elements.add(cVar);
            return;
        }
        e eVar = new e(file.d(), str, null);
        eVar.s(new f(file));
        File file2 = new File(Tc.b.O(file.c()) + ".meta");
        if (file2.exists()) {
            File[] listFiles = file2.listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                eVar.r(false);
            } else {
                eVar.r(false);
                while (true) {
                    if (i10 >= listFiles.length) {
                        break;
                    }
                    if (listFilter.a(listFiles[i10])) {
                        eVar.r(true);
                        break;
                    }
                    i10++;
                }
            }
        } else {
            eVar.r(false);
        }
        elements.add(eVar);
    }

    @Override
    public EditorPanel k() {
        return new b(this.f118392e0, this.f118394g0);
    }

    public static class r {

        public final String f118432a;

        public final boolean f118433b;

        public final File f118434c;

        public final List<r> f118435d = new SteppedArrayList();

        public r(File file) {
            this.f118432a = file.getName();
            this.f118433b = file.isDirectory();
            this.f118434c = file;
        }

        public void a(r file) {
            this.f118435d.add(file);
        }

        public void b(String tab) {
            if (!this.f118433b) {
                System.out.println(tab + this.f118432a);
                return;
            }
            System.out.println(tab + this.f118432a + " ->");
            Iterator<r> it = this.f118435d.iterator();
            while (it.hasNext()) {
                it.next().b(tab + GlideException.a.f59088e);
            }
        }

        public String c() {
            return this.f118434c.getAbsolutePath();
        }

        public String d() {
            return this.f118432a;
        }

        public boolean e() {
            return this.f118433b;
        }

        public void f() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (r rVar : this.f118435d) {
                if (rVar.f118433b && rVar.f118435d.isEmpty()) {
                    steppedArrayList.add(rVar);
                } else {
                    rVar.f();
                }
            }
            this.f118435d.removeAll(steppedArrayList);
            steppedArrayList.clear();
        }

        public r(String name, boolean isDirectory, File file) {
            this.f118432a = name;
            this.f118433b = isDirectory;
            this.f118434c = file;
        }
    }
}
