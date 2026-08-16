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
import r5.C15148a;
import r5.C15149b;
import r5.C15150c;
import rc.C15169a;

public class c extends EditorPanel {

    public static final String f103519h0 = "AssistanceExport";

    public final f f103520X;

    public final List<C15043a> f103521Y;

    public int f103522Z;

    public Button f103523a0;

    public Button f103524b0;

    public LinearLayout f103525c0;

    public View f103526d0;

    public View f103527e0;

    public TextView f103528f0;

    public C15043a f103529g0;

    public class a extends SteppedArrayList<C15043a> {
        public a() {
            add(new r5.d());
            add(new r5.e());
            add(new r5.f());
            add(new C15149b());
            add(new C15148a());
            add(new C15150c(c.this.f103520X));
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View v10) {
            if (c.this.f103522Z <= 0) {
                c.this.R0();
            } else {
                c.s1(c.this);
                c.this.v1();
            }
        }
    }

    public class C1941c extends AbstractViewOnClickListenerC12733a {
        public C1941c() {
        }

        @Override
        public void click(View v10) {
            if (c.this.f103522Z >= c.this.f103521Y.size() || !((C15043a) c.this.f103521Y.get(c.this.f103522Z)).d()) {
                return;
            }
            c.r1(c.this);
            c.this.v1();
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            c.this.R0();
        }
    }

    public class e implements C15043a.InterfaceC1963a {
        public e() {
        }

        @Override
        public void b() {
            c.this.R0();
        }
    }

    public enum f {
        APK,
        AAB
    }

    public c() {
        this(f.APK);
    }

    public static int r1(c cVar) {
        int i10 = cVar.f103522Z;
        cVar.f103522Z = i10 + 1;
        return i10;
    }

    public static int s1(c cVar) {
        int i10 = cVar.f103522Z;
        cVar.f103522Z = i10 - 1;
        return i10;
    }

    @SuppressLint({"SetTextI18n"})
    public void v1() {
        try {
            C15043a c15043a = this.f103521Y.get(this.f103522Z);
            C15043a c15043a2 = this.f103529g0;
            if (c15043a2 != null) {
                c15043a2.c();
                N7.c.D().s0(this.f103529g0.f105920d);
                C15043a c15043a3 = this.f103529g0;
                c15043a3.f105920d = null;
                c15043a3.g(null);
                this.f103529g0 = null;
            }
            if (this.f103522Z >= this.f103521Y.size() - 1) {
                this.f103524b0.setVisibility(8);
            } else {
                this.f103524b0.setVisibility(0);
                if (this.f103522Z <= 0) {
                    this.f103523a0.setVisibility(8);
                } else {
                    this.f103523a0.setVisibility(0);
                }
            }
            this.f103525c0.removeAllViews();
            c15043a.f105919c = A();
            c15043a.f105920d = this;
            c15043a.g(new e());
            c15043a.e();
            this.f103525c0.addView(c15043a.b());
            this.f103528f0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_STAGE) + " " + (this.f103522Z + 1) + "/" + this.f103521Y.size());
            this.f103529g0 = c15043a;
        } catch (IndexOutOfBoundsException e10) {
            e10.printStackTrace();
        }
    }

    public static FloatingPanelArea w1() {
        return x1(f.APK);
    }

    public static FloatingPanelArea x1(f exportType) {
        c cVar = new c(exportType);
        float g10 = N7.c.g(450);
        float f10 = N7.c.f(T6.a.f24083g0);
        FloatingPanelArea n10 = C15147a.n(cVar, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        return n10;
    }

    @Override
    public View C0() {
        List<C15043a> list = this.f103521Y;
        if (list == null || list.size() < 0) {
            return null;
        }
        View inflate = this.f70908j.inflate(R.layout.export_project_assistance_mode, (ViewGroup) null);
        this.f103525c0 = (LinearLayout) inflate.findViewById(R.id.content);
        this.f103528f0 = (TextView) inflate.findViewById(R.id.stage);
        ((TextView) inflate.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_TITTLE));
        this.f103526d0 = inflate.findViewById(R.id.tittle_bar);
        this.f103527e0 = inflate.findViewById(R.id.bottom_bar);
        Button button = (Button) inflate.findViewById(R.id.back);
        this.f103523a0 = button;
        button.setOnClickListener(new b());
        this.f103523a0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_BACK));
        Button button2 = (Button) inflate.findViewById(R.id.next);
        this.f103524b0 = button2;
        button2.setOnClickListener(new C1941c());
        this.f103524b0.setText(Lang.l(Lang.T.ASSISTANCE_EXPORT_NEXT));
        inflate.findViewById(R.id.f131506c).setOnClickListener(new d());
        v1();
        return inflate;
    }

    @Override
    public void n1() {
        super.n1();
        C15043a c15043a = this.f103529g0;
        if (c15043a == null) {
            N7.c.D().s0(this);
            this.f103526d0.setVisibility(0);
            this.f103527e0.setVisibility(0);
            return;
        }
        c15043a.h();
        if (C15169a.q()) {
            N7.c.D().u(this);
            this.f103526d0.setVisibility(8);
            this.f103527e0.setVisibility(8);
        } else {
            N7.c.D().s0(this);
            this.f103526d0.setVisibility(0);
            this.f103527e0.setVisibility(0);
        }
    }

    public c(f exportType) {
        super(null, "AssistanceExport");
        this.f103522Z = 0;
        this.f103520X = exportType == null ? f.APK : exportType;
        this.f103521Y = new a();
    }
}
