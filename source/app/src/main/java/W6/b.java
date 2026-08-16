package W6;

import Ic.C2630i;
import V6.d;
import Z6.i;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import r4.C15147a;

public class b extends d {

    public EditText f27289b;

    public CheckBox f27290c;

    public class a implements q.f.k {
        public a() {
        }

        @Override
        public void a(String message) {
        }

        @Override
        public void b() {
            V5.a.p1();
        }

        @Override
        public void c(String email, boolean confirmed, String confirmedAt, int etd) {
            if (email.equals("")) {
                return;
            }
            b.this.f27289b.setText(email);
        }
    }

    public class C0766b extends AbstractViewOnClickListenerC12733a {

        public class a extends SteppedArrayList<C12908b> {

            public class C0767a implements dd.d {
                public C0767a() {
                }

                @Override
                public void onSelected(View v10) {
                    C2630i.p("https://itsmagic.com.br/terms-and-conditions.html", b.this.c());
                }
            }

            public class C0768b implements dd.d {
                public C0768b() {
                }

                @Override
                public void onSelected(View v10) {
                    C2630i.p("https://itsmagic.com.br/privacypolicy.html", b.this.c());
                }
            }

            public a() {
                add(new C12908b(Lang.l(Lang.T.READ_TERMS_AND_CONDITIONS_OF_USE), new C0767a()));
                add(new C12908b(Lang.l(Lang.T.READ_PRIVACY_POLICY), new C0768b()));
            }
        }

        public C0766b() {
        }

        @Override
        public void click(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new a());
        }
    }

    public class c implements q.f.k {

        public final V6.b f27296a;

        public class a implements q.f.j {
            public a() {
            }

            @Override
            public void a(String message) {
                c.this.f27296a.b();
            }

            @Override
            public void b() {
                V5.a.p1();
                c.this.f27296a.a();
            }

            @Override
            public void onSuccess() {
                c.this.f27296a.b();
            }
        }

        public class C0769b implements q.f.j {

            public class a implements q.f.j {
                public a() {
                }

                @Override
                public void a(String message) {
                    i.y1("Failed", "Error: " + message);
                    c.this.f27296a.a();
                }

                @Override
                public void b() {
                    V5.a.p1();
                    c.this.f27296a.a();
                }

                @Override
                public void onSuccess() {
                    c.this.f27296a.b();
                }
            }

            public C0769b() {
            }

            @Override
            public void a(String message) {
                b.this.f27289b.setError(message);
                c.this.f27296a.a();
            }

            @Override
            public void b() {
                V5.a.p1();
                c.this.f27296a.a();
            }

            @Override
            public void onSuccess() {
                q.f.c(new a());
            }
        }

        public c(final V6.b val$l) {
            this.f27296a = val$l;
        }

        @Override
        public void a(String message) {
            b.this.f27289b.setError(message);
            this.f27296a.a();
        }

        @Override
        public void b() {
            V5.a.p1();
            this.f27296a.a();
        }

        @Override
        public void c(String email, boolean confirmed, String confirmedAt, int etd) {
            if (!b.this.f27289b.getText().toString().equals(email)) {
                q.f.d(b.this.f27289b.getText().toString(), new C0769b());
            } else if (etd > 0) {
                this.f27296a.b();
            } else {
                q.f.c(new a());
            }
        }
    }

    @Override
    public View f() {
        View inflate = e().inflate(R.layout.confirm_email_stage1, (ViewGroup) null);
        this.f27289b = (EditText) inflate.findViewById(R.id.email);
        ((TextView) inflate.findViewById(R.id.warning_text)).setText(Lang.l(Lang.T.CONFIRM_EMAIL_WARNING));
        q.f.a(new a());
        TextView textView = (TextView) inflate.findViewById(R.id.read_terms);
        SpannableString spannableString = new SpannableString(Lang.l(Lang.T.TAP_HERE_TO_READ));
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        textView.setText(spannableString);
        textView.setOnClickListener(new C0766b());
        CheckBox checkBox = (CheckBox) inflate.findViewById(R.id.aggre);
        this.f27290c = checkBox;
        checkBox.setText(Lang.l(Lang.T.ACCEPT_THE_TERMS_OF_SERVICE));
        return inflate;
    }

    @Override
    public void h(V6.b l10) {
        if (!this.f27290c.isChecked()) {
            N7.c.v0("Accept the privacy terms to proceed");
            l10.a();
        } else if (!Tc.b.C(this.f27289b.getText().toString())) {
            this.f27289b.setError("This is not a valid email");
        } else {
            this.f27289b.setError(null);
            q.f.a(new c(l10));
        }
    }
}
