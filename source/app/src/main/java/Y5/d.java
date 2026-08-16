package Y5;

import Ic.C2633l;
import Lb.k;
import T5.b;
import Y5.c;
import Z6.i;
import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.ImportedPackage;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g;
import com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.n;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import o7.C14486a;
import ob.b;
import org.openjdk.tools.doclint.DocLint;
import q7.C15045a;
import r4.C15147a;

public class d extends EditorPanel {

    public static final String f29775m0 = "SearchPanel";

    public final List<Package> f29776X;

    public Y5.c f29777Y;

    public RecyclerView f29778Z;

    public C14486a f29779a0;

    public boolean f29780b0;

    public boolean f29781c0;

    public boolean f29782d0;

    public U5.a f29783e0;

    public View f29784f0;

    public FloatingPanelArea f29785g0;

    public boolean f29786h0;

    public String f29787i0;

    public Y5.e f29788j0;

    public int f29789k0;

    public int f29790l0;

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            d.this.R0();
        }
    }

    public class c implements b.a {

        public final AtomicBoolean f29793a = new AtomicBoolean();

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                if (d.this.f29781c0) {
                    return;
                }
                c.this.f29793a.set(true);
                d.this.T1();
            }
        }

        public c() {
        }

        @Override
        public boolean run() {
            N7.c.j0(new a());
            return !this.f29793a.get();
        }
    }

    public class RunnableC0792d implements Runnable {

        public final U5.a f29796b;

        public class a implements Runnable {

            public final List f29798b;

            public a(final List val$page) {
                this.f29798b = val$page;
            }

            @Override
            public void run() {
                if (d.this.f29786h0) {
                    d.this.f29786h0 = false;
                    Y5.c N12 = d.this.N1();
                    if (N12 != null) {
                        N12.m();
                    }
                }
                d.this.G1(this.f29798b);
                d.this.f29781c0 = false;
                d.this.f29782d0 = false;
            }
        }

        public class b implements Runnable {

            public final RuntimeException f29800b;

            public b(final RuntimeException val$e) {
                this.f29800b = val$e;
            }

            @Override
            public void run() {
                d.this.f29781c0 = false;
                d.this.f29782d0 = false;
                i.y1("Ops!", this.f29800b.getMessage());
            }
        }

        public RunnableC0792d(final U5.a val$so) {
            this.f29796b = val$so;
        }

        @Override
        public void run() {
            try {
                N7.c.j0(new a(d.b2(T5.b.l0(this.f29796b.h(), d.P1(this.f29796b), d.R1(this.f29796b.g()), this.f29796b.j() ? b.k.NotTemplate : b.k.DonotMatter), d.this.O1(), this.f29796b.d())));
            } catch (RuntimeException e10) {
                N7.c.j0(new b(e10));
            }
        }
    }

    public class e implements c.d {
        public e() {
        }

        @Override
        public void a(Package pack, View anchor) {
            X5.b.Q1(anchor, C15147a.e.Right, pack);
        }
    }

    public class f extends RecyclerView.OnScrollListener {
        public f() {
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            int itemCount = d.this.f29777Y.getItemCount();
            boolean z10 = d.this.f29779a0.a() + (Nc.b.N(1, d.this.f29779a0.b()) * 2) >= itemCount;
            if (itemCount <= 0 || !z10) {
                d.this.f29782d0 = false;
            } else {
                if (d.this.f29782d0) {
                    return;
                }
                d.this.f29782d0 = true;
                d.this.M1();
            }
        }
    }

    public class g implements g.p {

        public final Package f29804a;

        public final C15045a f29805b;

        public g(final Package val$pack, final C15045a val$loading) {
            this.f29804a = val$pack;
            this.f29805b = val$loading;
        }

        @Override
        public void a(String error) {
            N7.c.v0("Ops:" + error);
            this.f29805b.p1();
        }

        @Override
        public void b() {
            V5.a.p1();
            this.f29805b.p1();
        }

        @Override
        public void c(int progress, long etaInMilliSeconds, long downloadedBytesPerSecond, g.p.a updateStep) {
        }

        @Override
        public void e(g.p.a updateStep) {
            if (updateStep == g.p.a.Import) {
                d.this.I1(this.f29804a);
                this.f29805b.p1();
            }
        }
    }

    public d(String titleText) {
        super(null, Lang.l(Lang.T.STORE_SEARCH));
        this.f29776X = new SteppedArrayList();
        this.f29789k0 = 0;
        this.f29790l0 = Nc.d.j(1, 5);
        this.f29787i0 = titleText;
        this.f29783e0 = new U5.a();
        super.e1(false);
    }

    private void K1() {
        this.f29776X.clear();
        Y5.c N12 = N1();
        if (N12 != null) {
            N12.m();
        }
        this.f29781c0 = false;
        this.f29782d0 = false;
    }

    public void M1() {
        if (this.f29781c0) {
            return;
        }
        this.f29781c0 = true;
        U5.a c10 = this.f29783e0.c();
        c10.b("itsmagic");
        c10.n(true);
        c10.o(O1());
        c10.m(10);
        new Thread(new RunnableC0792d(c10)).start();
    }

    public static String P1(U5.a searchOptions) {
        if (searchOptions == null || searchOptions.i() == null || searchOptions.i().length == 0) {
            return null;
        }
        return searchOptions.i()[0];
    }

    public static String R1(String[] tags) {
        if (tags == null || tags.length == 0) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : tags) {
            if (str != null && !str.trim().isEmpty()) {
                if (sb2.length() > 0) {
                    sb2.append(DocLint.SEPARATOR);
                }
                sb2.append(str.trim());
            }
        }
        return sb2.toString();
    }

    public static FloatingPanelArea V1(String titleText) {
        return W1(titleText, null);
    }

    public static FloatingPanelArea W1(String titleText, U5.a searchOptions) {
        return X1(titleText, searchOptions, null);
    }

    public static FloatingPanelArea X1(String titleText, U5.a searchOptions, Y5.e filter) {
        FloatingPanelArea m10 = C15147a.m(new d(titleText, searchOptions, filter), 1.0f, 1.0f);
        m10.N1(false);
        m10.T();
        return m10;
    }

    public static FloatingPanelArea Y1(String titleText, String searchText) {
        U5.a aVar = new U5.a();
        aVar.t(searchText);
        return W1(titleText, aVar);
    }

    public static FloatingPanelArea Z1(String titleText, String searchText, Y5.e filter) {
        U5.a aVar = new U5.a();
        aVar.t(searchText);
        return X1(titleText, aVar, filter);
    }

    public static FloatingPanelArea a2(String titleText, String searchText, String tag, Y5.e filter) {
        U5.a aVar = new U5.a();
        aVar.t(searchText);
        aVar.s(tag);
        return X1(titleText, aVar, filter);
    }

    public static List<Package> b2(List<Package> packages, int offset, int count) {
        if (packages == null || packages.isEmpty()) {
            return new SteppedArrayList();
        }
        int N10 = Nc.b.N(0, offset);
        int min = Math.min(packages.size(), count + N10);
        return N10 >= min ? new SteppedArrayList() : new SteppedArrayList(packages.subList(N10, min));
    }

    @Override
    @SuppressLint({"InflateParams"})
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.embed_marketplace_search_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        this.f29778Z = (RecyclerView) inflate.findViewById(R.id.recycler);
        N7.c.a(this);
        ((TextView) inflate.findViewById(R.id.title)).setText(this.f29787i0);
        inflate.findViewById(R.id.close).setOnClickListener(new b());
        this.f29786h0 = true;
        H1();
        if (this.f29776X.isEmpty()) {
            M1();
        }
        if (!this.f29780b0) {
            m1();
        }
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.f0(this);
    }

    public final void G1(List<Package> newPosts) {
        int i10;
        String str;
        LinkedList linkedList = new LinkedList();
        for (int i11 = 0; i11 < newPosts.size(); i11++) {
            Package r32 = newPosts.get(i11);
            if (r32 == null) {
                throw new NullPointerException("Package " + i11 + " is null");
            }
            Y5.e eVar = this.f29788j0;
            if (eVar == null || eVar.a(r32)) {
                while (true) {
                    if (i10 >= this.f29776X.size()) {
                        linkedList.add(r32);
                        break;
                    }
                    Package r52 = this.f29776X.get(i10);
                    i10 = (r52 == null || (str = r32.f71742id) == null || !str.equals(r52.f71742id)) ? i10 + 1 : 0;
                }
            }
        }
        Y5.c N12 = N1();
        if (N12 != null) {
            N12.h(S1(linkedList));
        }
        this.f29776X.addAll(linkedList);
    }

    public final void H1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < 15; i10++) {
            steppedArrayList.add(new H7.a());
        }
        Y5.c N12 = N1();
        if (N12 != null) {
            N12.h(steppedArrayList);
        }
        steppedArrayList.clear();
    }

    public final void I1(Package pack) {
        ImportedPackage l10 = n.n().l(pack.f71742id);
        if (l10 != null) {
            for (int i10 = 0; i10 < l10.i(); i10++) {
                J1(l10.h(i10));
            }
        }
    }

    public final void J1(ImportedPackage.SFile file) {
        for (int i10 = 0; i10 < file.e(); i10++) {
            ImportedPackage.SFile d10 = file.d(i10);
            if (C2633l.b(d10.f(), ".go")) {
                k.s(Tc.b.w(d10.f(), true), d10.g()).f14852f = true;
                return;
            }
            J1(d10);
        }
    }

    public final void L1() {
        if (M() != null && this.f29777Y == null) {
            this.f29777Y = new Y5.c(S1(this.f29776X), M(), new e());
        }
        this.f29778Z.setAdapter(this.f29777Y);
        this.f29779a0 = new C14486a(M(), this.f29778Z, this.f29777Y, 96);
        this.f29778Z.addOnScrollListener(new f());
    }

    public final Y5.c N1() {
        if (this.f29777Y == null) {
            L1();
        }
        return this.f29777Y;
    }

    public final int O1() {
        return Nc.b.N(0, Q1().size() - 1);
    }

    public final List<Package> Q1() {
        return this.f29776X;
    }

    public List<H7.a> S1(List<Package> products) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < products.size(); i10++) {
            steppedArrayList.add(new H7.a(products.get(i10)));
        }
        return steppedArrayList;
    }

    public final void T1() {
        if (this.f29781c0) {
            K8.a.J(new ob.b(new c()));
            return;
        }
        K1();
        H1();
        this.f29786h0 = true;
        M1();
    }

    public final void U1(Package pack) {
        if (pack == null) {
            return;
        }
        if (!com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            N7.c.v0("Theres no open project!");
            return;
        }
        try {
            C15045a r12 = C15045a.r1();
            R0();
            com.itsmagic.engine.Activities.Editor.Extensions.PackageManager.g.U1(pack, new g(pack, r12));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public EditorPanel k() {
        d dVar = new d(this.f29787i0, this.f29783e0, this.f29788j0);
        dVar.f29776X.clear();
        dVar.f29776X.addAll(this.f29776X);
        dVar.f29783e0 = this.f29783e0;
        dVar.f29777Y = this.f29777Y;
        return dVar;
    }

    @Override
    public void n1() {
        super.n1();
        C14486a c14486a = this.f29779a0;
        if (c14486a != null) {
            c14486a.c();
        }
    }

    public d(String titleText, U5.a searchOptions, Y5.e filter) {
        super(null, Lang.l(Lang.T.STORE_SEARCH));
        this.f29776X = new SteppedArrayList();
        this.f29789k0 = 0;
        this.f29790l0 = Nc.d.j(1, 5);
        this.f29787i0 = titleText;
        this.f29788j0 = filter;
        if (searchOptions == null) {
            this.f29783e0 = new U5.a();
        } else {
            this.f29783e0 = searchOptions.c();
        }
        super.e1(false);
    }
}
