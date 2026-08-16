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
import androidx.documentfile.provider.DocumentFile;
import androidx.recyclerview.widget.RecyclerView;
import cn.pedant.SweetAlert.SweetAlertDialog;
import com.bumptech.glide.load.engine.GlideException;
import com.google.gson.Gson;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Files.PFSettings;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import m7.C14190b;
import q7.C15045a;
import r4.C15147a;
import w3.e;

public class d extends EditorPanel {

    public static final String f118436s0 = "FileImporterSAF";

    public View f118437X;

    public View f118438Y;

    public LinearLayout f118439Z;

    public View f118440a0;

    public View f118441b0;

    public F7.l f118442c0;

    public F7.l f118443d0;

    public final w f118444e0;

    public final List<F7.i> f118445f0;

    public final String f118446g0;

    public final String f118447h0;

    public final List<DocumentFile> f118448i0;

    public e.c f118449j0;

    public PFSettings f118450k0;

    public SweetAlertDialog f118451l0;

    public List<F7.i> f118452m0;

    public u f118453n0;

    public AtomicBoolean f118454o0;

    public AtomicBoolean f118455p0;

    public int f118456q0;

    public int f118457r0;

    public class a extends AbstractViewOnClickListenerC12733a {

        public class C2027a implements e.d {

            public class C2028a implements C15045a.d {

                public final List f118460a;

                public final e.c f118461b;

                public class RunnableC2029a implements Runnable {

                    public final C15045a f118463b;

                    public RunnableC2029a(final C15045a val$popup) {
                        this.f118463b = val$popup;
                    }

                    @Override
                    public void run() {
                        C2028a c2028a = C2028a.this;
                        d.this.f118449j0 = c2028a.f118461b;
                        d.this.R1();
                        this.f118463b.p1();
                    }
                }

                public C2028a(final List val$files, final e.c val$callback) {
                    this.f118460a = val$files;
                    this.f118461b = val$callback;
                }

                @Override
                public void a(C15045a popup) {
                    d.this.V1(this.f118460a, new RunnableC2029a(popup));
                }
            }

            public C2027a() {
            }

            @Override
            public void onCancel() {
            }

            @Override
            public void onError(String error) {
                d.this.P1(error);
            }

            @Override
            public void onSuccess(List<DocumentFile> files, e.c callback) {
                C15045a.u1(true, new C2028a(files, callback));
            }
        }

        public a() {
        }

        @Override
        public void click(View v10) {
            w3.e.g(new C2027a());
        }
    }

    public class b extends u5.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public b(String name, String path) {
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

    public class c extends u5.e {

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

    public class C2030d extends j7.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public C2030d(String name, String path, j7.d folder) {
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

    public class e extends u5.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public e(String name, String path) {
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

    public class f extends u5.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public f(String name, String path) {
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

    public class g extends j7.e {

        public class a implements F7.c {
            public a() {
            }

            @Override
            public void a(F7.i eElement, Context context, F7.e textViewAppearance) {
                textViewAppearance.f6655a = context.getResources().getColor(R.color.colorAccent);
            }
        }

        public g(String name, String path, j7.d folder) {
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

    public class h extends C15576a {

        public final v f118477a;

        public h(final v val$file) {
            this.f118477a = val$file;
        }

        @Override
        public void a(Context context, ImageView imageView, ImageView subIconImageView, F7.i eElement) {
            C2633l.i(imageView, this.f118477a.c(), context);
        }
    }

    public class i implements Runnable {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                d.this.f118443d0.v();
                boolean z10 = d.this.f118455p0.get();
                d.this.f118454o0.set(false);
                if (z10) {
                    d.this.q2();
                    d.this.f118455p0.set(false);
                }
            }
        }

        public i() {
        }

        @Override
        public void run() {
            u a22 = d.this.a2();
            d.this.f118453n0 = a22;
            d.this.T1(a22);
            d.this.U0(new a());
        }
    }

