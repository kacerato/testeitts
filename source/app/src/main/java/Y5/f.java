package Y5;

import K7.a;
import K7.b;
import T5.b;
import Y5.b;
import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.v2.Package;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import o7.C14486a;
import ob.b;
import org.openjdk.tools.doclint.DocLint;
import r4.C15147a;
import rc.C15169a;

@Deprecated
public class f extends EditorPanel {

    public static final String f29807l0 = "SearchPanel";

    public final List<Package> f29808X;

    public Y5.b f29809Y;

    public RecyclerView f29810Z;

    public C14486a f29811a0;

    public boolean f29812b0;

    public boolean f29813c0;

    public boolean f29814d0;

    public U5.a f29815e0;

    public View f29816f0;

    public FloatingPanelArea f29817g0;

    public boolean f29818h0;

    public View f29819i0;

    public int f29820j0;

    public int f29821k0;

    public class a implements b.d {

        public class C0793a implements a.f {
            public C0793a() {
            }

            @Override
            public void a() {
                f.this.T1();
            }
        }

        public a() {
        }

        @Override
        public void onClick(View view) {
            if (f.this.f29817g0 != null) {
                f.this.f29817g0.u0();
            }
            f fVar = f.this;
            fVar.f29817g0 = K7.a.w1(fVar.f29815e0, view, C15147a.e.Below, new C0793a());
        }
    }

    public class b implements b.d {

        public final K7.b f29824a;

        public b(final K7.b val$searchView) {
            this.f29824a = val$searchView;
        }

        @Override
        public void onClick(View view) {
            f.this.f29815e0.t(this.f29824a.e());
            f.this.T1();
        }
    }

    public class c implements b.a {

