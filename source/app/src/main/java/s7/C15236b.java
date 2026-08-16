package s7;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import pf.C14981m;
import rc.C15169a;
import s7.C15235a;
import s7.c;

public class C15236b<T extends C15235a> extends EditorPanel {

    public static final String f109268k0 = "MultiLevelStagePanel";

    public final C14981m<s7.c<T>> f109269X;

    public s7.c<T> f109270Y;

    public s7.c<T> f109271Z;

    public boolean f109272a0;

    public Button f109273b0;

    public Button f109274c0;

    public LinearLayout f109275d0;

    public ScrollView f109276e0;

    public View f109277f0;

    public View f109278g0;

    public TextView f109279h0;

    public String f109280i0;

    public T f109281j0;

    public class a extends AbstractViewOnClickListenerC12733a {
        public a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void click(View v10) {
            if (C15236b.this.f109269X.isEmpty()) {
                return;
            }
            C15236b c15236b = C15236b.this;
            c15236b.y1((s7.c) c15236b.f109269X.remove(C15236b.this.f109269X.size() - 1));
        }
    }

    public class C2003b extends AbstractViewOnClickListenerC12733a {
        public C2003b() {
        }

        @Override
        public void click(View v10) {
            if (C15236b.this.f109270Y != null && C15236b.this.f109270Y.o() && C15236b.this.f109270Y.b()) {
                s7.c<T> d10 = C15236b.this.f109270Y.d();
                if (d10 != null) {
                    C15236b.this.z1(d10);
                } else {
                    C15236b.this.R0();
                }
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            C15236b.this.R0();
        }
    }

    public class d implements c.a<T> {

        public final s7.c f109285a;

        public d(final s7.c val$s) {
            this.f109285a = val$s;
        }

        @Override
        public C15236b<T> a() {
            return C15236b.this;
        }

        @Override
        public void b() {
            C15236b.this.R0();
        }

        @Override
        public void c(String tag) {
            C15236b.this.z1(this.f109285a.e(tag));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void d() {
            if (C15236b.this.f109269X.isEmpty()) {
                return;
            }
            C15236b c15236b = C15236b.this;
            c15236b.y1((s7.c) c15236b.f109269X.remove(C15236b.this.f109269X.size() - 1));
        }

        @Override
        public void e(s7.c stage) {
            C15236b.this.z1(stage);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            C15236b.this.f109276e0.scrollTo(0, 0);
        }
    }

    public C15236b(String titleText) {
        super(null, titleText);
        this.f109269X = new C14981m<>();
        this.f109271Z = null;
        this.f109272a0 = false;
        this.f109281j0 = null;
        this.f109280i0 = titleText;
    }

    public final void A1() {
        ScrollView scrollView = this.f109276e0;
        if (scrollView == null) {
            return;
        }
        scrollView.post(new e());
    }

    public void B1(T data) {
        this.f109281j0 = data;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.stage_panel, (ViewGroup) null);
        this.f109275d0 = (LinearLayout) inflate.findViewById(R.id.content);
        this.f109276e0 = (ScrollView) inflate.findViewById(R.id.scroll_view);
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        this.f109279h0 = textView;
        textView.setText(this.f109280i0);
        this.f109277f0 = inflate.findViewById(R.id.tittle_bar);
        this.f109278g0 = inflate.findViewById(R.id.bottom_bar);
        Button button = (Button) inflate.findViewById(R.id.back);
        this.f109273b0 = button;
        button.setOnClickListener(new a());
        this.f109273b0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_BACK));
        Button button2 = (Button) inflate.findViewById(R.id.next);
        this.f109274c0 = button2;
        button2.setOnClickListener(new C2003b());
        this.f109274c0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        inflate.findViewById(R.id.close_button).setOnClickListener(new c());
        s7.c<T> cVar = this.f109271Z;
        if (cVar != null) {
            z1(cVar);
            this.f109271Z = null;
        }
        this.f109272a0 = true;
        return inflate;
    }

    public void C1(s7.c<T> stage) {
        this.f109271Z = stage;
        if (this.f109272a0) {
            z1(stage);
        }
    }

    public void D1(String titleText) {
        this.f109280i0 = titleText;
        TextView textView = this.f109279h0;
        if (textView != null) {
            textView.setText(titleText);
        }
    }

    @Override
    public void n1() {
        super.n1();
        s7.c<T> cVar = this.f109270Y;
        if (cVar == null) {
            N7.c.D().s0(this);
            this.f109277f0.setVisibility(0);
            this.f109278g0.setVisibility(0);
            return;
        }
        cVar.y();
        if (C15169a.q()) {
            N7.c.D().u(this);
            this.f109277f0.setVisibility(8);
            this.f109278g0.setVisibility(8);
        } else {
            N7.c.D().s0(this);
            this.f109277f0.setVisibility(0);
            this.f109278g0.setVisibility(0);
        }
    }

    public final c.a<T> u1(s7.c<T> s10) {
        return new d(s10);
    }

    public T v1() {
        return this.f109281j0;
    }

    public String w1() {
        return this.f109280i0;
    }

    public void x1(int id2) {
        for (int i10 = 0; i10 < id2; i10++) {
            if (!this.f109269X.isEmpty()) {
                y1(this.f109269X.remove(r1.size() - 1));
            }
        }
    }

    public final void y1(s7.c<T> newStage) {
        s7.c<T> cVar = this.f109270Y;
        if (cVar != null) {
            cVar.q();
            N7.c.D().s0(this);
            this.f109270Y.u(null);
            this.f109270Y = null;
        }
        this.f109275d0.removeAllViews();
        newStage.u(u1(newStage));
        newStage.r();
        this.f109275d0.addView(newStage.p());
        A1();
        this.f109270Y = newStage;
        String m10 = newStage.m();
        if (m10 != null && !m10.isEmpty()) {
            D1(m10);
        }
        String g10 = newStage.g();
        if (g10 != null) {
            this.f109274c0.setText(g10);
        } else {
            this.f109274c0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        }
        if (newStage.o() && newStage.c()) {
            this.f109274c0.setVisibility(0);
        } else {
            this.f109274c0.setVisibility(8);
        }
        if (this.f109269X.isEmpty()) {
            this.f109273b0.setVisibility(8);
        } else {
            this.f109273b0.setVisibility(0);
        }
    }

    public final void z1(s7.c<T> newStage) {
        s7.c<T> cVar = this.f109270Y;
        if (cVar != null) {
            cVar.q();
            N7.c.D().s0(this);
            this.f109269X.addLast(this.f109270Y);
            this.f109270Y = null;
        }
        this.f109275d0.removeAllViews();
        newStage.u(u1(newStage));
        newStage.r();
        this.f109275d0.addView(newStage.p());
        A1();
        this.f109270Y = newStage;
        String g10 = newStage.g();
        if (g10 != null) {
            this.f109274c0.setText(g10);
        } else {
            this.f109274c0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        }
        String m10 = this.f109270Y.m();
        if (m10 != null && !m10.isEmpty()) {
            D1(m10);
        }
        if (newStage.o() && newStage.c()) {
            this.f109274c0.setVisibility(0);
        } else {
            this.f109274c0.setVisibility(8);
        }
        if (this.f109269X.isEmpty()) {
            this.f109273b0.setVisibility(8);
        } else {
            this.f109273b0.setVisibility(0);
        }
    }

    public C15236b(String titleText, s7.c<T> stage) {
        super(null, titleText);
        this.f109269X = new C14981m<>();
        this.f109272a0 = false;
        this.f109281j0 = null;
        this.f109280i0 = titleText;
        this.f109271Z = stage;
    }
}
