package h7;

import F7.i;
import F7.k;
import F7.l;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.FileExplorer.Utils.GridAutofitLayoutManager;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import i7.C13589a;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import k7.C13946a;
import k7.InterfaceC13947b;
import n7.InterfaceC14361f;
import ob.b;
import r4.C15147a;

@Deprecated
public class e {

    public C13589a f90416A;

    public List<j7.b> f90417B;

    public j7.b f90418C;

    public boolean f90419D;

    public int f90420E;

    public int f90421F;

    public View f90422G;

    public LinearLayout f90423a;

    public Activity f90424b;

    public LayoutInflater f90425c;

    public InterfaceC14361f f90426d;

    public InterfaceC13947b f90427e;

    public LinearLayout f90430h;

    public LinearLayout f90431i;

    public LinearLayout f90432j;

    public int f90433k;

    public ColorINT f90434l;

    public String f90436n;

    public h f90437o;

    public h f90438p;

    public View f90439q;

    public View f90440r;

    public View f90441s;

    public View f90442t;

    public View f90443u;

    public TextView f90444v;

    public HorizontalScrollView f90445w;

    public RecyclerView f90446x;

    public l f90447y;

    public RecyclerView f90448z;

    public ColorINT f90428f = null;

    public ColorINT f90429g = null;

    public boolean f90435m = false;

    public class a implements View.OnLongClickListener {
        public a() {
        }

        @Override
        public boolean onLongClick(View v10) {
            if (e.this.f90447y.o() == null) {
                return false;
            }
            i o10 = e.this.f90447y.o();
            if (!(o10 instanceof j7.f)) {
                return false;
            }
            e.this.f90426d.h((j7.f) o10, v10);
            return true;
        }
    }

    public class b implements i7.b {
        public b() {
        }

        @Override
        public void a(j7.b element, View v10) {
            e.this.z(v10, element, true);
        }

        @Override
        public void b(j7.b eElement, View v10) {
            e.this.f90426d.g(eElement, v10);
        }
    }

    public class c implements RecyclerView.OnItemTouchListener {

        public ob.b f90451a;

        public final Object f90452b = new Object();

        public final Vector2 f90453c = new Vector2();

        public final Vector2 f90454d = new Vector2();

        public class a implements b.a {

            public class RunnableC1740a implements Runnable {
                public RunnableC1740a() {
                }

                @Override
                public void run() {
                    if (e.this.f90447y.o() != null) {
                        i o10 = e.this.f90447y.o();
                        if (o10 instanceof j7.f) {
                            c cVar = c.this;
                            e.this.f90426d.e((j7.f) o10, ((int) cVar.f90454d.f79838x) - Nc.b.k0(32.0f), ((int) c.this.f90454d.f79839y) - Nc.b.k0(32.0f));
                        }
                    }
                }
            }

            public a() {
            }

            @Override
            public boolean run() {
                synchronized (c.this.f90452b) {
                    try {
                        c cVar = c.this;
                        if (cVar.f90451a == null) {
                            return false;
                        }
                        cVar.f90451a = null;
                        N7.c.j0(new RunnableC1740a());
                        return false;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }

        public c() {
        }

        @Override
        public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
            ob.b bVar;
            System.out.println("motionEvent.getAction() " + motionEvent.getAction());
            if (motionEvent.getAction() == 0) {
                if (recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY()) != null) {
                    return false;
                }
                synchronized (this.f90452b) {
                    this.f90453c.w0(motionEvent.getX(), motionEvent.getY());
                    this.f90454d.w0(motionEvent.getRawX(), motionEvent.getRawY());
                    ob.b bVar2 = new ob.b((b.a) new a(), 0.3f);
                    this.f90451a = bVar2;
                    K8.a.J(bVar2);
                }
                return false;
            }
            if (motionEvent.getAction() == 1) {
                synchronized (this.f90452b) {
                    try {
                        ob.b bVar3 = this.f90451a;
                        if (bVar3 != null) {
                            K8.a.p(bVar3);
                            this.f90451a = null;
                        }
                    } finally {
                    }
                }
                return false;
            }
            if (motionEvent.getAction() != 2) {
                return false;
            }
            synchronized (this.f90452b) {
                try {
                    this.f90454d.w0(motionEvent.getRawX(), motionEvent.getRawY());
                    if (this.f90453c.distance(motionEvent.getX(), motionEvent.getY()) >= Nc.b.k0(5.0f) && (bVar = this.f90451a) != null) {
                        K8.a.p(bVar);
                        this.f90451a = null;
                    }
                } finally {
                }
            }
            return false;
        }