        public final AtomicBoolean f29826a = new AtomicBoolean();

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                if (f.this.f29813c0) {
                    return;
                }
                c.this.f29826a.set(true);
                f.this.T1();
            }
        }

        public c() {
        }

        @Override
        public boolean run() {
            N7.c.j0(new a());
            return !this.f29826a.get();
        }
    }

    public class d implements Runnable {

        public class a implements Runnable {

            public final List f29830b;

            public a(final List val$page) {
                this.f29830b = val$page;
            }

            @Override
            public void run() {
                if (f.this.f29818h0) {
                    f.this.f29818h0 = false;
                    Y5.b N12 = f.this.N1();
                    if (N12 != null) {
                        N12.m();
                    }
                }
                f.this.I1(this.f29830b);
                f.this.f29813c0 = false;
                f.this.f29814d0 = false;
            }
        }

        public d() {
        }

        @Override
        public void run() {
            N7.c.j0(new a(f.V1(T5.b.l0(f.this.f29815e0.h(), f.P1(f.this.f29815e0), f.R1(f.this.f29815e0.g()), f.this.f29815e0.j() ? b.k.NotTemplate : b.k.DonotMatter), f.this.O1(), f.this.f29815e0.d())));
        }
    }

    public class e implements b.d {
        public e() {
        }

        @Override
        public void a(Package pack, View anchor) {
            if (pack == null) {
                return;
            }
            X5.b.Q1(anchor, C15147a.e.Right, pack);
        }
    }

    public class C0794f extends RecyclerView.OnScrollListener {
        public C0794f() {
        }

        @Override
        public void onScrolled(@NonNull RecyclerView recyclerView, int dx, int dy) {
            int itemCount = f.this.f29809Y.getItemCount();
            boolean z10 = f.this.f29811a0.a() + (Nc.b.N(1, f.this.f29811a0.b()) * 2) >= itemCount;
            if (itemCount <= 0 || !z10) {
                f.this.f29814d0 = false;
            } else {
                if (f.this.f29814d0) {
                    return;
                }
                f.this.f29814d0 = true;
                f.this.M1();
            }
        }
    }

    public f() {
        super(null, Lang.l(Lang.T.STORE_SEARCH));
        this.f29808X = new SteppedArrayList();
        this.f29820j0 = 0;
        this.f29821k0 = Nc.d.j(1, 5);
        this.f29815e0 = new U5.a();
        super.e1(false);
    }

    public void I1(List<Package> newPosts) {
        int i10;
        String str;
        LinkedList linkedList = new LinkedList();
        for (int i11 = 0; i11 < newPosts.size(); i11++) {
            Package r32 = newPosts.get(i11);
            if (r32 == null) {
                throw new NullPointerException("Package " + i11 + " is null");
            }
            while (true) {
                if (i10 >= this.f29808X.size()) {
                    linkedList.add(r32);
                    break;
                }
                Package r52 = this.f29808X.get(i10);
                i10 = (r52 == null || (str = r32.f71742id) == null || !str.equals(r52.f71742id)) ? i10 + 1 : 0;
            }
        }
        Y5.b N12 = N1();
        if (N12 != null) {
            N12.h(S1(linkedList));
        }
        this.f29808X.addAll(linkedList);
    }

    private void J1() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < 15; i10++) {
            steppedArrayList.add(new H7.a());
        }
        Y5.b N12 = N1();
        if (N12 != null) {
            N12.h(steppedArrayList);
        }
        steppedArrayList.clear();
    }

    private void K1() {
        this.f29808X.clear();
        Y5.b N12 = N1();
        if (N12 != null) {
            N12.m();
        }
        this.f29813c0 = false;
        this.f29814d0 = false;
    }

    private void L1() {
        if (M() != null && this.f29809Y == null) {
            this.f29809Y = new Y5.b(S1(this.f29808X), M(), new e());
        }
        this.f29810Z.setAdapter(this.f29809Y);
        this.f29811a0 = new C14486a(M(), this.f29810Z, this.f29809Y, 150);
        this.f29810Z.addOnScrollListener(new C0794f());
    }

    public void M1() {
        if (this.f29813c0) {
            return;
        }
        this.f29813c0 = true;
        this.f29815e0.o(O1());
        this.f29815e0.m(10);
        new Thread(new d()).start();
    }

    public int O1() {
        return Nc.b.N(0, Q1().size() - 1);
    }

    public static String P1(U5.a searchOptions) {
        if (searchOptions == null || searchOptions.i() == null || searchOptions.i().length == 0) {
            return null;
        }
        return searchOptions.i()[0];
    }

    private List<Package> Q1() {
        return this.f29808X;
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

    public void T1() {
        if (this.f29813c0) {
            K8.a.J(new ob.b(new c()));
            return;
        }
        K1();
        J1();
        this.f29818h0 = true;
        M1();
    }

    public static FloatingPanelArea U1(U5.a searchOptions, View anchor, C15147a.e anchorSide) {
        FloatingPanelArea g10 = C15147a.g(anchor, new f(searchOptions), anchorSide, 1.0f, 1.0f);
        g10.N1(false);
        return g10;
    }

    public static List<Package> V1(List<Package> packages, int offset, int count) {
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
        View inflate = this.f70908j.inflate(R.layout.marketplace_search_panel, (ViewGroup) null);
        this.f29819i0 = inflate;
        this.f29810Z = (RecyclerView) ((LinearLayout) inflate.findViewById(R.id.contentSearch)).findViewById(R.id.recycler);
        LinearLayout linearLayout = (LinearLayout) this.f29819i0.findViewById(R.id.search_layout);
        K7.b bVar = new K7.b(M());
        bVar.f(new b.c(new a(), new b(bVar)));
        linearLayout.addView(bVar.d());
        bVar.g(this.f29815e0.h());
        this.f29818h0 = true;
        J1();
        if (this.f29808X.size() == 0) {
            M1();
        }
        if (!this.f29812b0) {
            m1();
        }
        return this.f29819i0;
    }

    @Override
    public void G0() {
        super.G0();
        N7.c.D().s0(this);
    }

    public final Y5.b N1() {
        if (this.f29809Y == null) {
            L1();
        }
        return this.f29809Y;
    }

    public List<H7.a> S1(List<Package> products) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (int i10 = 0; i10 < products.size(); i10++) {
            steppedArrayList.add(new H7.a(products.get(i10)));
        }
        return steppedArrayList;
    }

    @Override
    public EditorPanel k() {
        return new f(this.f29815e0);
    }

    @Override
    public void n1() {
        super.n1();
        C14486a c14486a = this.f29811a0;
        if (c14486a != null) {
            c14486a.c();
        }
        if (C15169a.q()) {
            N7.c.D().u(this);
        } else {
            N7.c.D().s0(this);
        }
    }

    public f(U5.a searchOptions) {
        super(null, Lang.l(Lang.T.STORE_SEARCH));
        this.f29808X = new SteppedArrayList();
        this.f29820j0 = 0;
        this.f29821k0 = Nc.d.j(1, 5);
        if (searchOptions == null) {
            this.f29815e0 = new U5.a();
        } else {
            this.f29815e0 = searchOptions.c();
        }
        super.e1(false);
    }
}
