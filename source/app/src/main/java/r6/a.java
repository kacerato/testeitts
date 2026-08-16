package R6;

import JAVARuntime.AOnClickListener;
import JAVARuntime.AOnTouchListener;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class a extends EditorPanel {

    public static boolean f22602X = false;

    public static a f22603Y;

    public class C0546a extends AOnTouchListener {
        public C0546a() {
        }

        @Override
        public boolean onTouchEvent(View v10, MotionEvent event) {
            return true;
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            N7.c.o().startActivityForResult(N7.c.z().g0(), EditorActivity.f69787N);
        }
    }

    public class c extends AOnClickListener {
        public c() {
        }

        @Override
        public void onClickEvent(View v10) {
            boolean unused = a.f22602X = true;
            a.this.R0();
        }
    }

    public static void q1() {
        C8.a aVar;
        UserController userController;
        if (f22602X || f22603Y != null || (userController = (aVar = W7.b.f27306f).f2461d) == null || !userController.Q() || aVar.f2461d.O()) {
            return;
        }
        float g10 = N7.c.g(DisplayMetrics.DENSITY_360);
        float f10 = N7.c.f(225);
        a aVar2 = new a();
        FloatingPanelArea m10 = C15147a.m(aVar2, g10, f10);
        m10.F1(false);
        m10.E1(true);
        m10.T();
        f22603Y = aVar2;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.sync_account_itsmagic_panel, (ViewGroup) null);
        inflate.setOnTouchListener(new C0546a());
        View findViewById = inflate.findViewById(R.id.loginWithGoogle);
        findViewById.setOnClickListener(new b());
        ((TextView) findViewById.findViewById(R.id.already_have_account_text)).setText(Lang.l(Lang.T.SYNC_GOOGLE_BUTTON));
        ((TextView) inflate.findViewById(R.id.already_have_account_text2)).setText(Lang.l(Lang.T.SYNC_GOOGLE_TEXT1));
        ((TextView) inflate.findViewById(R.id.already_have_account_text3)).setText(Lang.l(Lang.T.SYNC_GOOGLE_TEXT2));
        inflate.findViewById(R.id.closeX).setOnClickListener(new c());
        return inflate;
    }

    @Override
    public void G0() {
        super.G0();
        if (f22603Y == this) {
            f22603Y = null;
        }
    }

    @Override
    public void m1() {
        super.m1();
        C8.a aVar = W7.b.f27306f;
        UserController userController = aVar.f2461d;
        if (userController == null || !userController.Q()) {
            R0();
        } else if (aVar.f2461d.O()) {
            R0();
        }
    }
}
