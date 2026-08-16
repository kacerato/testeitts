package Q5;

import Z6.c;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.TextView;
import bd.C3867a;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.PasswordEditText.PasswordEditText;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.GIAP.GIAP;
import com.itsmagic.engine2.R;

public class a extends s7.c<O5.b> {

    public Q5.b f21918e;

    public EditText f21919f;

    public PasswordEditText f21920g;

    public ProgressBar f21921h;

    public boolean f21922i;

    public boolean f21923j;

    public class C0527a implements TextView.OnEditorActionListener {

        public final O5.b f21924b;

        public C0527a(final O5.b val$data) {
            this.f21924b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f21924b.q(a.this.f21919f.getText().toString());
            return false;
        }
    }

    public class b implements View.OnFocusChangeListener {

        public final O5.b f21926a;

        public b(final O5.b val$data) {
            this.f21926a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f21926a.q(a.this.f21919f.getText() != null ? a.this.f21919f.getText().toString() : null);
        }
    }

    public class c implements TextView.OnEditorActionListener {

        public final O5.b f21928b;

        public c(final O5.b val$data) {
            this.f21928b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f21928b.n(a.this.f21920g.getText());
            return false;
        }
    }

    public class d implements View.OnFocusChangeListener {

        public final O5.b f21930a;

        public d(final O5.b val$data) {
            this.f21930a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f21930a.n(a.this.f21920g.getText() != null ? a.this.f21920g.getText() : null);
        }
    }

    public class e extends AbstractViewOnClickListenerC12733a {
        public e() {
        }

        @Override
        public void click(View v10) {
            a aVar = a.this;
            aVar.s(aVar.f21918e);
        }
    }

    public class f implements q.i.I {

        public final String f21933a;

        public final String f21934b;

        public class C0528a extends c.h {
            public C0528a() {
            }

            @Override
            public void a(c.g dialog) {
                super.a(dialog);
                f fVar = f.this;
                a.this.F(fVar.f21933a, fVar.f21934b);
            }

            @Override
            public void b(c.g dialog) {
                super.b(dialog);
            }
        }

        public f(final String val$username, final String val$password) {
            this.f21933a = val$username;
            this.f21934b = val$password;
        }

        @Override
        public void a() {
            a.this.f21921h.setVisibility(8);
            Z6.c.z1("Ops!", new C3867a("Another device is logged into your account, if you continue that device will be logged out.", "Outro dispositivo est\u00e1 logado na sua conta, se voc\u00ea continuar esse dispositivo ser\u00e1 deslogado.").toString(), new C0528a());
        }

        @Override
        public void b() {
            a.this.F(this.f21933a, this.f21934b);
        }

        @Override
        public void onError(String result) {
            try {
                a.this.f21921h.setVisibility(8);
                if (ed.f.a(result, a.this.h(), null) != 1) {
                    hd.c.g(hd.c.h(result), "info");
                    if (a.this.f21919f == null || a.this.f21920g == null) {
                        return;
                    }
                    EditText editText = a.this.f21919f;
                    Ac.b bVar = Lang.T.INVALID_CREDENTIALS_NEW_USER;
                    editText.setError(Lang.l(bVar));
                    a.this.f21920g.setError(Lang.l(bVar));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class g implements q.i.N {
        public g() {
        }

        @Override
        public void a(String token, String userID) {
            a.this.H();
            a.this.t();
        }

        @Override
        public void onError(String result) {
            try {
                a.this.f21921h.setVisibility(8);
                if (ed.f.a(result, a.this.h(), null) != 1) {
                    hd.c.g(hd.c.h(result), "info");
                    if (a.this.f21919f == null || a.this.f21920g == null) {
                        return;
                    }
                    EditText editText = a.this.f21919f;
                    Ac.b bVar = Lang.T.INVALID_CREDENTIALS_NEW_USER;
                    editText.setError(Lang.l(bVar));
                    a.this.f21920g.setError(Lang.l(bVar));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public a() {
        super("STAGE_ACCESS");
        Q5.b bVar = new Q5.b();
        this.f21918e = bVar;
        super.a(bVar);
    }

    public final void F(String username, String password) {
        this.f21921h.setVisibility(0);
        q.i.m(username, password, new g());
    }

    public final void G() {
        this.f21919f.setError(null);
        this.f21920g.setError(null);
        String obj = this.f21919f.getText().toString();
        String text = this.f21920g.getText();
        if (obj == null || obj.isEmpty()) {
            this.f21919f.setError(Lang.l(Lang.T.USERNAME_CANT_BE_EMPTY));
            return;
        }
        if (obj.length() >= 64) {
            this.f21919f.setError(Lang.l(Lang.T.USERNAME_TOO_BIG));
            return;
        }
        if (text == null || text.isEmpty()) {
            this.f21920g.setError(Lang.l(Lang.T.PASSWORD_CANT_BE_EMPTY));
        } else if (text.length() >= 32) {
            this.f21920g.setError(Lang.l(Lang.T.PASSWORD_TOO_BIG));
        } else {
            I(obj, text);
        }
    }

    public final void H() {
        if (this.f21922i) {
            this.f21922i = false;
        }
        GIAP.l();
    }

    public final void I(String username, String password) {
        this.f21921h.setVisibility(0);
        q.i.g(username, password, new f(username, password));
    }

    @Override
    public boolean b() {
        G();
        return false;
    }

    @Override
    public String g() {
        return Lang.l(Lang.T.FINALIZE);
    }

    @Override
    public String m() {
        return Lang.l(Lang.T.ACCESS_ACCOUNT);
    }

    @Override
    public boolean o() {
        return true;
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.access_account_itsmagic, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.password_tittle);
        TextView textView2 = (TextView) inflate.findViewById(R.id.user_name_tittle);
        this.f21919f = (EditText) inflate.findViewById(R.id.user_name_edit);
        this.f21920g = (PasswordEditText) inflate.findViewById(R.id.password_edit);
        this.f21921h = (ProgressBar) inflate.findViewById(R.id.progress);
        textView.setText(Lang.l(Lang.T.PASSWORD));
        textView2.setText(Lang.l(Lang.T.USERNAME));
        O5.b i10 = i();
        this.f21919f.setOnEditorActionListener(new C0527a(i10));
        this.f21919f.setOnFocusChangeListener(new b(i10));
        this.f21920g.setOnEditorActionListener(new c(i10));
        this.f21920g.setOnFocusChangeListener(new d(i10));
        String g10 = i10.g();
        if (g10 != null && !g10.isEmpty()) {
            this.f21919f.setText(g10);
        }
        String d10 = i10.d();
        if (d10 != null && !d10.isEmpty()) {
            this.f21920g.setText(d10);
        }
        TextView textView3 = (TextView) inflate.findViewById(R.id.forgot_password);
        SpannableString spannableString = new SpannableString(Lang.l(Lang.T.FORGOT_PASSWORD));
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        textView3.setText(spannableString);
        textView3.setOnClickListener(new e());
        return inflate;
    }

    @Override
    public void q() {
        super.q();
    }

    @Override
    public void y() {
        super.y();
    }
}
