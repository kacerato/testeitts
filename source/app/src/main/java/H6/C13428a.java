package h6;

import Ic.C2630i;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine2.R;
import ed.C13056c;
import hd.e;
import java.util.HashMap;
import r4.C15147a;

public class C13428a extends EditorPanel {

    public static final String f90299X = "OldVersionBlock";

    public static boolean f90300Y = false;

    public class C1731a implements hd.d {
        @Override
        public void a(String result) {
            Log.e("PanelsController", "Error:" + result);
        }

        @Override
        public void b(String result) {
            Log.e("PanelsController", result);
            String g10 = hd.c.g(hd.c.h(result), "version_status");
            if (g10.equalsIgnoreCase("deprecated")) {
                C13429b.p1();
            } else if (g10.equalsIgnoreCase("offline")) {
                C13428a.s1();
            }
            boolean unused = C13428a.f90300Y = true;
        }
    }

    public class b extends HashMap<String, String> {
        public b() {
            put("version", W7.b.f27306f.a());
        }
    }

    public class c implements View.OnTouchListener {
        public c() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class d extends AbstractViewOnClickListenerC12733a {
        public d() {
        }

        @Override
        public void click(View v10) {
            C2630i.k();
        }
    }

    public C13428a() {
        super(null, "block");
    }

    public static void r1() {
        if (f90300Y) {
            return;
        }
        C13056c c13056c = new C13056c(new C1731a());
        b bVar = new b();
        bVar.putAll(q.i.f());
        bVar.putAll(q.g.a());
        c13056c.d(new e(H8.a.a(H8.a.f8304g, "status.php"), bVar, N7.c.t()));
    }

    public static void s1() {
        C13428a c13428a = new C13428a();
        FloatingPanelArea m10 = C15147a.m(c13428a, 1.0f, 1.0f);
        m10.N0(true, true, true, false);
        m10.g(c13428a);
        m10.T();
        m10.F1(false);
        m10.E1(true);
        m10.N1(false);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.old_version_block, (ViewGroup) null);
        inflate.setOnTouchListener(new c());
        Button button = (Button) inflate.findViewById(R.id.update);
        button.setOnClickListener(new d());
        button.setText(Lang.l(Lang.T.STORE_UPDATE));
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
        textView.setText(Lang.l(Lang.T.OLD_VERSION_BLOCK_PANEL_TITTLE));
        textView2.setText(Lang.l(Lang.T.OLD_VERSION_BLOCK_PANEL_DESC));
        inflate.findViewById(R.id.ad_layout);
        N7.c.D().u(this);
        return inflate;
    }

    @Override
    public void G0() {
        s1();
    }

    @Override
    public EditorPanel k() {
        return new C13428a();
    }
}