        @Override
        public void onRequestDisallowInterceptTouchEvent(boolean disallowIntercept) {
        }

        @Override
        public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View view) {
            e.this.o();
        }
    }

    public class C1741e extends AbstractViewOnClickListenerC12733a {

        public class a extends LinkedList<C12908b> {

            public class C1742a implements dd.d {
                public C1742a() {
                }

                @Override
                public void onSelected(View view) {
                    if (e.this.f90447y.o() != null) {
                        i o10 = e.this.f90447y.o();
                        if (o10 instanceof j7.f) {
                            e.this.f90426d.h((j7.f) o10, view);
                        }
                    }
                }
            }

            public class b implements dd.d {
                public b() {
                }

                @Override
                public void onSelected(View view) {
                    i o10 = e.this.f90447y.o();
                    if (o10 == null) {
                        com.itsmagic.engine.Core.Components.ProjectController.a.i0("Files/");
                        return;
                    }
                    String replace = o10.f6679a.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "");
                    if (o10 instanceof x5.d) {
                        replace = "Files/" + ((x5.d) o10).f92638o;
                    }
                    com.itsmagic.engine.Core.Components.ProjectController.a.i0(replace);
                }
            }

            public a() {
                add(new C12908b(R.drawable.new_icon, "New", new C1742a()));
                add(new C12908b(R.drawable.import_files, "Import files", new b()));
            }
        }

        public C1741e() {
        }

