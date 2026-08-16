package v6;

import N7.c;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C15806a extends EditorPanel {

    public static final String f121299X = "ProfilerPanel";

    public class C2066a implements q.f.k {

        public final TextView f121300a;

        public C2066a(final TextView val$emailText) {
            this.f121300a = val$emailText;
        }

        @Override
        public void a(String message) {
        }

        @Override
        public void b() {
        }

        @Override
        public void c(String email, boolean confirmed, String confirmedAt, int etd) {
            if (!confirmed) {
                this.f121300a.setVisibility(8);
            } else {
                this.f121300a.setVisibility(0);
                this.f121300a.setText(email);
            }
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            C15806a.this.R0();
        }
    }

    public static FloatingPanelArea p1() {
        FloatingPanelArea m10 = C15147a.m(new C15806a(), c.g(300), c.f(DisplayMetrics.DENSITY_360));
        m10.T();
        return m10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.profiler_level_panel, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.levelTittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.funds_tittle);
        TextView textView3 = (TextView) inflate.findViewById(R.id.coins_tittle);
        TextView textView4 = (TextView) inflate.findViewById(R.id.used_hours_tittle);
        TextView textView5 = (TextView) inflate.findViewById(R.id.user_stats);
        TextView textView6 = (TextView) inflate.findViewById(R.id.userLevel);
        TextView textView7 = (TextView) inflate.findViewById(R.id.coins);
        TextView textView8 = (TextView) inflate.findViewById(R.id.funds);
        TextView textView9 = (TextView) inflate.findViewById(R.id.userXP);
        TextView textView10 = (TextView) inflate.findViewById(R.id.email);
        TextView textView11 = (TextView) inflate.findViewById(R.id.used_hours);
        TextView textView12 = (TextView) inflate.findViewById(R.id.username);
        View findViewById = inflate.findViewById(R.id.exit_panel);
        textView.setText(Lang.l(Lang.T.LEVEL));
        textView2.setText(Lang.l(Lang.T.FUNDS));
        textView3.setText(Lang.l(Lang.T.COINS));
        textView4.setText(Lang.l(Lang.T.USED_HOURS));
        textView5.setText(Lang.l(Lang.T.USER_STATS));
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        if (userController != null) {
            textView12.setText(userController.L());
            textView7.setText(aVar.f2461d.z());
            textView8.setText(aVar.f2461d.A());
            float w12 = Nc.b.w1(aVar.f2461d.J()) / 3600.0f;
            if (w12 >= 100.0f) {
                textView11.setText("" + ((int) w12));
            } else {
                textView11.setText(Nc.b.r0(w12, 1));
            }
            q.f.a(new C2066a(textView10));
            textView9.setText(aVar.f2461d.M() + " / " + aVar.f2461d.I());
            StringBuilder sb2 = new StringBuilder();
            sb2.append(aVar.f2461d.E());
            sb2.append("");
            textView6.setText(sb2.toString());
        }
        findViewById.setOnClickListener(new b());
        return inflate;
    }
}
