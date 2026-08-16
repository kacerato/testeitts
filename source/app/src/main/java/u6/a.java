package U6;

import N7.c;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import r4.C15147a;
import rc.C15169a;

public class a extends EditorPanel {

    public static final String f25794c0 = "ChangeUserNamePanel";

    public static final int f25795d0 = 250;

    public FloatingPanelArea f25796X;

    public int f25797Y;

    public LinearLayout f25798Z;

    public LinearLayout f25799a0;

    public EditText f25800b0;

    public class C0714a extends AbstractViewOnClickListenerC12733a {
        public C0714a() {
        }

        @Override
        public void click(View view) {
            boolean z10;
            if (a.this.f25800b0.getText().toString().equals("")) {
                a.this.f25800b0.setError("name is empty");
                z10 = true;
            } else {
                z10 = false;
            }
            if (a.this.f25797Y != 0) {
                if (a.this.f25797Y == 1) {
                    a.this.R0();
                }
            } else {
                if (z10) {
                    return;
                }
                a.this.f25798Z.setVisibility(8);
                a.this.f25799a0.setVisibility(0);
                a.this.f25797Y = 1;
            }
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            a.this.R0();
        }
    }

    public static FloatingPanelArea u1() {
        a aVar = new a();
        float g10 = c.g(400);
        float f10 = c.f(250);
        FloatingPanelArea n10 = C15147a.n(aVar, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        aVar.f25796X = n10;
        return n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.change_user_name_panel, (ViewGroup) null);
        this.f25798Z = (LinearLayout) inflate.findViewById(R.id.stage1);
        this.f25799a0 = (LinearLayout) inflate.findViewById(R.id.stage2);
        this.f25800b0 = (EditText) inflate.findViewById(R.id.edit);
        Button button = (Button) inflate.findViewById(R.id.confirm);
        button.setText(Lang.l(Lang.T.CONFIRM));
        button.setOnClickListener(new C0714a());
        ((LinearLayout) inflate.findViewById(R.id.closePanel)).setOnClickListener(new b());
        TextView textView = (TextView) inflate.findViewById(R.id.tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.text);
        TextView textView3 = (TextView) inflate.findViewById(R.id.new_name_tittle);
        TextView textView4 = (TextView) inflate.findViewById(R.id.warning);
        textView.setText(Lang.l(Lang.T.CHANGE_USER_NAME_TITTLE));
        textView2.setText(Lang.l(Lang.T.CHANGE_USER_NAME_TEXT));
        textView3.setText(Lang.l(Lang.T.CHANGE_USER_NAME_NEW_TITTLE));
        textView4.setText(Lang.l(Lang.T.CHANGE_USER_NAME_WARNING));
        return inflate;
    }

    @Override
    public void n1() {
        if (C15169a.q()) {
            c.D().u(this);
            this.f25796X.J1(1.0f);
        } else {
            c.D().s0(this);
            float f10 = c.f(250);
            this.f25796X.J1(f10);
            this.f25796X.M1(0.5f - (f10 / 2.0f));
        }
    }
}
