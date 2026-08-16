package h6;

import Ic.C2630i;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class C13429b extends EditorPanel {

    public static final String f90303X = "OldVersionWarning";

    public class a implements View.OnTouchListener {
        public a() {
        }

        @Override
        public boolean onTouch(View v10, MotionEvent event) {
            return true;
        }
    }

    public class C1732b extends AbstractViewOnClickListenerC12733a {
        public C1732b() {
        }

        @Override
        public void click(View v10) {
            C2630i.k();
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {
        public c() {
        }

        @Override
        public void click(View v10) {
            C13429b.this.R0();
        }
    }

    public C13429b() {
        super(null, "Deprecated version");
    }

    public static void p1() {
        C13429b c13429b = new C13429b();
        float g10 = N7.c.g(T6.a.f24083g0);
        float f10 = N7.c.f(T6.a.f24083g0);
        C15147a.n(c13429b, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.old_version_warning, (ViewGroup) null);
        inflate.setOnTouchListener(new a());
        Button button = (Button) inflate.findViewById(R.id.update);
        button.setOnClickListener(new C1732b());
        button.setText(Lang.l(Lang.T.STORE_UPDATE));
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
        textView.setText(Lang.l(Lang.T.OLD_VERSION_WARNING_PANEL_TITTLE));
        textView2.setText(Lang.l(Lang.T.OLD_VERSION_WARNING_PANEL_DESC));
        TextView textView3 = (TextView) inflate.findViewById(R.id.not);
        SpannableString spannableString = new SpannableString(textView3.getText());
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        textView3.setText(spannableString);
        textView3.setOnClickListener(new c());
        return inflate;
    }

    @Override
    public EditorPanel k() {
        return new C13429b();
    }
}