        @Override
        public void click(View view) {
            N7.c.t();
            Y6.a.F1(view, C15147a.e.Below, new a());
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            e.this.f90445w.fullScroll(66);
        }
    }

    public class g implements k {
        public g() {
        }

        @Override
        public void a() {
            InterfaceC14361f interfaceC14361f = e.this.f90426d;
            if (interfaceC14361f != null) {
                interfaceC14361f.a();
            }
        }

        @Override
        public void b(i element, View v10) {
            N7.c.Y();
            e.this.f90426d.h((j7.b) element, v10);
        }

        @Override
        public List<i> c() {
            List<j7.b> b10 = e.this.f90426d.b();
            LinkedList linkedList = new LinkedList();
            for (j7.b bVar : b10) {
                if (e.this.f90427e.a(bVar)) {
                    linkedList.add(bVar);
                }
            }
            return linkedList;
        }

        @Override
        public void d(i element, boolean open) {
            InterfaceC14361f interfaceC14361f = e.this.f90426d;
            if (interfaceC14361f != null) {
                interfaceC14361f.j((j7.b) element, open);
            }
        }

        @Override
        public void e(i element) {
            e.this.x((j7.b) element);
        }

        @Override
        public List<i> f(i element) {
            List<j7.b> f10 = e.this.f90426d.f((j7.b) element);
            LinkedList linkedList = new LinkedList();
            for (j7.b bVar : f10) {
                if (e.this.f90427e.a(bVar)) {
                    linkedList.add(bVar);
                }
            }
            Iterator<E> it = linkedList.iterator();
            while (it.hasNext()) {
                ((i) it.next()).q(element.e() + 1);
            }
            return linkedList;
        }
    }

    public enum h {
        Grid,
        List
    }

    public e(LinearLayout parent, Activity activity) {
        h hVar = h.Grid;
        this.f90437o = hVar;
        this.f90438p = hVar;
        this.f90419D = false;
        this.f90420E = 0;
        this.f90421F = 0;
        this.f90423a = parent;
        this.f90424b = activity;
        this.f90433k = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_width);
        this.f90425c = LayoutInflater.from(activity);
        this.f90427e = new C13946a();
    }

    public void A(j7.b eElement) {
        l lVar = this.f90447y;
        if (lVar != null) {
            lVar.z(eElement);
        }
    }

    public void B(j7.b eElement) {
        this.f90447y.u(eElement);
        if (this.f90447y.o() == eElement) {
            U(eElement);
        }
    }

    public void C() {
        H(this.f90426d.b());
    }

    public void D(boolean enableImportFilesButton) {
        this.f90435m = enableImportFilesButton;
    }

    public void E(InterfaceC14361f explorerListener) {
        this.f90426d = explorerListener;
    }

    public void F() {
        List<j7.b> d10 = this.f90426d.d(null);
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < d10.size(); i10++) {
            j7.b bVar = d10.get(i10);
            if (this.f90427e.a(bVar)) {
                linkedList.add(bVar);
            }
        }
        this.f90417B = linkedList;
        this.f90416A.v(linkedList, true);
    }

    public void G(LayoutInflater layoutInflater) {
        this.f90425c = layoutInflater;
    }

    public void H(List<j7.b> elements) {
        LinkedList linkedList = new LinkedList();
        for (int i10 = 0; i10 < elements.size(); i10++) {
            j7.b bVar = elements.get(i10);
            if (this.f90427e.a(bVar)) {
                linkedList.add(bVar);
            }
        }
        this.f90447y.C(linkedList);
    }

    public void I(ColorINT leftPanelColor) {
        LinearLayout linearLayout;
        this.f90428f = leftPanelColor;
        if (leftPanelColor == null || (linearLayout = this.f90430h) == null) {
            return;
        }
        Vc.e.q(linearLayout, this.f90424b, leftPanelColor);
    }

    public void J(InterfaceC13947b projectFilter) {
        this.f90427e = projectFilter;
    }

    public void K(ColorINT rightPanelColor) {
        LinearLayout linearLayout;
        this.f90429g = rightPanelColor;
        if (rightPanelColor == null || (linearLayout = this.f90431i) == null) {
            return;
        }
        Vc.e.q(linearLayout, this.f90424b, rightPanelColor);
    }

    public void L(ColorINT selectedContentElementColor) {
        this.f90434l = selectedContentElementColor;
        C13589a c13589a = this.f90416A;
        if (c13589a != null) {
            c13589a.y(selectedContentElementColor);
        }
    }

    public void M(j7.b element) {
        l lVar = this.f90447y;
        if (lVar != null) {
            lVar.D(element);
        }
        x(element);
    }

    public void N(int viewContentSize) {
        this.f90433k = viewContentSize;
    }

    public boolean O() {
        return this.f90438p == h.List || this.f90419D;
    }

    public void P(String showFilePath) {
        this.f90436n = showFilePath;
        if (this.f90447y != null) {
            u(showFilePath);
            this.f90436n = null;
        }
    }

    public void Q(j7.b eElement) {
        if (eElement.f6684f.f6678c) {
            f(eElement);
        } else {
            A(eElement);
        }
    }

    public void R() {
        boolean z10 = this.f90419D;
        if (z10) {
            h hVar = this.f90437o;
            h hVar2 = h.Grid;
            if (hVar == hVar2) {
                hVar2 = h.List;
            }
            this.f90437o = hVar2;
        } else {
            h hVar3 = this.f90438p;
            h hVar4 = h.Grid;
            if (hVar3 == hVar4) {
                hVar4 = h.List;
            }
            this.f90438p = hVar4;
        }
        if (!z10) {
            int ordinal = this.f90438p.ordinal();
            if (ordinal == 0) {
                this.f90430h.setVisibility(0);
                this.f90432j.setVisibility(0);
                this.f90443u.setVisibility(8);
            } else if (ordinal == 1) {
                this.f90430h.setVisibility(0);
                this.f90432j.setVisibility(8);
                this.f90443u.setVisibility(8);
            }
            C();
            return;
        }
        int ordinal2 = this.f90437o.ordinal();
        if (ordinal2 == 0) {
            this.f90430h.setVisibility(8);
            this.f90432j.setVisibility(0);
            this.f90443u.setVisibility(0);
        } else {
            if (ordinal2 != 1) {
                return;
            }
            this.f90430h.setVisibility(0);
            this.f90432j.setVisibility(8);
            this.f90443u.setVisibility(8);
        }
    }

    public final void S() {
        if (this.f90416A.getItemCount() > 0) {
            this.f90439q.setVisibility(0);
            this.f90440r.setVisibility(8);
        } else {
            this.f90439q.setVisibility(8);
            this.f90440r.setVisibility(0);
        }
    }

    public void T() {
        boolean z10 = this.f90419D;
        View view = this.f90422G;
        if (view != null && view.getWidth() != 0) {
            if (this.f90421F != this.f90422G.getWidth()) {
                this.f90420E = 0;
                this.f90421F = this.f90422G.getWidth();
                return;
            }
            int i10 = this.f90420E + 1;
            this.f90420E = i10;
            if (i10 >= 2) {
                if (Nc.b.f1(this.f90422G.getWidth()) < 280) {
                    int ordinal = this.f90437o.ordinal();
                    if (ordinal == 0) {
                        this.f90430h.setVisibility(8);
                        this.f90432j.setVisibility(0);
                        this.f90443u.setVisibility(0);
                    } else if (ordinal == 1) {
                        this.f90430h.setVisibility(0);
                        this.f90432j.setVisibility(8);
                        this.f90443u.setVisibility(8);
                    }
                    this.f90419D = true;
                } else {
                    int ordinal2 = this.f90438p.ordinal();
                    if (ordinal2 == 0) {
                        this.f90430h.setVisibility(0);
                        this.f90432j.setVisibility(0);
                        this.f90443u.setVisibility(8);
                    } else if (ordinal2 == 1) {
                        this.f90430h.setVisibility(0);
                        this.f90432j.setVisibility(8);
                        this.f90443u.setVisibility(8);
                    }
                    this.f90419D = false;
                }
            }
        }
        if (z10 != this.f90419D) {
            C();
            U((j7.b) this.f90447y.o());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void U(j7.b selectedLeftElement) {
        j7.b bVar;
        List<j7.b> list = this.f90417B;
        if (list == null) {
            return;
        }
        int size = list.size();
        j7.b bVar2 = this.f90418C;
        String str = bVar2 != null ? bVar2.f6679a : null;
        List<j7.b> d10 = this.f90426d.d((j7.b) this.f90447y.o());
        LinkedList linkedList = new LinkedList();
        for (j7.b bVar3 : d10) {
            if (this.f90427e.a(bVar3)) {
                linkedList.add(bVar3);
            }
        }
        if (linkedList.size() == this.f90417B.size()) {
            for (int i10 = 0; i10 < linkedList.size(); i10++) {
                if (((j7.b) linkedList.get(i10)).d(this.f90417B.get(i10))) {
                }
            }
            S();
            bVar = this.f90418C;
            if (bVar != null) {
                V(bVar);
            }
            if (selectedLeftElement == null) {
                if (selectedLeftElement instanceof x5.d) {
                    this.f90444v.setText(selectedLeftElement.f6679a);
                } else {
                    this.f90444v.setText(selectedLeftElement.u().getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
                }
                this.f90441s.setVisibility(0);
            } else {
                this.f90444v.setText("Project");
                this.f90441s.setVisibility(4);
            }
            this.f90444v.post(new f());
        }
        this.f90417B = linkedList;
        this.f90416A.u(linkedList);
        this.f90416A.notifyItemRangeRemoved(0, size);
        this.f90416A.notifyItemRangeInserted(0, this.f90417B.size());
        if (str != null) {
            Iterator<j7.b> it = this.f90417B.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                j7.b next = it.next();
                if (next.f6679a.equals(str)) {
                    this.f90416A.x(next);
                    this.f90418C = next;
                    break;
                }
            }
        }
        S();
        bVar = this.f90418C;
        if (bVar != null) {
        }
        if (selectedLeftElement == null) {
        }
        this.f90444v.post(new f());
    }

    public void V(j7.b element) {
        int o10 = this.f90416A.o(element);
        if (o10 >= 0) {
            this.f90448z.scrollToPosition(o10);
        }
    }

    public void e(j7.b element) {
        this.f90416A.h(element);
        S();
    }

    public void f(j7.b eElement) {
        l lVar = this.f90447y;
        if (lVar != null) {
            lVar.x(eElement);
        }
    }

    public void g() {
        View view = this.f90422G;
        if (view == null) {
            throw new IllegalArgumentException("View already deflated");
        }
        this.f90423a.removeView(view);
        this.f90422G = null;
    }

    public InterfaceC14361f h() {
        return this.f90426d;
    }

    public l i() {
        return this.f90447y;
    }

    public InterfaceC13947b j() {
        return this.f90427e;
    }

    public ColorINT k() {
        return this.f90434l;
    }

    public String l() {
        j7.b bVar = this.f90418C;
        if (bVar != null) {
            return bVar.f6679a;
        }
        return null;
    }

    public List<j7.b> m() {
        return this.f90417B;
    }

    public int n() {
        return this.f90433k;
    }

    public void o() {
        File u10;
        j7.b bVar = (j7.b) this.f90447y.o();
        if (bVar == null || (u10 = bVar.u()) == null) {
            return;
        }
        u10.getParentFile();
        i n10 = this.f90447y.n(bVar);
        if (n10 != null) {
            this.f90447y.D(n10);
        } else {
            this.f90447y.D(null);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void p(String path, String prefixRemoval) {
        String str = "";
        i iVar = null;
        for (String str2 : path.split("/")) {
            str = str + "/" + str2;
            if (str.startsWith("/")) {
                str = str.substring(1);
            }
            if (iVar == null) {
                int i10 = 0;
                while (true) {
                    if (i10 < this.f90447y.k()) {
                        i j10 = this.f90447y.j(i10);
                        if (j10.f6679a.replace(prefixRemoval, "").equals(str)) {
                            if (!j10.f6684f.f6678c) {
                                A((j7.b) j10);
                            }
                            M((j7.b) j10);
                            iVar = j10;
                        } else {
                            i10++;
                        }
                    }
                }
            } else {
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                synchronized (iVar.f6684f.f6676a) {
                    try {
                        List<i> list = iVar.f6684f.f6677b;
                        if (list != null) {
                            steppedArrayList.addAll(list);
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                int i11 = 0;
                while (true) {
                    if (i11 < steppedArrayList.size()) {
                        i iVar2 = (i) steppedArrayList.get(i11);
                        if (iVar2.f6679a.replace(prefixRemoval, "").equals(str)) {
                            if (!iVar2.f6684f.f6678c) {
                                A((j7.b) iVar2);
                            }
                            M((j7.b) iVar2);
                            iVar = iVar2;
                        } else {
                            i11++;
                        }
                    }
                }
            }
        }
    }

    @SuppressLint({"InflateParams"})
    public void q() {
        if (this.f90422G != null) {
            throw new IllegalArgumentException("View already inflated");
        }
        View inflate = this.f90425c.inflate(R.layout.files_explorer, (ViewGroup) null);
        this.f90422G = inflate;
        this.f90423a.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f90422G.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.f90422G.setLayoutParams(layoutParams);
        this.f90430h = (LinearLayout) this.f90422G.findViewById(R.id.leftPanel);
        this.f90431i = (LinearLayout) this.f90422G.findViewById(R.id.contentView);
        this.f90432j = (LinearLayout) this.f90422G.findViewById(R.id.rightPanel);
        I(this.f90428f);
        K(this.f90429g);
        this.f90439q = this.f90422G.findViewById(R.id.contentView);
        this.f90440r = this.f90422G.findViewById(R.id.blankSlate);
        this.f90441s = this.f90422G.findViewById(R.id.goBack);
        this.f90444v = (TextView) this.f90422G.findViewById(R.id.topbarTittle);
        this.f90445w = (HorizontalScrollView) this.f90422G.findViewById(R.id.topbarTittleScrollView);
        this.f90442t = this.f90422G.findViewById(R.id.importFiles);
        this.f90443u = this.f90422G.findViewById(R.id.topbar);
        v(this.f90422G);
    }

    public boolean r() {
        return this.f90435m;
    }

    public boolean s() {
        return this.f90422G != null;
    }

    public boolean t() {
        return this.f90419D;
    }

    public final void u(String showFilePath) {
        this.f90447y.p(showFilePath);
        if (this.f90447y.o() != null) {
            l lVar = this.f90447y;
            lVar.B(lVar.o());
        }
        for (int i10 = 0; i10 < this.f90416A.getItemCount(); i10++) {
            j7.b m10 = this.f90416A.m(i10);
            String str = m10.f6679a;
            if (str != null) {
                if (str.replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", "").equals(showFilePath)) {
                    z(this.f90446x, m10, false);
                    this.f90448z.scrollToPosition(i10);
                }
            }
        }
    }

    public final void v(View v10) {
        this.f90446x = (RecyclerView) v10.findViewById(R.id.leftPanelRecycler);
        this.f90448z = (RecyclerView) v10.findViewById(R.id.contentViewRecycler);
        this.f90446x.setItemAnimator(null);
        this.f90448z.setItemAnimator(null);
        w();
        y();
        this.f90440r.setOnLongClickListener(new a());
        String str = this.f90436n;
        if (str != null) {
            u(str);
            this.f90436n = null;
        }
        S();
    }

    public final void w() {
        this.f90447y = new l(this.f90446x, new g());
    }

    public final void x(j7.b element) {
        U(element);
        this.f90426d.c(element);
    }

    public final void y() {
        List<j7.b> d10 = this.f90426d.d(null);
        LinkedList linkedList = new LinkedList();
        for (j7.b bVar : d10) {
            if (this.f90427e.a(bVar)) {
                linkedList.add(bVar);
            }
        }
        this.f90417B = linkedList;
        this.f90448z.setLayoutManager(new GridAutofitLayoutManager(this.f90424b, this.f90433k));
        C13589a c13589a = new C13589a(this.f90417B, this.f90424b, new b());
        this.f90416A = c13589a;
        c13589a.y(this.f90434l);
        this.f90448z.setAdapter(this.f90416A);
        this.f90448z.addOnItemTouchListener(new c());
        this.f90441s.setOnClickListener(new d());
        if (!this.f90435m) {
            this.f90442t.setVisibility(8);
        } else {
            this.f90442t.setVisibility(0);
            this.f90442t.setOnClickListener(new C1741e());
        }
    }

    public final void z(View v10, j7.b element, boolean fromUserAction) {
        this.f90418C = element;
        this.f90416A.x(element);
        if (fromUserAction) {
            if (element instanceof j7.f) {
                this.f90447y.p(element.f6679a);
            } else if (element instanceof x5.d) {
                this.f90447y.p(element.f6679a);
            } else {
                this.f90426d.i(v10, element);
            }
        }
    }

    public e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        h hVar = h.Grid;
        this.f90437o = hVar;
        this.f90438p = hVar;
        this.f90419D = false;
        this.f90420E = 0;
        this.f90421F = 0;
        this.f90423a = parent;
        this.f90424b = activity;
        this.f90425c = layoutInflater;
        this.f90433k = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_width);
        if (this.f90425c == null) {
            this.f90425c = LayoutInflater.from(activity);
        }
        this.f90427e = new C13946a();
    }

    public e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater, InterfaceC14361f explorerListener) {
        h hVar = h.Grid;
        this.f90437o = hVar;
        this.f90438p = hVar;
        this.f90419D = false;
        this.f90420E = 0;
        this.f90421F = 0;
        this.f90423a = parent;
        this.f90424b = activity;
        this.f90425c = layoutInflater;
        this.f90426d = explorerListener;
        this.f90433k = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_width);
        if (this.f90425c == null) {
            this.f90425c = LayoutInflater.from(activity);
        }
        this.f90427e = new C13946a();
    }

    public e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater, InterfaceC14361f explorerListener, InterfaceC13947b projectFilter) {
        h hVar = h.Grid;
        this.f90437o = hVar;
        this.f90438p = hVar;
        this.f90419D = false;
        this.f90420E = 0;
        this.f90421F = 0;
        this.f90423a = parent;
        this.f90424b = activity;
        this.f90425c = layoutInflater;
        this.f90426d = explorerListener;
        this.f90427e = projectFilter;
        this.f90433k = (int) activity.getResources().getDimension(R.dimen.file_explorer_content_view_item_width);
        if (this.f90425c == null) {
            this.f90425c = LayoutInflater.from(activity);
        }
    }
}
