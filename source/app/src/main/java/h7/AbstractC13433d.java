package h7;

import android.app.Activity;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import h7.AbstractC13431b;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import n7.AbstractC14360e;
import n7.InterfaceC14359d;
import r4.C15147a;

public abstract class AbstractC13433d {

    public final int f90378a;

    public int f90379b;

    public h7.f f90380c;

    public final ColorINT f90381d;

    public final Context f90382e;

    public final Activity f90383f;

    public final LayoutInflater f90384g;

    public final AbstractC14360e f90385h;

    public final InterfaceC14359d f90386i;

    public FrameLayout f90387j;

    public View f90388k;

    public View f90389l;

    public TextView f90390m;

    public View f90391n;

    public ImageView f90392o;

    public EditText f90393p;

    public View f90394q;

    public View f90395r;

    public HorizontalScrollView f90396s;

    public volatile boolean f90397t = false;

    public boolean f90398u = true;

    public boolean f90399v = true;

    public final List<RecyclerView.OnScrollListener> f90400w = new SteppedArrayList();

    public final LinkedList<AbstractC13431b> f90401x = new LinkedList<>();

    public class a extends AbstractC13431b {
        public a(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter, boolean startSearching, AbstractC13431b.i gridZoomListener) {
            super(activity, explorerDataProvider, filter, startSearching, gridZoomListener);
        }

        @Override
        public void Q(String openFolder, View v10) {
            AbstractC13433d.this.s(openFolder, v10);
        }

        @Override
        public void R(View v10, j7.b element, boolean fromUserAction) {
            AbstractC13433d.this.w(v10, element, fromUserAction);
        }

        @Override
        public void S(File file, View v10) {
            AbstractC13433d.this.v(file, v10);
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            AbstractC13433d.this.n();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public class a extends LinkedList<C12908b> {

            public class C1737a implements dd.d {
                public C1737a() {
                }

                @Override
                public void onSelected(View view) {
                    AbstractC13433d abstractC13433d = AbstractC13433d.this;
                    abstractC13433d.s(((AbstractC13431b) abstractC13433d.f90401x.getLast()).F(), AbstractC13433d.this.f90387j);
                }
            }

            public class b implements dd.d {
                public b() {
                }

                @Override
                public void onSelected(View view) {
                    AbstractC13433d abstractC13433d = AbstractC13433d.this;
                    abstractC13433d.t(((AbstractC13431b) abstractC13433d.f90401x.getLast()).F(), AbstractC13433d.this.f90387j);
                }
            }

            public class C1738c implements dd.d {
                public C1738c() {
                }

                @Override
                public void onSelected(View view) {
                    AbstractC13433d.this.G();
                }
            }

            public a() {
                add(new C12908b(R.drawable.new_icon, "New", new C1737a()));
                add(new C12908b(R.drawable.import_files, "Import files", new b()));
                add(new C12908b(R.drawable.import_files, "Toggle view mode", new C1738c()));
            }
        }

        public c() {
        }

        @Override
        public void click(View view) {
            N7.c.t();
            Y6.a.F1(view, C15147a.e.Below, new a());
        }
    }

    public class C1739d extends AbstractViewOnClickListenerC12733a {
        public C1739d() {
        }

        @Override
        public void click(View view) {
            AbstractC13433d.this.y(!r2.q());
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View view) {
            AbstractC13433d.this.E(true);
        }
    }

    public class f extends AbstractViewOnClickListenerC12733a {
        public f() {
        }

        @Override
        public void click(View view) {
            AbstractC13433d.this.F();
        }
    }

