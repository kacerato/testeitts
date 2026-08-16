package R5;

import Ic.C2630i;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import dd.C12908b;
import dd.d;
import r4.C15147a;

public class a extends s7.c<O5.b> {

    public static final String f22563g = "STAGE_EMAIL";

    public CheckBox f22564e;

    public EditText f22565f;

    public class C0541a implements TextView.OnEditorActionListener {

        public final O5.b f22566b;

        public C0541a(final O5.b val$data) {
            this.f22566b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f22566b.m(a.this.f22565f.getText().toString());
            return false;
        }
    }

    public class b implements View.OnFocusChangeListener {

        public final O5.b f22568a;

        public b(final O5.b val$data) {
            this.f22568a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f22568a.m(a.this.f22565f.getText() != null ? a.this.f22565f.getText().toString() : null);
        }
    }

    public class c extends AbstractViewOnClickListenerC12733a {

        public class C0542a extends SteppedArrayList<C12908b> {

            public class C0543a implements d {
                public C0543a() {
                }

                @Override
                public void onSelected(View v10) {
                    C2630i.p("https://itsmagic.com.br/terms-and-conditions.html", a.this.f());
                }
            }

            public class b implements d {
                public b() {
                }

                @Override
                public void onSelected(View v10) {
                    C2630i.p("https://itsmagic.com.br/privacypolicy.html", a.this.f());
                }
            }

            public C0542a() {
                add(new C12908b(Lang.l(Lang.T.READ_TERMS_AND_CONDITIONS_OF_USE), new C0543a()));
                add(new C12908b(Lang.l(Lang.T.READ_PRIVACY_POLICY), new b()));
            }
        }

        public c() {
        }

        @Override
        public void click(View v10) {
            Y6.a.F1(v10, C15147a.e.Below, new C0542a());
        }
    }

    public a() {
        super(f22563g);
        super.a(new R5.b());
    }

    @Override
    public boolean b() {
        this.f22565f.setError(null);
        O5.a f10 = i().f(f22563g);
        if (f10 != null && f10.b() != null && !f10.b().isEmpty()) {
            if (this.f22565f.getText().toString().equals(f10.a())) {
                this.f22565f.setError(f10.b());
                return false;
            }
            this.f22565f.setError(null);
            i().i(f10);
        }
        if (!this.f22564e.isChecked()) {
            N7.c.w0(Lang.l(Lang.T.REGISTER_TERMS_AND_CONDITIONS_REJECTED), true);
        } else {
            if (Tc.b.C(this.f22565f.getText().toString())) {
                return true;
            }
            this.f22565f.setError(Lang.l(Lang.T.INVALID_EMAIL_WARNING));
        }
        return false;
    }

    @Override
    public String m() {
        return Lang.l(Lang.T.REGISTER_NEW_ACCOUNT);
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.register_new_account_stage_1, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.email_text);
        this.f22564e = (CheckBox) inflate.findViewById(R.id.aggre);
        this.f22565f = (EditText) inflate.findViewById(R.id.email_edit);
        textView.setText(Lang.l(Lang.T.VALID_EMAIL_FOR_CONFIRMATION));
        this.f22564e.setText(Lang.l(Lang.T.ACCEPT_THE_TERMS_OF_SERVICE));
        O5.b i10 = i();
        O5.a f10 = i10.f(f22563g);
        if (f10 != null && !f10.b().isEmpty()) {
            this.f22565f.setError(f10.b());
        }
        this.f22565f.setOnEditorActionListener(new C0541a(i10));
        this.f22565f.setOnFocusChangeListener(new b(i10));
        String c10 = i10.c();
        if (c10 != null && !c10.isEmpty()) {
            this.f22565f.setText(c10);
        }
        TextView textView2 = (TextView) inflate.findViewById(R.id.read_terms);
        SpannableString spannableString = new SpannableString(Lang.l(Lang.T.TAP_HERE_TO_READ));
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        textView2.setText(spannableString);
        textView2.setOnClickListener(new c());
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
