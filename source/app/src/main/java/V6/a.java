package V6;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import r4.C15147a;
import rc.C15169a;

public class a extends EditorPanel {

    public static final int f26605j0 = 300;

    public static final String f26606k0 = "ConfirmEmailPanel";

    public final List<V6.d> f26607X = new C0731a();

    public int f26608Y = 0;

    public Button f26609Z;

    public Button f26610a0;

    public LinearLayout f26611b0;

    public View f26612c0;

    public View f26613d0;

    public TextView f26614e0;

    public V6.d f26615f0;

    public String f26616g0;

    public boolean f26617h0;

    public FloatingPanelArea f26618i0;

    public class C0731a extends SteppedArrayList<V6.d> {
        public C0731a() {
            add(new W6.b());
            add(new W6.a());
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            if (a.this.f26608Y <= 0) {
                a.this.R0();
            } else {
                a.s1(a.this);
                a.this.w1();
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public class C0732a implements V6.b {
            public C0732a() {
            }

            @Override
            public void a() {
                a.this.f26610a0.setVisibility(0);
            }

            @Override
            public void b() {
                a.r1(a.this);
                a.this.w1();
                a.this.f26610a0.setVisibility(0);
            }
        }

        public c() {
        }

        @Override
        public void click(View view) {
            if (a.this.f26608Y >= a.this.f26607X.size()) {
                throw new RuntimeException("Can't advance more than stages count!");
            }
            a.this.f26610a0.setVisibility(8);
            ((V6.d) a.this.f26607X.get(a.this.f26608Y)).h(new C0732a());
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            a.this.R0();
        }
    }

    public class e implements q.f.k {
        public e() {
        }

        @Override
        public void a(String message) {
            a.this.w1();
        }

        @Override
        public void b() {
            V5.a.p1();
        }

        @Override
        public void c(String email, boolean confirmed, String confirmedAt, int etd) {
            if (!email.equals("") && !confirmed) {
                a.this.f26608Y = 1;
            }
            a.this.w1();
        }
    }

    public class f implements V6.c {

        public final Activity f26625a;

        public f(final Activity val$activity) {
            this.f26625a = val$activity;
        }

        @Override
        public Activity a() {
            return this.f26625a;
        }

        @Override
        public void b() {
            try {
                a.this.R0();
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public a c() {
            return a.this;
        }

        @Override
        public void d(int newStage) {
            a.this.x1(newStage);
        }
    }

    public a(String email) {
        this.f26616g0 = email;
    }

    public static int r1(a aVar) {
        int i10 = aVar.f26608Y;
        aVar.f26608Y = i10 + 1;
        return i10;
    }

    public static int s1(a aVar) {
        int i10 = aVar.f26608Y;
        aVar.f26608Y = i10 - 1;
        return i10;
    }

    @SuppressLint({"SetTextI18n"})
    public void w1() {
        V6.d dVar = this.f26615f0;
        if (dVar != null) {
            dVar.g();
            this.f26615f0.j(null);
            this.f26615f0 = null;
        }
        if (this.f26608Y > 0) {
            this.f26609Z.setVisibility(0);
        } else {
            this.f26609Z.setVisibility(8);
        }
        this.f26611b0.removeAllViews();
        V6.d dVar2 = this.f26607X.get(this.f26608Y);
        dVar2.j(new f(A()));
        this.f26611b0.addView(dVar2.f());
        this.f26614e0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE) + " " + (this.f26608Y + 1) + "/" + this.f26607X.size());
        this.f26615f0 = dVar2;
    }

    public static FloatingPanelArea y1(String email) {
        a aVar = new a(email);
        float g10 = N7.c.g(450);
        float f10 = N7.c.f(300);
        FloatingPanelArea n10 = C15147a.n(aVar, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        aVar.f26618i0 = n10;
        return n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.confirm_email_panel_mode, (ViewGroup) null);
        this.f26611b0 = (LinearLayout) inflate.findViewById(R.id.content);
        this.f26614e0 = (TextView) inflate.findViewById(R.id.stage);
        ((TextView) inflate.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.CONFIRM_EMAIL));
        this.f26612c0 = inflate.findViewById(R.id.tittle_bar);
        this.f26613d0 = inflate.findViewById(R.id.bottom_bar);
        Button button = (Button) inflate.findViewById(R.id.back);
        this.f26609Z = button;
        button.setOnClickListener(new b());
        this.f26609Z.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_BACK));
        Button button2 = (Button) inflate.findViewById(R.id.next);
        this.f26610a0 = button2;
        button2.setOnClickListener(new c());
        this.f26610a0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        inflate.findViewById(R.id.f131506c).setOnClickListener(new d());
        q.f.a(new e());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
    }

    @Override
    public void n1() {
        super.n1();
        V6.d dVar = this.f26615f0;
        if (dVar != null) {
            dVar.k();
            if (C15169a.q()) {
                N7.c.D().u(this);
                this.f26618i0.J1(1.0f);
                this.f26612c0.setVisibility(8);
                this.f26613d0.setVisibility(8);
                return;
            }
            N7.c.D().s0(this);
            float f10 = N7.c.f(300);
            this.f26618i0.J1(f10);
            this.f26618i0.M1(0.5f - (f10 / 2.0f));
            this.f26612c0.setVisibility(0);
            this.f26613d0.setVisibility(0);
        }
    }

    @Override
    public void o1() {
        super.o1();
        V6.d dVar = this.f26615f0;
        if (dVar != null) {
            dVar.l();
        }
    }

    public void x1(int id2) {
        this.f26608Y = id2;
        w1();
    }

    @Override
    public void z(o4.b engineUpdateData) {
        super.z(engineUpdateData);
        V6.d dVar = this.f26615f0;
        if (dVar != null) {
            dVar.b();
        }
    }
}
