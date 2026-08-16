package R5;

import Z6.i;
import android.provider.Telephony;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.PasswordEditText.PasswordEditText;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Core.Components.GIAP.GIAP;
import com.itsmagic.engine2.R;
import ed.C13056c;
import java.io.PrintStream;
import java.util.HashMap;
import org.json.JSONObject;
import q7.C15045a;

public class c extends s7.c<O5.b> {

    public PasswordEditText f22580e;

    public PasswordEditText f22581f;

    public boolean f22582g;

    public C15045a f22583h;

    public class a implements TextView.OnEditorActionListener {

        public final O5.b f22584b;

        public a(final O5.b val$data) {
            this.f22584b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f22584b.o(c.this.f22580e.getText());
            return false;
        }
    }

    public class b implements View.OnFocusChangeListener {

        public final O5.b f22586a;

        public b(final O5.b val$data) {
            this.f22586a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f22586a.o(c.this.f22580e.getText() != null ? c.this.f22580e.getText() : null);
        }
    }

    public class C0545c implements TextView.OnEditorActionListener {

        public final O5.b f22588b;

        public C0545c(final O5.b val$data) {
            this.f22588b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f22588b.k(c.this.f22581f.getText());
            return false;
        }
    }

    public class d implements View.OnFocusChangeListener {

        public final O5.b f22590a;

        public d(final O5.b val$data) {
            this.f22590a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f22590a.k(c.this.f22581f.getText() != null ? c.this.f22581f.getText() : null);
        }
    }

    public class e implements q.f.j {

        public final O5.b f22592a;

        public class a implements q.f.j {
            public a() {
            }

            @Override
            public void a(String message) {
                i.y1("Failed", "Error: " + message);
            }

            @Override
            public void b() {
                V5.a.p1();
            }

            @Override
            public void onSuccess() {
            }
        }

        public e(final O5.b val$data) {
            this.f22592a = val$data;
        }

