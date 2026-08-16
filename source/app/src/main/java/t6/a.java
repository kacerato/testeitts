package T6;

import N7.c;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine.Activities.Editor.Interface.Objects.EditorPanel;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.PasswordEditText.PasswordEditText;
import com.itsmagic.engine2.R;
import r4.C15147a;
import rc.C15169a;

public class a extends EditorPanel {

    public static final String f24082f0 = "ChangeAccountPasswordPanel";

    public static final int f24083g0 = 350;

    public LinearLayout f24084X;

    public LinearLayout f24085Y;

    public FloatingPanelArea f24086Z;

    public int f24087a0;

    public PasswordEditText f24088b0;

    public PasswordEditText f24089c0;

    public PasswordEditText f24090d0;

    public View f24091e0;

    public class C0575a extends AbstractViewOnClickListenerC12733a {
        public C0575a() {
        }

        @Override
        public void click(View view) {
            boolean z10;
            if (a.this.f24087a0 != 0) {
                if (a.this.f24087a0 == 1) {
                    a.this.R0();
                    return;
                }
                return;
            }
            if (a.this.f24088b0.getText().equals("")) {
                a.this.f24088b0.setError("password is empty");
                z10 = true;
            } else {
                z10 = false;
            }
            if (a.this.f24089c0.getText().equals("")) {
                a.this.f24089c0.setError("password is empty");
                z10 = true;
            }
            if (a.this.f24090d0.getText().equals("")) {
                a.this.f24090d0.setError("password is empty");
                z10 = true;
            }
            if (!a.this.f24090d0.getText().equals(a.this.f24089c0.getText())) {
                a.this.f24090d0.setError("confirm password is incorrect");
                z10 = true;
            }
            if (z10) {
                return;
            }
            a.this.f24084X.setVisibility(8);
            a.this.f24085Y.setVisibility(0);
            a.this.f24087a0 = 1;
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

    public static FloatingPanelArea w1() {
        a aVar = new a();
        float g10 = c.g(400);
        float f10 = c.f(f24083g0);
        FloatingPanelArea n10 = C15147a.n(aVar, 0.5f - (g10 / 2.0f), 0.5f - (f10 / 2.0f), g10, f10);
        n10.T();
        aVar.f24086Z = n10;
        return n10;
    }

    @Override
    public View C0() {
        View inflate = this.f70908j.inflate(R.layout.change_account_password_panel, (ViewGroup) null);
        this.f24091e0 = inflate;
        this.f24084X = (LinearLayout) inflate.findViewById(R.id.stage1);
        this.f24085Y = (LinearLayout) this.f24091e0.findViewById(R.id.stage2);
        this.f24088b0 = (PasswordEditText) this.f24091e0.findViewById(R.id.current_password);
        this.f24089c0 = (PasswordEditText) this.f24091e0.findViewById(R.id.new_password);
        this.f24090d0 = (PasswordEditText) this.f24091e0.findViewById(R.id.confirm_password);
        this.f24084X.setVisibility(0);
        this.f24085Y.setVisibility(8);
        Button button = (Button) this.f24091e0.findViewById(R.id.confirm);
        button.setText(Lang.l(Lang.T.CONFIRM));
        button.setOnClickListener(new C0575a());
        ((LinearLayout) this.f24091e0.findViewById(R.id.closePanel)).setOnClickListener(new b());
        x1();
        return this.f24091e0;
    }

    @Override
    public void n1() {
        if (C15169a.q()) {
            c.D().u(this);
            this.f24086Z.J1(1.0f);
        } else {
            c.D().s0(this);
            float f10 = c.f(f24083g0);
            this.f24086Z.J1(f10);
            this.f24086Z.M1(0.5f - (f10 / 2.0f));
        }
    }

    public final void x1() {
        ((TextView) this.f24091e0.findViewById(R.id.tittle)).setText(Lang.l(Lang.T.CHANGE_PASSWORD));
        ((TextView) this.f24091e0.findViewById(R.id.text)).setText(Lang.l(Lang.T.CHANGE_ACCOUNT_PASSWORD_TEXT));
        ((TextView) this.f24091e0.findViewById(R.id.current_password_tittle)).setText(Lang.l(Lang.T.CURRENT_PASSWORD_TITTLE));
        ((TextView) this.f24091e0.findViewById(R.id.new_password_tittle)).setText(Lang.l(Lang.T.NEW_PASSWORD_TITTLE));
        ((TextView) this.f24091e0.findViewById(R.id.confirm_password_tittle)).setText(Lang.l(Lang.T.CONFIRM_PASSWORD_TITTLE));
        ((TextView) this.f24091e0.findViewById(R.id.warning)).setText(Lang.l(Lang.T.CHANGE_ACCOUNT_PASSWORD_WARNING));
    }
}
