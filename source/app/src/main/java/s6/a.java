package S6;

import Ic.C2630i;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class a extends EditorPanel {

    public static final String f22987X = "AccountSettings";

    public class C0553a extends AbstractViewOnClickListenerC12733a {
        public C0553a() {
        }

        @Override
        public void click(View view) {
            T6.a.w1();
            a.this.R0();
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            U6.a.u1();
            a.this.R0();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View view) {
            C2630i.m(com.itsmagic.engine.Core.Components.GIAP.c.f72502a);
            a.this.R0();
        }
    }

    public static FloatingPanelArea p1() {
        FloatingPanelArea m10 = C15147a.m(new a(), N7.c.g(200), N7.c.f(150));
        m10.T();
        m10.F1(true);
        return m10;
    }

    public static FloatingPanelArea q1(View anchor, C15147a.e anchorSide) {
        FloatingPanelArea g10 = C15147a.g(anchor, new a(), anchorSide, N7.c.g(200), N7.c.f(150));
        g10.T();
        g10.F1(true);
        return g10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.account_settings_panel, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) inflate.findViewById(R.id.change_password);
        ((TextView) linearLayout.findViewById(R.id.title)).setText(Lang.l(Lang.T.CHANGE_PASSWORD));
        linearLayout.setOnClickListener(new C0553a());
        linearLayout.setVisibility(8);
        LinearLayout linearLayout2 = (LinearLayout) inflate.findViewById(R.id.change_user_name);
        ((TextView) linearLayout2.findViewById(R.id.title)).setText(Lang.l(Lang.T.CHANGE_USER_NAME));
        linearLayout2.setOnClickListener(new b());
        linearLayout2.setVisibility(8);
        LinearLayout linearLayout3 = (LinearLayout) inflate.findViewById(R.id.cancel_vip);
        ((TextView) linearLayout3.findViewById(R.id.title)).setText(Lang.l(Lang.T.CANCEL_VIP));
        linearLayout3.setOnClickListener(new c());
        if (!UserController.U()) {
            linearLayout3.setVisibility(8);
        }
        return inflate;
    }
}
