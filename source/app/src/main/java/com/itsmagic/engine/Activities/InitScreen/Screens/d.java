package com.itsmagic.engine.Activities.InitScreen.Screens;

import Ic.C2630i;
import Z6.i;
import android.app.Activity;
import android.provider.Telephony;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.PasswordEditText.PasswordEditText;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine2.R;
import ed.C13056c;
import java.util.HashMap;
import org.json.JSONObject;

public class d extends com.itsmagic.engine.Activities.InitScreen.a {

    public EditText f72409b;

    public PasswordEditText f72410c;

    public EditText f72411d;

    public PasswordEditText f72412e;

    public PasswordEditText f72413f;

    public Button f72414g;

    public Button f72415h;

    public TextView f72416i;

    public View f72417j;

    public View f72418k;

    public View f72419l;

    public View f72420m;

    public ProgressBar f72421n;

    public ProgressBar f72422o;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View b10) {
            d.this.f72411d.setError(null);
            d.this.f72412e.setError(null);
            d.this.f72413f.setError(null);
            d.this.f72410c.setText("");
            if (d.this.f72409b.getText() != null) {
                d.this.f72411d.setText(d.this.f72409b.getText());
            }
            d.this.A();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View v10) {
            d.this.f72409b.setError(null);
            d.this.f72410c.setError(null);
            d.this.f72412e.setText("");
            d.this.f72413f.setText("");
            if (d.this.f72411d.getText() != null) {
                d.this.f72409b.setText(d.this.f72411d.getText());
            }
            d.this.z();
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override
        public void onClick(View v10) {
            C2630i.p("https://itsmagic.com.br/privacypolicy.html", d.this.b());
        }
    }

    public class ViewOnClickListenerC1164d implements View.OnClickListener {

        public final CheckBox f72426b;

        public ViewOnClickListenerC1164d(final CheckBox val$aggre) {
            this.f72426b = val$aggre;
        }

        @Override
        public void onClick(View v10) {
            if (!this.f72426b.isChecked()) {
                N7.c.v0(d.this.b().getResources().getString(R.string.activity_register_checkboxerror));
            } else {
                d.this.f72422o.setVisibility(0);
                d.this.D();
            }
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View v10) {
            d.this.f72421n.setVisibility(0);
            d.this.C();
        }
    }

    public class f implements q.i.N {
        public f() {
        }

        @Override
        public void a(String token, String userID) {
            d.this.E();
            d.this.a();
        }

        @Override
        public void onError(String result) {
            d.this.E();
            if (ed.f.a(result, d.this.d(), null) != 1) {
                JSONObject h10 = hd.c.h(result);
                String g10 = hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
                String g11 = hd.c.g(h10, "error_message");
                if (g10.equals("0x0005")) {
                    EditText editText = d.this.f72409b;
                    Ac.b bVar = Lang.T.INVALID_CREDENTIALS_NEW_USER;
                    editText.setError(Lang.l(bVar));
                    d.this.f72410c.setError(Lang.l(bVar));
                    return;
                }
                d.this.f72409b.setError("Ops: " + g11);
                d.this.f72410c.setError("Ops: " + g11);
            }
        }
    }

    public class g implements hd.d {

        public final String f72430a;

        public final String f72431b;

        public g(final String val$username, final String val$password) {
            this.f72430a = val$username;
            this.f72431b = val$password;
        }

        @Override
        public void a(String result) {
            d.this.E();
            System.out.println("ERROR: " + result);
            if (ed.f.a(result, d.this.d(), new Z6.d()) != 1) {
                JSONObject h10 = hd.c.h(result);
                String g10 = hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
                String g11 = hd.c.g(h10, "error_message");
                if (g10.equals("0x0006")) {
                    d.this.f72411d.setError(Lang.l(Lang.T.USERNAME_TOO_BIG));
                    return;
                }
                if (g10.equals("0x0007")) {
                    d.this.f72412e.setError(Lang.l(Lang.T.PASSWORD_TOO_BIG));
                    return;
                }
                if (g10.equals("0x0008")) {
                    d.this.f72411d.setError(Lang.l(Lang.T.USERNAME_ALREADY_TAKEN));
                    return;
                }
                i.y1("Sorry " + g10, g11);
            }
        }

        @Override
        public void b(String result) {
            d.this.H(this.f72430a, this.f72431b);
        }
    }

    public class h extends HashMap<String, String> {

        public final String f72433b;

        public final String f72434c;

        public h(final String val$username, final String val$password) {
            this.f72433b = val$username;
            this.f72434c = val$password;
            put(View.AUTOFILL_HINT_USERNAME, val$username);
            put("password", val$password);
        }
    }

    public final void A() {
        this.f72418k.setVisibility(8);
        this.f72419l.setVisibility(8);
        this.f72417j.setVisibility(0);
    }

    public final void B() {
        this.f72414g.setVisibility(4);
        this.f72414g.setClickable(false);
        this.f72421n.setVisibility(0);
        this.f72422o.setVisibility(4);
        this.f72415h.setVisibility(4);
        this.f72415h.setClickable(false);
        this.f72416i.setVisibility(4);
        this.f72420m.setVisibility(4);
    }

    public final void C() {
        this.f72409b.setError(null);
        this.f72410c.setError(null);
        String obj = this.f72409b.getText().toString();
        String text = this.f72410c.getText();
        if (obj == null || obj.isEmpty()) {
            this.f72409b.setError(Lang.l(Lang.T.USERNAME_CANT_BE_EMPTY));
            return;
        }
        if (obj.length() >= 64) {
            this.f72409b.setError(Lang.l(Lang.T.USERNAME_TOO_BIG));
            return;
        }
        if (text == null || text.isEmpty()) {
            this.f72410c.setError(Lang.l(Lang.T.PASSWORD_CANT_BE_EMPTY));
        } else if (text.length() >= 32) {
            this.f72410c.setError(Lang.l(Lang.T.PASSWORD_TOO_BIG));
        } else {
            H(obj, text);
        }
    }

    public final void D() {
        this.f72411d.setError(null);
        this.f72412e.setError(null);
        this.f72413f.setError(null);
        String obj = this.f72411d.getText().toString();
        String text = this.f72412e.getText();
        String text2 = this.f72413f.getText();
        if (obj == null || obj.isEmpty()) {
            this.f72411d.setError(Lang.l(Lang.T.USERNAME_CANT_BE_EMPTY));
            return;
        }
        if (obj.length() >= 64) {
            this.f72411d.setError(Lang.l(Lang.T.USERNAME_TOO_BIG));
            return;
        }
        if (text == null || text.isEmpty()) {
            this.f72412e.setError(Lang.l(Lang.T.PASSWORD_CANT_BE_EMPTY));
            return;
        }
        if (text.length() >= 32) {
            this.f72412e.setError(Lang.l(Lang.T.PASSWORD_TOO_BIG));
            return;
        }
        if (text2 == null || text2.isEmpty()) {
            this.f72413f.setError(Lang.l(Lang.T.CONFIRM_PASSWORD_CANT_BE_EMPTY));
        } else if (text2.equals(text)) {
            G(this.f72411d.getText().toString(), this.f72412e.getText());
        } else {
            this.f72413f.setError(Lang.l(Lang.T.PASSWORD_DOESNT_MATCH));
        }
    }

    public final void E() {
        this.f72414g.setVisibility(0);
        this.f72414g.setClickable(true);
        this.f72421n.setVisibility(4);
        this.f72422o.setVisibility(0);
        this.f72415h.setVisibility(0);
        this.f72415h.setClickable(true);
        this.f72416i.setVisibility(0);
        this.f72420m.setVisibility(0);
    }

    public final void F(View v10) {
        TextView textView = (TextView) v10.findViewById(R.id.userNameTitle);
        Ac.b bVar = Lang.T.USERNAME;
        textView.setText(Lang.l(bVar));
        TextView textView2 = (TextView) v10.findViewById(R.id.passwordTitle);
        Ac.b bVar2 = Lang.T.PASSWORD;
        textView2.setText(Lang.l(bVar2));
        ((TextView) v10.findViewById(R.id.welcome_login)).setText(Lang.l(Lang.T.WELCOME_LOGIN));
        ((TextView) v10.findViewById(R.id.welcome_register)).setText(Lang.l(Lang.T.WELCOME_REGISTER));
        ((TextView) v10.findViewById(R.id.new_account)).setText(Lang.l(Lang.T.NEW_ACCOUNT_TEXT));
        ((TextView) v10.findViewById(R.id.registerUsernameTitle)).setText(Lang.l(bVar));
        ((TextView) v10.findViewById(R.id.registerPasswordTitle)).setText(Lang.l(bVar2));
        ((TextView) v10.findViewById(R.id.registerConfirmPasswordTitle)).setText(Lang.l(Lang.T.CONFIRM_PASSWORD));
    }

    public final void G(String username, String password) {
        C13056c c13056c = new C13056c(new g(username, password));
        h hVar = new h(username, password);
        H8.a aVar = W7.b.f27306f.f2460c;
        c13056c.d(new hd.e(H8.a.a(H8.a.f8298a, "RegisterUser.php"), hVar, d()));
        B();
    }

    public final void H(String username, String password) {
        q.i.m(username, password, new f());
        B();
    }

    @Override
    public View e(LinearLayout parent, Activity activity, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.login_and_register_screen, (ViewGroup) null);
        this.f72409b = (EditText) inflate.findViewById(R.id.userNameEditText);
        this.f72410c = (PasswordEditText) inflate.findViewById(R.id.passwordEditText);
        this.f72411d = (EditText) inflate.findViewById(R.id.userNameRegister);
        this.f72412e = (PasswordEditText) inflate.findViewById(R.id.passwordRegister);
        this.f72413f = (PasswordEditText) inflate.findViewById(R.id.confirmPasswordRegister);
        this.f72421n = (ProgressBar) inflate.findViewById(R.id.login_progress);
        this.f72422o = (ProgressBar) inflate.findViewById(R.id.register_progress);
        F(inflate);
        this.f72417j = inflate.findViewById(R.id.register_layout);
        this.f72418k = inflate.findViewById(R.id.login_layout);
        this.f72419l = inflate.findViewById(R.id.icon_layout);
        z();
        this.f72416i = (TextView) inflate.findViewById(R.id.new_account);
        SpannableString spannableString = new SpannableString(this.f72416i.getText());
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        this.f72416i.setText(spannableString);
        this.f72416i.setOnClickListener(new a());
        View findViewById = inflate.findViewById(R.id.exit);
        this.f72420m = findViewById;
        findViewById.setOnClickListener(new b());
        TextView textView = (TextView) inflate.findViewById(R.id.read_terms);
        SpannableString spannableString2 = new SpannableString(Lang.l(Lang.T.TAP_HERE_TO_READ));
        spannableString2.setSpan(new UnderlineSpan(), 0, spannableString2.length(), 0);
        textView.setText(spannableString2);
        textView.setOnClickListener(new c());
        CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.aggre);
        checkBox.setText(Lang.l(Lang.T.ACCEPT_THE_TERMS_OF_SERVICE));
        Button button = (Button) inflate.findViewById(R.id.register_button);
        this.f72415h = button;
        button.setText(Lang.l(Lang.T.REGISTER));
        this.f72415h.setOnClickListener(new ViewOnClickListenerC1164d(checkBox));
        Button button2 = (Button) inflate.findViewById(R.id.login_button);
        this.f72414g = button2;
        button2.setText(Lang.l(Lang.T.ACCESS));
        this.f72414g.setOnClickListener(new e());
        return inflate;
    }

    @Override
    public boolean i(Activity activity) {
        UserController userController = W7.b.f27306f.f2461d;
        return userController == null || !userController.Q();
    }

    @Override
    public void k(Activity activity) {
    }

    public final void z() {
        this.f72417j.setVisibility(8);
        this.f72418k.setVisibility(0);
        this.f72419l.setVisibility(0);
    }
}
