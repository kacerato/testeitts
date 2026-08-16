package P7;

import P7.b;
import android.app.Activity;
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
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

@Deprecated
public abstract class c {

    public final int f20909a;

    public int f20910b;

    public P7.d f20911c;

    public final Activity f20912d;

    public final LayoutInflater f20913e;

    public final V7.d f20914f;

    public final V7.c f20915g;

    public FrameLayout f20916h;

    public View f20917i;

    public View f20918j;

    public TextView f20919k;

    public View f20920l;

    public ImageView f20921m;

    public EditText f20922n;

    public View f20923o;

    public View f20924p;

    public HorizontalScrollView f20925q;

    public volatile boolean f20926r = false;

    public boolean f20927s = true;

    public boolean f20928t = true;

    public final List<RecyclerView.OnScrollListener> f20929u = new SteppedArrayList();

    public final LinkedList<P7.b> f20930v = new LinkedList<>();

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            c.this.m();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            c.this.x(!r2.p());
        }
    }

    public class ViewOnClickListenerC0515c implements View.OnClickListener {
        public ViewOnClickListenerC0515c() {
        }

        @Override
        public void onClick(View view) {
            c.this.B(true);
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            c.this.C();
        }
    }

    public class e implements TextWatcher {
        public e() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i12, int i22) {
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i12, int i22) {
            if (c.this.f20930v.isEmpty()) {
                return;
            }
            ((P7.b) c.this.f20930v.getLast()).Y(charSequence.toString());
        }
    }

    public class f implements Runnable {
        public f() {
        }

        @Override
        public void run() {
            c.this.f20925q.fullScroll(66);
        }
    }

    public class g implements Runnable {
        public g() {
        }

        @Override
        public void run() {
            c.this.f20925q.fullScroll(66);
        }
    }

    public class h implements b.i {
        public h() {
        }

        @Override
        public void a(int newSize) {
            c.this.y(newSize);
        }
    }

    public class i extends P7.b {
        public i(Activity activity, V7.d explorerDataProvider, V7.c filter, boolean startSearching, b.i gridZoomListener) {
            super(activity, explorerDataProvider, filter, startSearching, gridZoomListener);
        }

        @Override
        public void Q(String openFolder, View v10) {
            c.this.q(openFolder, v10);
        }

        @Override
        public void R(View v10, R7.b element, boolean fromUserAction) {
            c.this.v(v10, element, fromUserAction);
        }

        @Override
        public void S(File file, View v10) {
            c.this.u(file, v10);
        }
    }

    public c(Activity activity, V7.d explorerDataProvider, V7.c filter) {
        this.f20912d = activity;
        this.f20913e = LayoutInflater.from(activity);
        int dimension = (int) activity.getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_width);
        this.f20909a = dimension;
        this.f20910b = dimension;
        this.f20914f = explorerDataProvider;
        this.f20915g = filter;
    }

    public void A(boolean visible) {
        this.f20928t = visible;
        G();
    }

    public void B(boolean showUi) {
        if (showUi) {
            this.f20922n.setVisibility(0);
            this.f20923o.setVisibility(0);
            this.f20925q.setVisibility(8);
            this.f20924p.setVisibility(8);
            this.f20920l.setVisibility(8);
            this.f20918j.setVisibility(8);
        }
        g(true);
        this.f20922n.requestFocus();
    }

    public final void C() {
        this.f20922n.setText("");
        this.f20922n.setVisibility(8);
        this.f20923o.setVisibility(8);
        this.f20925q.setVisibility(0);
        this.f20924p.setVisibility(0);
        this.f20920l.setVisibility(8);
        this.f20918j.setVisibility(0);
        m();
    }

    public void D() {
        this.f20926r = !this.f20926r;
        Iterator<P7.b> it = this.f20930v.iterator();
        while (it.hasNext()) {
            P7.b next = it.next();
            F(next);
            next.D();
        }
    }

    public final void E() {
        if (p()) {
            Vc.e.V(this.f20921m, R.drawable.grid, this.f20912d);
        } else {
            Vc.e.V(this.f20921m, R.drawable.view_list, this.f20912d);
        }
    }

    public final void F(P7.b stack) {
        stack.X(this.f20926r);
        stack.W(this.f20927s);
        if (this.f20926r) {
            stack.Z(this.f20910b);
        } else {
            stack.Z((int) this.f20912d.getResources().getDimension(R.dimen.editor3d_v2_panel_files_content_view_item_horizontal_width));
        }
    }

    public final void G() {
        View view = this.f20917i;
        if (view != null) {
            view.setVisibility(this.f20928t ? 0 : 8);
        }
    }

    public void H() {
        if (this.f20930v.isEmpty()) {
            return;
        }
        this.f20930v.getLast().f0();
    }

    public void e(RecyclerView.OnScrollListener listener) {
        if (listener == null) {
            return;
        }
        this.f20929u.add(listener);
        Iterator<P7.b> it = this.f20930v.iterator();
        while (it.hasNext()) {
            it.next().z(listener);
        }
    }

    public final P7.b f() {
        return g(false);
    }

    public final P7.b g(boolean search) {
        i iVar = new i(this.f20912d, this.f20914f, this.f20915g, search, new h());
        for (int i10 = 0; i10 < this.f20929u.size(); i10++) {
            iVar.z(this.f20929u.get(i10));
        }
        F(iVar);
        if (!this.f20930v.isEmpty()) {
            this.f20930v.getLast().G().setVisibility(8);
        }
        this.f20930v.add(iVar);
        View C10 = iVar.C();
        this.f20916h.addView(C10);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) C10.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        C10.setLayoutParams(layoutParams);
        return iVar;
    }

    public void h(ViewGroup parent) {
        View inflate = this.f20913e.inflate(R.layout.files_explorer_v2, (ViewGroup) null);
        parent.removeAllViews();
        parent.addView(inflate);
        ViewGroup.LayoutParams layoutParams = inflate.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        inflate.setLayoutParams(layoutParams);
        this.f20917i = inflate.findViewById(R.id.toolbar);
        this.f20916h = (FrameLayout) inflate.findViewById(R.id.inflateViewContent);
        this.f20918j = inflate.findViewById(R.id.goBack);
        this.f20919k = (TextView) inflate.findViewById(R.id.topbarTittle);
        this.f20920l = inflate.findViewById(R.id.menuBtn);
        this.f20921m = (ImageView) inflate.findViewById(R.id.gridBtn);
        this.f20922n = (EditText) inflate.findViewById(R.id.searchEdit);
        this.f20925q = (HorizontalScrollView) inflate.findViewById(R.id.topbarTittleScrollView);
        this.f20924p = inflate.findViewById(R.id.searchBtn);
        View findViewById = inflate.findViewById(R.id.stopSearching);
        this.f20923o = findViewById;
        findViewById.setVisibility(8);
        this.f20918j.setOnClickListener(new a());
        this.f20921m.setOnClickListener(new b());
        E();
        this.f20924p.setOnClickListener(new ViewOnClickListenerC0515c());
        this.f20923o.setOnClickListener(new d());
        this.f20922n.addTextChangedListener(new e());
        this.f20922n.setText("");
        this.f20922n.setVisibility(8);
        this.f20923o.setVisibility(8);
        this.f20925q.setVisibility(0);
        this.f20924p.setVisibility(0);
        this.f20920l.setVisibility(8);
        this.f20918j.setVisibility(0);
        G();
    }

    public void i() {
        this.f20930v.getLast().D();
    }

    public int j() {
        return this.f20910b;
    }

    public String k() {
        return this.f20930v.getLast().F();
    }

    public File l() {
        return this.f20930v.getLast().I();
    }

    public void m() {
        if (this.f20930v.size() >= 2) {
            this.f20916h.removeView(this.f20930v.removeLast().G());
            if (!this.f20930v.isEmpty()) {
                this.f20930v.getLast().G().setVisibility(0);
            }
        } else {
            this.f20930v.getFirst().K();
        }
        this.f20919k.setText(this.f20930v.getLast().F());
        this.f20919k.post(new g());
        r(this.f20930v.getLast().F());
    }

    public void n(String openFolder) {
        f().L(openFolder);
        this.f20919k.setText(this.f20930v.getLast().F());
        this.f20919k.post(new f());
        r(this.f20930v.getLast().F());
    }

    public boolean o() {
        return this.f20927s;
    }

    public boolean p() {
        return this.f20926r;
    }

    public abstract void q(String openFolder, View v10);

    public void r(String openFolder) {
    }

    public abstract void s(String openFolder, View v10);

    public abstract void t(File file, View v10);

    public abstract void u(File file, View v10);

    public final void v(View v10, R7.b element, boolean fromUserAction) {
        if (element instanceof R7.f) {
            File u10 = ((R7.f) element).u();
            String f10 = this.f20914f.f();
            if (f10 == null) {
                f10 = "";
            } else if (!f10.endsWith("/")) {
                f10 = f10 + "/";
            }
            n(u10.getAbsolutePath().replace(f10, ""));
        }
        t(element.u(), v10);
    }

    public void w(boolean allowAsyncUpdate) {
        this.f20927s = allowAsyncUpdate;
    }

    public void x(boolean grid) {
        this.f20926r = grid;
        Iterator<P7.b> it = this.f20930v.iterator();
        while (it.hasNext()) {
            P7.b next = it.next();
            F(next);
            next.D();
        }
        E();
    }

    public void y(int size) {
        if (size > 0 && this.f20910b != size) {
            this.f20910b = size;
            Iterator<P7.b> it = this.f20930v.iterator();
            while (it.hasNext()) {
                P7.b next = it.next();
                if (next.N()) {
                    next.Z(size);
                }
            }
            P7.d dVar = this.f20911c;
            if (dVar != null) {
                dVar.a(size);
            }
        }
    }

    public void z(P7.d listener) {
        this.f20911c = listener;
    }
}