        @Override
        public void a(String message) {
            try {
                c.this.i().p(R5.a.f22563g, message, this.f22592a.c());
                c.this.k().x1(2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void b() {
            V5.a.p1();
        }

        @Override
        public void onSuccess() {
            c.this.t();
            q.f.c(new a());
        }
    }

    public class f implements q.i.N {
        public f() {
        }

        @Override
        public void a(String token, String userID) {
            c.this.E();
        }

        @Override
        public void onError(String result) {
            if (c.this.f22583h != null) {
                c.this.f22583h.p1();
            }
            try {
                if (ed.f.a(result, c.this.h(), null) != 1) {
                    JSONObject h10 = hd.c.h(result);
                    String g10 = hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
                    String g11 = hd.c.g(h10, "error_message");
                    PrintStream printStream = System.out;
                    printStream.println();
                    if (g10.equals("0x0005")) {
                        printStream.println(Lang.l(Lang.T.INVALID_CREDENTIALS_NEW_USER));
                        return;
                    }
                    printStream.println("Ops: " + g11);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public class g implements hd.d {

        public final String f22596a;

        public final String f22597b;

        public g(final String val$username, final String val$passwordT) {
            this.f22596a = val$username;
            this.f22597b = val$passwordT;
        }

        @Override
        public void a(String result) {
            if (c.this.f22583h != null) {
                c.this.f22583h.p1();
            }
            try {
                System.out.println("ERROR: " + result);
                if (ed.f.a(result, c.this.h(), null) != 1) {
                    JSONObject h10 = hd.c.h(result);
                    String g10 = hd.c.g(h10, Telephony.TextBasedSmsColumns.ERROR_CODE);
                    String g11 = hd.c.g(h10, "error_message");
                    O5.b i10 = c.this.i();
                    if (g10.equals("0x0006")) {
                        i10.p(R5.b.f22574f, Lang.l(Lang.T.USERNAME_TOO_BIG), i10.h());
                        c.this.k().x1(1);
                        return;
                    }
                    if (g10.equals("0x0007")) {
                        PasswordEditText passwordEditText = c.this.f22580e;
                        Ac.b bVar = Lang.T.PASSWORD_TOO_BIG;
                        passwordEditText.setError(Lang.l(bVar));
                        c.this.f22581f.setError(Lang.l(bVar));
                        return;
                    }
                    if (g10.equals("0x0008")) {
                        i10.p(R5.b.f22574f, Lang.l(Lang.T.USERNAME_ALREADY_TAKEN), i10.h());
                        c.this.k().x1(1);
                    } else {
                        i.y1("Sorry " + g10, g11);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }

        @Override
        public void b(String result) {
            c.this.H(this.f22596a, this.f22597b);
        }
    }

    public class h extends HashMap<String, String> {

        public final String f22599b;

        public final String f22600c;

        public h(final String val$username, final String val$passwordT) {
            this.f22599b = val$username;
            this.f22600c = val$passwordT;
            put(View.AUTOFILL_HINT_USERNAME, val$username);
            put("password", val$passwordT);
        }
    }

    public c() {
        super("STAGE_PASSWORD");
    }

    public void E() {
        O5.b i10 = i();
        if (i10 != null) {
            q.f.d(i10.c(), new e(i10));
        } else {
            System.out.println("Can't set email after register");
        }
        if (this.f22582g) {
            this.f22582g = false;
        }
        GIAP.l();
    }

    public void H(String username, String password) {
        q.i.m(username, password, new f());
    }

    public final void F() {
        O5.b i10 = i();
        this.f22580e.setError(null);
        this.f22581f.setError(null);
        String text = this.f22580e.getText();
        String text2 = this.f22581f.getText();
        if (text == null || text.isEmpty()) {
            C15045a c15045a = this.f22583h;
            if (c15045a != null) {
                c15045a.p1();
            }
            this.f22580e.setError(Lang.l(Lang.T.PASSWORD_CANT_BE_EMPTY));
            return;
        }
        if (text.length() >= 32) {
            C15045a c15045a2 = this.f22583h;
            if (c15045a2 != null) {
                c15045a2.p1();
            }
            this.f22580e.setError(Lang.l(Lang.T.PASSWORD_TOO_BIG));
            return;
        }
        if (text2 == null || text2.isEmpty()) {
            C15045a c15045a3 = this.f22583h;
            if (c15045a3 != null) {
                c15045a3.p1();
            }
            this.f22581f.setError(Lang.l(Lang.T.CONFIRM_PASSWORD_CANT_BE_EMPTY));
            return;
        }
        if (!text2.equals(text)) {
            C15045a c15045a4 = this.f22583h;
            if (c15045a4 != null) {
                c15045a4.p1();
            }
            this.f22581f.setError(Lang.l(Lang.T.PASSWORD_DOESNT_MATCH));
            return;
        }
        C15045a c15045a5 = this.f22583h;
        if (c15045a5 != null) {
            c15045a5.p1();
        }
        this.f22583h = C15045a.r1();
        i10.o(text);
        i10.k(text2);
        G(i10.h(), i10.e());
    }

    public final void G(String username, String passwordT) {
        new C13056c(new g(username, passwordT)).d(new hd.e(H8.a.a(H8.a.f8298a, "RegisterUser.php"), new h(username, passwordT), h()));
    }

    @Override
    public boolean b() {
        F();
        return false;
    }

    @Override
    public String g() {
        return Lang.l(Lang.T.FINALIZE);
    }

    @Override
    public String m() {
        return Lang.l(Lang.T.REGISTER_NEW_ACCOUNT);
    }

    @Override
    public boolean o() {
        return true;
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.register_new_account_stage_3, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.password);
        TextView textView2 = (TextView) inflate.findViewById(R.id.confirm_password_tittle);
        textView.setText(Lang.l(Lang.T.PASSWORD));
        textView2.setText(Lang.l(Lang.T.CONFIRM_PASSWORD));
        this.f22580e = (PasswordEditText) inflate.findViewById(R.id.password_edit);
        this.f22581f = (PasswordEditText) inflate.findViewById(R.id.confirm_password_edit);
        O5.b i10 = i();
        this.f22580e.setOnEditorActionListener(new a(i10));
        this.f22580e.setOnFocusChangeListener(new b(i10));
        this.f22581f.setOnEditorActionListener(new C0545c(i10));
        this.f22581f.setOnFocusChangeListener(new d(i10));
        String e10 = i10.e();
        if (e10 != null && !e10.isEmpty()) {
            this.f22580e.setText(e10);
        }
        String a10 = i10.a();
        if (a10 != null && !a10.isEmpty()) {
            this.f22581f.setText(a10);
        }
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