    public class j implements Yc.d {
        public j() {
        }

        @Override
        public boolean a(File file) {
            if (C2633l.b(file.getName(), ".meta")) {
                return false;
            }
            return com.itsmagic.engine.Activities.Editor.Panels.Files.a.b(file, d.this.f118450k0);
        }
    }

    public static class k {

        public static final int[] f118482a;

        static {
            int[] iArr = new int[e.d.values().length];
            f118482a = iArr;
            try {
                iArr[e.d.Unselected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f118482a[e.d.PartiallySelected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f118482a[e.d.FullSelected.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public class l extends F7.a {
        public l() {
        }

        @Override
        public List<F7.i> c() {
            return d.this.U1();
        }

        @Override
        public void e(F7.i element) {
            if (((t) element).f6684f.f6678c) {
                d.this.f118442c0.x(element);
            } else {
                d.this.f118442c0.z(element);
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return d.this.f2(eElement);
        }
    }

    public class m extends F7.a {
        public m() {
        }

        @Override
        public List<F7.i> c() {
            return d.this.b2();
        }

        @Override
        public void e(F7.i element) {
            if (element.f6684f.f6678c) {
                d.this.f118443d0.x(element);
            } else {
                d.this.f118443d0.z(element);
            }
        }

        @Override
        public List<F7.i> f(F7.i eElement) {
            return d.this.g2(eElement);
        }
    }

    public class n extends AbstractViewOnClickListenerC12733a {

        public class a implements Runnable {

            public final SweetAlertDialog f118486b;

            public class RunnableC2031a implements Runnable {
                public RunnableC2031a() {
                }

                @Override
                public void run() {
                    a.this.f118486b.dismissWithAnimation();
                }
            }

            public a(final SweetAlertDialog val$dialog) {
                this.f118486b = val$dialog;
            }

            @Override
            public void run() {
                d.this.W1();
                d.this.f118444e0.a(null);
                N7.c.j0(new RunnableC2031a());
            }
        }

        public n() {
        }

        @Override
        public void click(View v10) {
            d.this.R0();
            SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(d.this.M(), 5);
            d.this.f118451l0 = sweetAlertDialog;
            sweetAlertDialog.setTitle(Lang.l(Lang.T.IMPORTING));
            sweetAlertDialog.setContentText(Lang.l(Lang.T.PLEASE_WAIT_A_SECOND) + "...");
            sweetAlertDialog.setCanceledOnTouchOutside(false);
            sweetAlertDialog.show();
            O9.b.d(new a(sweetAlertDialog));
        }
    }

    public class o extends AbstractViewOnClickListenerC12733a {

        public class a implements SweetAlertDialog.OnSweetClickListener {

            public final SweetAlertDialog f118490a;

            public a(final SweetAlertDialog val$dialog) {
                this.f118490a = val$dialog;
            }

            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                d.this.f118444e0.onCancel();
                d.this.R0();
                this.f118490a.dismissWithAnimation();
            }
        }

        public class b implements SweetAlertDialog.OnSweetClickListener {

            public final SweetAlertDialog f118492a;

            public b(final SweetAlertDialog val$dialog) {
                this.f118492a = val$dialog;
            }

            @Override
            public void onClick(SweetAlertDialog sweetAlertDialog) {
                this.f118492a.dismissWithAnimation();
            }
        }

        public o() {
        }

        @Override
        public void click(View v10) {
            SweetAlertDialog sweetAlertDialog = new SweetAlertDialog(d.this.M(), 3);
            sweetAlertDialog.setTitle("Attention");
            sweetAlertDialog.setContentText("Are you sure you want to cancel the import?");
            sweetAlertDialog.setConfirmButton("Yes", new a(sweetAlertDialog));
            sweetAlertDialog.setCancelButton("No", new b(sweetAlertDialog));
            sweetAlertDialog.show();
        }
    }

    public class p implements Runnable {
        public p() {
        }

        @Override
        public void run() {
            d.this.f118451l0.setContentText("0/" + d.this.f118456q0);
        }
    }

    public class q implements Runnable {
        public q() {
        }

        @Override
        public void run() {
            d.this.f118451l0.setContentText(d.this.f118457r0 + "/" + d.this.f118456q0);
        }
    }

    public class r implements Runnable {

        public final List f118496b;

        public final Runnable f118497c;

        public r(final List val$files, final Runnable val$r) {
            this.f118496b = val$files;
            this.f118497c = val$r;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void run() {
            d.this.f118448i0.clear();
            d.this.f118448i0.addAll(this.f118496b);
            d.this.f118445f0.clear();
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            for (DocumentFile documentFile : d.this.f118448i0) {
                if (documentFile.isDirectory()) {
                    steppedArrayList.add(documentFile);
                } else {
                    steppedArrayList2.add(documentFile);
                }
            }
            Collections.sort(steppedArrayList, Comparator.comparing(new u5.c()));
            Collections.sort(steppedArrayList2, Comparator.comparing(new u5.c()));
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            steppedArrayList3.addAll(steppedArrayList);
            steppedArrayList3.addAll(steppedArrayList2);
            for (int i10 = 0; i10 < steppedArrayList3.size(); i10++) {
                DocumentFile documentFile2 = (DocumentFile) steppedArrayList3.get(i10);
                if (d.this.Y1(documentFile2)) {
                    t tVar = new t(documentFile2);
                    tVar.r(documentFile2.listFiles() != null && documentFile2.listFiles().length > 0);
                    tVar.f6681c = 0;
                    d.this.j2(tVar, documentFile2);
                    d.this.f118445f0.add(tVar);
                }
            }
            d.this.U0(this.f118497c);
        }
    }

    public class s implements Yc.d {
        public s() {
        }

        @Override
        public boolean a(File file) {
            if (C2633l.b(file.getName(), ".meta")) {
                return false;
            }
            return com.itsmagic.engine.Activities.Editor.Panels.Files.a.b(file, d.this.f118450k0);
        }
    }

    public class t extends F7.i {

        public DocumentFile f118500m;

        public boolean f118501n;

        public final List<F7.i> f118502o;

        public t f118503p;

        public class a implements e.c {

            public final d f118505a;

            public a(final d val$this$0) {
                this.f118505a = val$this$0;
            }

            @Override
            public void a(e.d state) {
                int i10 = k.f118482a[state.ordinal()];
                if (i10 == 1) {
                    t tVar = t.this;
                    tVar.f118501n = false;
                    tVar.x(false);
                    d.this.o2();
                    return;
                }
                if (i10 != 3) {
                    return;
                }
                t tVar2 = t.this;
                tVar2.f118501n = true;
                tVar2.x(true);
                d.this.o2();
            }

            @Override
            public e.d getState() {
                return t.this.f118502o.isEmpty() ? t.this.f118501n ? e.d.FullSelected : e.d.Unselected : t.this.u() ? e.d.FullSelected : t.this.v() ? e.d.PartiallySelected : e.d.Unselected;
            }
        }

        public t(DocumentFile file) {
            super(file.getUri().getPath(), file.isDirectory() ? new C14190b() : new C15576a());
            this.f118501n = false;
            this.f118502o = new SteppedArrayList();
            this.f118500m = file;
            super.a(new G7.e(new a(d.this)));
        }

        @Override
        public String g() {
            return this.f118500m.getName();
        }

        public boolean u() {
            if (this.f118502o.isEmpty()) {
                return false;
            }
            Iterator<F7.i> it = this.f118502o.iterator();
            while (it.hasNext()) {
                if (!((t) it.next()).f118501n) {
                    return false;
                }
            }
            return true;
        }

        public boolean v() {
            Iterator<F7.i> it = this.f118502o.iterator();
            while (it.hasNext()) {
                t tVar = (t) it.next();
                if (tVar.f118501n || tVar.v()) {
                    return true;
                }
            }
            return false;
        }

        public void w() {
            t tVar = this.f118503p;
            if (tVar != null) {
                d.this.n2(tVar);
                this.f118503p.w();
            }
        }

        public boolean x(boolean value) {
            Iterator<F7.i> it = this.f118502o.iterator();
            while (it.hasNext()) {
                t tVar = (t) it.next();
                tVar.f118501n = value;
                tVar.x(value);
            }
            return false;
        }
    }

    public static class u {

        public final List<v> f118507a;

        public final String f118508b;

        public u(List<v> files, String commonPath) {
            this.f118507a = files;
            this.f118508b = commonPath;
        }
    }

    public interface w {
        void a(List<File> files);

        void onCancel();
    }

    public d(w listener, String inProjectDestinationFolder) {
        super(null, Lang.l(Lang.T.IMPORT));
        this.f118442c0 = null;
        this.f118443d0 = null;
        this.f118445f0 = new SteppedArrayList();
        this.f118448i0 = new SteppedArrayList();
        this.f118452m0 = new SteppedArrayList();
        this.f118454o0 = new AtomicBoolean();
        this.f118455p0 = new AtomicBoolean();
        this.f118456q0 = 0;
        this.f118457r0 = 0;
        this.f118444e0 = listener;
        inProjectDestinationFolder = inProjectDestinationFolder.startsWith("/") ? inProjectDestinationFolder.substring(1) : inProjectDestinationFolder;
        this.f118446g0 = inProjectDestinationFolder;
        this.f118447h0 = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + inProjectDestinationFolder;
    }

    private void Q1() {
        S1();
        this.f118441b0.setVisibility(0);
        ((TextView) this.f118441b0.findViewById(R.id.f131513t1)).setText(Lang.l(Lang.T.READ_DIRECTORY_IS_REQUIRED));
        Button button = (Button) this.f118441b0.findViewById(R.id.f131503b1);
        button.setText(Lang.l(Lang.T.SELECT));
        button.setOnClickListener(new a());
    }

    public void R1() {
        this.f118438Y.setVisibility(0);
        View view = this.f118438Y;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.recyclerView);
        RecyclerView recyclerView2 = (RecyclerView) view.findViewById(R.id.previewRecyclerView);
        ((TextView) view.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.SELECT_FILES));
        ((TextView) view.findViewById(R.id.previewTittle)).setText(Lang.l(Lang.T.PREVIEW_IN_PROJECT));
        this.f118442c0 = new F7.l(recyclerView, new l());
        this.f118443d0 = new F7.l(recyclerView2, new m());
        Button button = (Button) view.findViewById(R.id.done);
        Lang.k(button, Lang.T.IMPORT);
        button.setOnClickListener(new n());
        Button button2 = (Button) view.findViewById(R.id.cancel);
        Lang.k(button2, Lang.T.CANCEL);
        button2.setOnClickListener(new o());
    }

    private void S1() {
        this.f118440a0.setVisibility(8);
        this.f118441b0.setVisibility(8);
        this.f118438Y.setVisibility(8);
    }

    public List<F7.i> U1() {
        return this.f118445f0;
    }

    public void W1() {
        u a22 = a2();
        String str = this.f118447h0;
        this.f118456q0 = k2(a22.f118507a, str, a22);
        X1(a22.f118507a, str, a22);
    }

    public List<F7.i> b2() {
        return this.f118452m0;
    }

    private boolean c2(File file) {
        String[] split = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "").split("/");
        String[] split2 = this.f118446g0.split("/");
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

    private boolean d2(File file) {
        String[] split = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "").split("/");
        String[] split2 = this.f118446g0.split("/");
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

    public List<F7.i> f2(F7.i element) {
        t tVar = (t) element;
        DocumentFile documentFile = tVar.f118500m;
        List<F7.i> list = tVar.f118502o;
        if (list.isEmpty()) {
            e2(documentFile, list, tVar);
            tVar.r(!list.isEmpty());
            for (int i10 = 0; i10 < list.size(); i10++) {
                list.get(i10).q(element.e() + 1);
            }
        }
        return list;
    }

    public List<F7.i> g2(F7.i folder) {
        return folder instanceof u5.e ? ((u5.e) folder).f118513p : folder instanceof t ? ((t) folder).f118502o : new SteppedArrayList();
    }

    public static d l2(String inProjectDestinationFolder, w listener) {
        d dVar = new d(listener, inProjectDestinationFolder);
        C15147a.m(dVar, 0.8f, 0.8f);
        return dVar;
    }

    public void o2() {
        this.f118442c0.s();
        q2();
    }

    public void q2() {
        if (this.f118454o0.compareAndSet(false, true)) {
            new Thread(new i()).start();
        } else {
            this.f118455p0.set(true);
        }
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.file_importer, (ViewGroup) null);
        this.f118437X = inflate;
        this.f118438Y = inflate.findViewById(R.id.inflateRoot);
        this.f118440a0 = inflate.findViewById(R.id.errorViews);
        this.f118441b0 = inflate.findViewById(R.id.requestViews);
        try {
            Gson gson = new Gson();
            X7.a aVar = W7.b.f27305e;
            this.f118450k0 = (PFSettings) gson.fromJson(X7.a.C("pf", "pfsettings.config", M()), PFSettings.class);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (this.f118450k0 == null) {
            this.f118450k0 = new PFSettings();
        }
        Q1();
        return inflate;
    }

    public final void P1(String error) {
        S1();
        this.f118440a0.setVisibility(0);
        ((TextView) this.f118437X.findViewById(R.id.errorText)).setText("Error:" + error);
    }

    public final void T1(u importData) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (!com.itsmagic.engine.Core.Components.ProjectController.a.T().isEmpty()) {
            h2(com.itsmagic.engine.Core.Components.ProjectController.a.S(M()), steppedArrayList, new j(), importData);
        }
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            F7.i iVar = steppedArrayList.get(i10);
            iVar.f6684f.f6678c = true;
            m2(iVar);
        }
        this.f118452m0.clear();
        this.f118452m0.addAll(steppedArrayList);
    }

    public final void V1(List<DocumentFile> files, Runnable r10) {
        new Thread(new r(files, r10)).start();
    }

    public final void X1(List<v> files, String destination, u data) {
        N7.c.j0(new p());
        for (int i10 = 0; i10 < files.size(); i10++) {
            v vVar = files.get(i10);
            if (vVar.e()) {
                X1(vVar.f118512d, destination, data);
            } else {
                String str = destination + vVar.c().replace(data.f118508b, "");
                if (vVar.e()) {
                    str = str + "/";
                }
                this.f118449j0.a(vVar.f118511c, new File(str));
                this.f118457r0++;
                N7.c.j0(new q());
            }
        }
    }

    public final boolean Y1(DocumentFile file) {
        return (file.isDirectory() && file.getName().startsWith(".")) ? false : true;
    }

    public final boolean Z1(List<F7.i> elements, u importData, String folderInProject, List<v> files) {
        for (v vVar : files) {
            String str = this.f118446g0 + vVar.c().replace(importData.f118508b, "");
            if (!str.endsWith("/")) {
                str = str + "/";
            }
            if (folderInProject.equals(str)) {
                if (vVar.f118512d.isEmpty()) {
                    DocumentFile[] listFiles = vVar.f118511c.listFiles();
                    if (listFiles != null) {
                        for (DocumentFile documentFile : listFiles) {
                            if (documentFile.isDirectory()) {
                                F7.i bVar = C2633l.b(documentFile.getName(), ".meta") ? new b(Tc.b.w(documentFile.getName(), true), documentFile.getUri().getPath()) : new c(documentFile.getName(), documentFile.getUri().getPath());
                                DocumentFile[] listFiles2 = documentFile.listFiles();
                                if (listFiles2 == null || listFiles2.length <= 0) {
                                    bVar.r(false);
                                } else {
                                    bVar.r(false);
                                    if (listFiles2.length > 0) {
                                        DocumentFile documentFile2 = listFiles2[0];
                                        bVar.r(true);
                                    }
                                }
                                elements.add(bVar);
                            } else {
                                C2030d c2030d = new C2030d(documentFile.getName(), documentFile.getUri().getPath(), null);
                                c2030d.r(false);
                                elements.add(c2030d);
                            }
                        }
                    }
                } else {
                    Iterator<v> it = vVar.f118512d.iterator();
                    while (it.hasNext()) {
                        p2(elements, folderInProject, importData, it.next());
                    }
                }
                return true;
            }
            if (Z1(elements, importData, folderInProject, vVar.f118512d)) {
                return true;
            }
        }
        return false;
    }

    public u a2() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Mc.b bVar = new Mc.b();
        for (int i10 = 0; i10 < this.f118445f0.size(); i10++) {
            i2((t) this.f118445f0.get(i10), bVar, steppedArrayList, null);
        }
        String g10 = Tc.b.g(bVar);
        SteppedArrayList steppedArrayList2 = new SteppedArrayList();
        for (v vVar : steppedArrayList) {
            if (vVar.f118510b && vVar.f118512d.isEmpty()) {
                steppedArrayList2.add(vVar);
            } else {
                vVar.f();
            }
        }
        steppedArrayList.removeAll(steppedArrayList2);
        steppedArrayList2.clear();
        SteppedArrayList steppedArrayList3 = new SteppedArrayList();
        boolean z10 = true;
        while (z10) {
            for (v vVar2 : steppedArrayList) {
                if (vVar2.f118510b && (g10.equals(vVar2.c()) || g10.contains(vVar2.c()))) {
                    steppedArrayList2.add(vVar2);
                    if (!vVar2.f118512d.isEmpty()) {
                        steppedArrayList3.addAll(vVar2.f118512d);
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
        return new u(steppedArrayList, g10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e2(DocumentFile parent, List<F7.i> elements, t parentElement) {
        if (parent != null) {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            SteppedArrayList steppedArrayList2 = new SteppedArrayList();
            DocumentFile[] listFiles = parent.listFiles();
            if (listFiles != null) {
                for (DocumentFile documentFile : listFiles) {
                    if (documentFile.isDirectory()) {
                        steppedArrayList.add(documentFile);
                    } else {
                        steppedArrayList2.add(documentFile);
                    }
                }
            }
            Collections.sort(steppedArrayList, Comparator.comparing(new u5.c()));
            Collections.sort(steppedArrayList2, Comparator.comparing(new u5.c()));
            SteppedArrayList steppedArrayList3 = new SteppedArrayList();
            steppedArrayList3.addAll(steppedArrayList);
            steppedArrayList3.addAll(steppedArrayList2);
            for (int i10 = 0; i10 < steppedArrayList3.size(); i10++) {
                DocumentFile documentFile2 = (DocumentFile) steppedArrayList3.get(i10);
                if (Y1(documentFile2)) {
                    t tVar = new t(documentFile2);
                    tVar.f118503p = parentElement;
                    tVar.f118501n = parentElement.f118501n;
                    tVar.r(documentFile2.listFiles() != null && documentFile2.listFiles().length > 0);
                    elements.add(tVar);
                }
            }
        }
    }

    public final void h2(String path, List<F7.i> elements, Yc.d listFilter, u importData) {
        File file = new File(Tc.b.o(path));
        if (!file.isDirectory()) {
            elements.clear();
            return;
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2 != null && listFilter.a(file2) && c2(file2)) {
                    if (file2.isDirectory()) {
                        u5.e eVar = C2633l.b(file2.getName(), ".meta") ? new u5.e(Tc.b.w(file2.getName(), true), file2.getAbsolutePath()) : new u5.e(file2.getName(), file2.getAbsolutePath());
                        File[] listFiles2 = file2.listFiles();
                        if (listFiles2 == null || listFiles2.length <= 0) {
                            eVar.r(false);
                        } else {
                            eVar.r(false);
                            int i10 = 0;
                            while (true) {
                                if (i10 >= listFiles2.length) {
                                    break;
                                }
                                if (listFilter.a(listFiles2[i10])) {
                                    eVar.r(true);
                                    break;
                                }
                                i10++;
                            }
                        }
                        elements.add(eVar);
                    } else {
                        j7.e eVar2 = new j7.e(file2.getName(), file2.getAbsolutePath(), null);
                        File file3 = new File(Tc.b.O(file2.getAbsolutePath()) + ".meta");
                        if (file3.exists()) {
                            File[] listFiles3 = file3.listFiles();
                            if (listFiles3 == null || listFiles3.length <= 0) {
                                eVar2.r(false);
                            } else {
                                eVar2.r(false);
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= listFiles3.length) {
                                        break;
                                    }
                                    if (listFilter.a(listFiles3[i11])) {
                                        eVar2.r(true);
                                        break;
                                    }
                                    i11++;
                                }
                            }
                        } else {
                            eVar2.r(false);
                        }
                        elements.add(eVar2);
                    }
                }
            }
        }
        String replace = file.getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
        if (!replace.endsWith("/")) {
            replace = replace + "/";
        }
        if (replace.equals(this.f118446g0)) {
            Iterator<v> it = importData.f118507a.iterator();
            while (it.hasNext()) {
                p2(elements, replace, importData, it.next());
            }
        } else {
            if (d2(file)) {
                return;
            }
            String str = this.f118446g0 + file.getAbsolutePath().replace(importData.f118508b, "");
            if (!str.endsWith("/")) {
                str = str + "/";
            }
            Z1(elements, importData, str, importData.f118507a);
        }
    }

    public final void i2(t fileElement, List<DocumentFile> outFiles, List<v> out, v parent) {
        int i10 = 0;
        if (!fileElement.f118501n) {
            if (fileElement.f118502o.isEmpty()) {
                return;
            }
            v vVar = new v(fileElement.f118500m);
            if (parent != null) {
                parent.a(vVar);
            } else {
                out.add(vVar);
            }
            while (i10 < fileElement.f118502o.size()) {
                i2((t) fileElement.f118502o.get(i10), outFiles, out, vVar);
                i10++;
            }
            return;
        }
        v vVar2 = new v(fileElement.f118500m);
        outFiles.add(fileElement.f118500m);
        if (parent != null) {
            parent.a(vVar2);
        } else {
            out.add(vVar2);
        }
        if (fileElement.f118502o.isEmpty()) {
            return;
        }
        while (i10 < fileElement.f118502o.size()) {
            i2((t) fileElement.f118502o.get(i10), outFiles, out, vVar2);
            i10++;
        }
    }

    public final void j2(t parent, DocumentFile parentFile) {
        DocumentFile[] listFiles = parentFile.listFiles();
        if (listFiles != null) {
            for (DocumentFile documentFile : listFiles) {
                if (Y1(documentFile)) {
                    t tVar = new t(documentFile);
                    j2(tVar, documentFile);
                    tVar.f6681c = parent.f6681c + 1;
                    parent.f118502o.add(tVar);
                    parent.r(true);
                }
            }
        }
    }

    @Override
    public EditorPanel k() {
        return new d(this.f118444e0, this.f118446g0);
    }

    public final int k2(List<v> files, String destination, u data) {
        int i10 = 0;
        for (int i11 = 0; i11 < files.size(); i11++) {
            v vVar = files.get(i11);
            i10 = !vVar.e() ? i10 + 1 : i10 + k2(vVar.f118512d, destination, data);
        }
        return i10;
    }

    public final void m2(F7.i folder) {
        u uVar = this.f118453n0;
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        h2(folder.f6679a, steppedArrayList, new s(), uVar);
        for (int i10 = 0; i10 < steppedArrayList.size(); i10++) {
            F7.i iVar = steppedArrayList.get(i10);
            if (d2(new File(iVar.f6679a))) {
                iVar.f6684f.f6678c = true;
            } else {
                iVar.f6684f.f6678c = false;
            }
            iVar.q(folder.e() + 1);
            m2(iVar);
        }
        if (folder instanceof u5.e) {
            u5.e eVar = (u5.e) folder;
            eVar.f118513p.clear();
            eVar.f118513p.addAll(steppedArrayList);
        } else if (folder instanceof t) {
            t tVar = (t) folder;
            tVar.f118502o.clear();
            tVar.f118502o.addAll(steppedArrayList);
        }
    }

    public final void n2(t element) {
        this.f118442c0.t(element);
    }

    public final void p2(List<F7.i> elements, String inProject, u importData, v file) {
        String str = com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + inProject + file.c().replace(importData.f118508b, "");
        if (file.e()) {
            F7.i eVar = C2633l.b(file.d(), ".meta") ? new e(Tc.b.w(file.d(), true), str) : new f(file.d(), file.c());
            if (file.f118512d.isEmpty()) {
                eVar.r(false);
            } else {
                eVar.r(false);
                if (file.f118512d.size() > 0) {
                    file.f118512d.get(0);
                    eVar.r(true);
                }
            }
            elements.add(eVar);
            return;
        }
        g gVar = new g(file.d(), str, null);
        gVar.s(new h(file));
        File file2 = new File(Tc.b.O(file.c()) + ".meta");
        if (file2.exists()) {
            File[] listFiles = file2.listFiles();
            if (listFiles == null || listFiles.length <= 0) {
                gVar.r(false);
            } else {
                gVar.r(false);
                if (listFiles.length > 0) {
                    File file3 = listFiles[0];
                    gVar.r(true);
                }
            }
        } else {
            gVar.r(false);
        }
        elements.add(gVar);
    }

    public static class v {

        public final String f118509a;

        public final boolean f118510b;

        public final DocumentFile f118511c;

        public final List<v> f118512d = new SteppedArrayList();

        public v(DocumentFile file) {
            this.f118509a = file.getName();
            this.f118510b = file.isDirectory();
            this.f118511c = file;
        }

        public void a(v file) {
            this.f118512d.add(file);
        }

        public void b(String tab) {
            if (!this.f118510b) {
                System.out.println(tab + this.f118509a);
                return;
            }
            System.out.println(tab + this.f118509a + " ->");
            Iterator<v> it = this.f118512d.iterator();
            while (it.hasNext()) {
                it.next().b(tab + GlideException.a.f59088e);
            }
        }

        public String c() {
            return this.f118511c.getUri().getPath();
        }

        public String d() {
            return this.f118509a;
        }

        public boolean e() {
            return this.f118510b;
        }

        public void f() {
            SteppedArrayList steppedArrayList = new SteppedArrayList();
            for (v vVar : this.f118512d) {
                if (vVar.f118510b) {
                    vVar.f();
                    if (vVar.f118512d.isEmpty()) {
                        steppedArrayList.add(vVar);
                    }
                }
            }
            this.f118512d.removeAll(steppedArrayList);
            steppedArrayList.clear();
        }

        public v(String name, boolean isDirectory, DocumentFile file) {
            this.f118509a = name;
            this.f118510b = isDirectory;
            this.f118511c = file;
        }
    }
}