    public class g implements TextWatcher {
        public g() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i12, int i22) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i12, int i22) {
            if (AbstractC13433d.this.f90401x.isEmpty()) {
                return;
            }
            ((AbstractC13431b) AbstractC13433d.this.f90401x.getLast()).Y(charSequence.toString());
        }
    }

    public class h implements Runnable {
        public h() {
        }

        @Override
        public void run() {
            AbstractC13433d.this.f90396s.fullScroll(66);
        }
    }

    public class i implements Runnable {
        public i() {
        }

        @Override
        public void run() {
            AbstractC13433d.this.f90396s.fullScroll(66);
        }
    }

    public class j implements AbstractC13431b.i {
        public j() {
        }

        @Override
        public void a(int newSize) {
            AbstractC13433d.this.z(newSize);
        }
    }

    public AbstractC13433d(Activity activity, AbstractC14360e explorerDataProvider, InterfaceC14359d filter) {
        this.f90382e = activity;
        this.f90383f = activity;
        this.f90384g = LayoutInflater.from(activity);
        int dimension = (int) activity.getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_width);
        this.f90378a = dimension;
        this.f90379b = dimension;
        this.f90381d = new ColorINT(Theme.i(Theme.T.PRIMARY));
        this.f90385h = explorerDataProvider;
        this.f90386i = filter;
    }

    public void A(h7.f listener) {
        this.f90380c = listener;
    }

    public void B(String text) {
        if (this.f90401x.isEmpty()) {
            return;
        }
        this.f90401x.getLast().Y(text);
    }

    public void C(File file) {
        if (this.f90401x.isEmpty()) {
            return;
        }
        this.f90401x.getLast().Z(file);
    }

    public void D(boolean visible) {
        this.f90399v = visible;
        J();
    }

    public void E(boolean showUi) {
        if (showUi) {
            this.f90393p.setVisibility(0);
            this.f90394q.setVisibility(0);
            this.f90396s.setVisibility(8);
            this.f90395r.setVisibility(8);
            this.f90391n.setVisibility(8);
            this.f90389l.setVisibility(8);
        }
        h(true);
        this.f90393p.requestFocus();
    }

    public final void F() {
        this.f90393p.setText("");
        this.f90393p.setVisibility(8);
        this.f90394q.setVisibility(8);
        this.f90396s.setVisibility(0);
        this.f90395r.setVisibility(0);
        this.f90391n.setVisibility(8);
        this.f90389l.setVisibility(0);
        n();
    }

    public void G() {
        this.f90397t = !this.f90397t;
        Iterator<AbstractC13431b> it = this.f90401x.iterator();
        while (it.hasNext()) {
            AbstractC13431b next = it.next();
            I(next);
            next.D();
        }
    }

    public final void H() {
        if (q()) {
            Vc.e.U(this.f90392o, R.drawable.grid);
        } else {
            Vc.e.U(this.f90392o, R.drawable.view_list);
        }
    }

    public final void I(AbstractC13431b stack) {
        stack.X(this.f90397t);
        stack.W(this.f90398u);
        if (this.f90397t) {
            stack.a0(this.f90379b);
        } else {
            stack.a0((int) this.f90383f.getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_horizontal_width));
        }
    }

    public final void J() {
        View view = this.f90388k;
        if (view != null) {
            view.setVisibility(this.f90399v ? 0 : 8);
        }
    }

    public void K() {
        if (this.f90401x.isEmpty()) {
            return;
        }
        this.f90401x.getLast().g0();
    }

    public void f(RecyclerView.OnScrollListener listener) {
        if (listener == null) {
            return;
        }
        this.f90400w.add(listener);
        Iterator<AbstractC13431b> it = this.f90401x.iterator();
        while (it.hasNext()) {
            it.next().z(listener);
        }
    }

    public final AbstractC13431b g() {
        return h(false);
    }

    public final AbstractC13431b h(boolean search) {
        a aVar = new a(this.f90383f, this.f90385h, this.f90386i, search, new j());
        for (int i10 = 0; i10 < this.f90400w.size(); i10++) {
            aVar.z(this.f90400w.get(i10));
        }
        I(aVar);
        if (!this.f90401x.isEmpty()) {
            this.f90401x.getLast().G().setVisibility(8);
        }
        this.f90401x.add(aVar);
        View C10 = aVar.C();
        this.f90387j.addView(C10);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) C10.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        C10.setLayoutParams(layoutParams);
        return aVar;
    }

    public void i(ViewGroup parent) {
        View inflate = this.f90384g.inflate(R.layout.files_explorer_v2, (ViewGroup) null);
        parent.removeAllViews();
        parent.addView(inflate);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        inflate.setLayoutParams(layoutParams);
        this.f90388k = inflate.findViewById(R.id.topbar);
        this.f90387j = (FrameLayout) inflate.findViewById(R.id.inflateViewContent);
        this.f90389l = inflate.findViewById(R.id.goBack);
        this.f90390m = (TextView) inflate.findViewById(R.id.topbarTittle);
        this.f90391n = inflate.findViewById(R.id.menuBtn);
        this.f90392o = (ImageView) inflate.findViewById(R.id.gridBtn);
        this.f90393p = (EditText) inflate.findViewById(R.id.searchEdit);
        this.f90396s = (HorizontalScrollView) inflate.findViewById(R.id.topbarTittleScrollView);
        this.f90395r = inflate.findViewById(R.id.searchBtn);
        View findViewById = inflate.findViewById(R.id.stopSearching);
        this.f90394q = findViewById;
        findViewById.setVisibility(8);
        this.f90389l.setOnClickListener(new b());
        this.f90391n.setOnClickListener(new c());
        this.f90392o.setOnClickListener(new C1739d());
        H();
        this.f90395r.setOnClickListener(new e());
        this.f90394q.setOnClickListener(new f());
        this.f90393p.addTextChangedListener(new g());
        this.f90393p.setText("");
        this.f90393p.setVisibility(8);
        this.f90394q.setVisibility(8);
        this.f90396s.setVisibility(0);
        this.f90395r.setVisibility(0);
        this.f90391n.setVisibility(8);
        this.f90389l.setVisibility(0);
        J();
    }

    public void j() {
        this.f90401x.getLast().D();
    }

    public int k() {
        return this.f90379b;
    }

    public String l() {
        return this.f90401x.getLast().F();
    }

    public File m() {
        return this.f90401x.getLast().I();
    }

    public void n() {
        if (this.f90401x.size() >= 2) {
            this.f90387j.removeView(this.f90401x.removeLast().G());
            if (!this.f90401x.isEmpty()) {
                this.f90401x.getLast().G().setVisibility(0);
            }
        } else {
            this.f90401x.getFirst().K();
        }
        this.f90390m.setText(this.f90401x.getLast().F());
        this.f90390m.post(new i());
        r();
    }

    public void o(String openFolder) {
        g().L(openFolder);
        this.f90390m.setText(this.f90401x.getLast().F());
        this.f90390m.post(new h());
    }

    public boolean p() {
        return this.f90398u;
    }

    public boolean q() {
        return this.f90397t;
    }

    public void r() {
    }

    public abstract void s(String openFolder, View v10);

    public abstract void t(String openFolder, View v10);

    public abstract void u(File file, View v10);

    public abstract void v(File file, View v10);

    public final void w(View v10, j7.b element, boolean fromUserAction) {
        if (element instanceof j7.f) {
            o(((j7.f) element).u().getAbsolutePath().replace(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/", ""));
        }
        u(element.u(), v10);
    }

    public void x(boolean allowAsyncUpdate) {
        this.f90398u = allowAsyncUpdate;
    }

    public void y(boolean grid) {
        this.f90397t = grid;
        Iterator<AbstractC13431b> it = this.f90401x.iterator();
        while (it.hasNext()) {
            AbstractC13431b next = it.next();
            I(next);
            next.D();
        }
        H();
    }

    public void z(int size) {
        if (size > 0 && this.f90379b != size) {
            this.f90379b = size;
            Iterator<AbstractC13431b> it = this.f90401x.iterator();
            while (it.hasNext()) {
                AbstractC13431b next = it.next();
                if (next.N()) {
                    next.a0(size);
                }
            }
            h7.f fVar = this.f90380c;
            if (fVar != null) {
                fVar.a(size);
            }
        }
    }
}
