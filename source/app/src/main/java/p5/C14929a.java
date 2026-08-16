package p5;

import android.annotation.SuppressLint;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.List;
import q5.C15043a;
import r4.C15147a;
import r5.f;
import r5.g;
import rc.C15169a;

public class C14929a extends EditorPanel {

    public static final String f103451g0 = "AssistanceExport";

    public final List<C15043a> f103452X;

    public int f103453Y;

    public Button f103454Z;

    public Button f103455a0;

    public LinearLayout f103456b0;

    public View f103457c0;

    public View f103458d0;

    public TextView f103459e0;

    public C15043a f103460f0;

    public class C1933a extends SteppedArrayList<C15043a> {
        public C1933a() {
            add(new r5.d());
            add(new r5.e());
            add(new f());
            add(new g());
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            if (C14929a.this.f103453Y <= 0) {
                C14929a.this.R0();
            } else {
                C14929a.r1(C14929a.this);
                C14929a.this.u1();
            }
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            if (C14929a.this.f103453Y >= C14929a.this.f103452X.size() || !((C15043a) C14929a.this.f103452X.get(C14929a.this.f103453Y)).d()) {
                return;
            }
            C14929a.q1(C14929a.this);
            C14929a.this.u1();
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            C14929a.this.R0();
        }
    }

    public class e implements C15043a.InterfaceC1963a {
        public e() {
        }

        @Override
        public void b() {
            C14929a.this.R0();
        }
    }

    public C14929a() {
        super(null, "AssistanceExport");
        this.f103452X = new C1933a();
        this.f103453Y = 0;
    }

    public static int q1(C14929a c14929a) {
        int i10 = c14929a.f103453Y;
        c14929a.f103453Y = i10 + 1;
        return i10;
    }

    public static int r1(C14929a c14929a) {
        int i10 = c14929a.f103453Y;
        c14929a.f103453Y = i10 - 1;
        return i10;
    }

    public static FloatingPanelArea v1() {
        C14929a c14929a = new C14929a();
        float g10 = N7.c.g(450);
        float f10 = N7.c.f(T6.a.f24083g0);
        FloatingPanelArea n10 = C15147a.n(c14929a, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        return n10;
    }

    @Override
    public View C0() {
        List<C15043a> list = this.f103452X;
        if (list == null || list.size() < 0) {
            return null;
        }
        View inflate = this.f70908j.inflate(R.layout.export_project_assistance_mode, (ViewGroup) null);
        this.f103456b0 = (LinearLayout) inflate.findViewById(R.id.content);
        this.f103459e0 = (TextView) inflate.findViewById(R.id.stage);
        ((TextView) inflate.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_TITTLE));
        this.f103457c0 = inflate.findViewById(R.id.tittle_bar);
        this.f103458d0 = inflate.findViewById(R.id.bottom_bar);
        Button button = (Button) inflate.findViewById(R.id.back);
        this.f103454Z = button;
        button.setOnClickListener(new b());
        this.f103454Z.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_BACK));
        Button button2 = (Button) inflate.findViewById(R.id.next);
        this.f103455a0 = button2;
        button2.setOnClickListener(new c());
        this.f103455a0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        inflate.findViewById(R.id.f131506c).setOnClickListener(new d());
        u1();
        return inflate;
    }

    @Override
    public void n1() {
        super.n1();
        C15043a c15043a = this.f103460f0;
        if (c15043a == null) {
            N7.c.D().s0(this);
            this.f103457c0.setVisibility(0);
            this.f103458d0.setVisibility(0);
            return;
        }
        c15043a.h();
        if (C15169a.q()) {
            N7.c.D().u(this);
            this.f103457c0.setVisibility(8);
            this.f103458d0.setVisibility(8);
        } else {
            N7.c.D().s0(this);
            this.f103457c0.setVisibility(0);
            this.f103458d0.setVisibility(0);
        }
    }

    @SuppressLint({"SetTextI18n"})
    public final void u1() {
        try {
            C15043a c15043a = this.f103452X.get(this.f103453Y);
            C15043a c15043a2 = this.f103460f0;
            if (c15043a2 != null) {
                c15043a2.c();
                N7.c.D().s0(this.f103460f0.f105920d);
                C15043a c15043a3 = this.f103460f0;
                c15043a3.f105920d = null;
                c15043a3.g(null);
                this.f103460f0 = null;
            }
            if (this.f103453Y >= this.f103452X.size() - 1) {
                this.f103455a0.setVisibility(8);
            } else {
                this.f103455a0.setVisibility(0);
                if (this.f103453Y <= 0) {
                    this.f103454Z.setVisibility(8);
                } else {
                    this.f103454Z.setVisibility(0);
                }
            }
            this.f103456b0.removeAllViews();
            c15043a.f105919c = A();
            c15043a.f105920d = this;
            c15043a.g(new e());
            c15043a.e();
            this.f103456b0.addView(c15043a.b());
            this.f103459e0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE) + " " + (this.f103453Y + 1) + "/" + this.f103452X.size());
            this.f103460f0 = c15043a;
        } catch (IndexOutOfBoundsException e10) {
            e10.printStackTrace();
        }
    }
}
