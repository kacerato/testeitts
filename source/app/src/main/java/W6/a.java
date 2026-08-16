package W6;

import Z6.i;
import android.annotation.SuppressLint;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import b3.s;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine2.R;

public class a extends V6.d {

    public TextView f27278b;

    public TextView f27279c;

    public final Object f27280d = new Object();

    public float f27281e = 120.0f;

    public EditText f27282f;

    public class C0764a extends AbstractViewOnClickListenerC12733a {
        public C0764a() {
        }

        @Override
        public void click(View view) {
            boolean z10;
            synchronized (a.this.f27280d) {
                z10 = a.this.f27281e <= 0.0f;
            }
            if (z10) {
                synchronized (a.this.f27280d) {
                    a.this.f27281e = 120.0f;
                }
                a.this.t();
            }
        }
    }

    public class b implements q.f.k {

        public class C0765a extends AbstractViewOnClickListenerC12733a {
            public C0765a() {
            }

            @Override
            public void click(View view) {
                a.this.a(0);
            }
        }

        public b() {
        }

        @Override
        public void a(String message) {
            synchronized (a.this.f27280d) {
                a.this.f27281e = 120.0f;
            }
        }

        @Override
        public void b() {
            synchronized (a.this.f27280d) {
                a.this.f27281e = 120.0f;
            }
        }

        @Override
        public void c(String email, boolean confirmed, String confirmedAt, int etd) {
            SpannableString spannableString = new SpannableString(Lang.l(Lang.T.THIS_EMAIL_CORRECT).replace("[x]", email));
            spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
            a.this.f27279c.setText(spannableString);
            a.this.f27279c.setOnClickListener(new C0765a());
            synchronized (a.this.f27280d) {
                a.this.f27281e = Nc.b.N(0, etd);
            }
            a.this.t();
        }
    }

    public class c implements q.f.j {
        public c() {
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
            synchronized (a.this.f27280d) {
                a.this.f27281e = 120.0f;
            }
        }
    }

    public class d implements q.f.j {

        public final V6.b f27287a;

        public d(final V6.b val$nextListener) {
            this.f27287a = val$nextListener;
        }

        @Override
        public void a(String message) {
            a.this.f27282f.setError(message);
            this.f27287a.a();
        }

        @Override
        public void b() {
            V5.a.p1();
            this.f27287a.a();
        }

        @Override
        public void onSuccess() {
            a.this.i();
        }
    }

    @Override
    public void b() {
        synchronized (this.f27280d) {
            try {
                float f10 = this.f27281e;
                if (f10 > 0.0f) {
                    this.f27281e = f10 - K8.d.e();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public View f() {
        View inflate = e().inflate(R.layout.confirm_email_stage2, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.warning);
        ((TextView) inflate.findViewById(R.id.code_text)).setText(Lang.l(Lang.T.CODE));
        this.f27282f = (EditText) inflate.findViewById(R.id.code);
        textView.setText(Lang.l(Lang.T.CONFIRM_CODE_WARNING));
        TextView textView2 = (TextView) inflate.findViewById(R.id.change_email);
        this.f27279c = textView2;
        textView2.setText("");
        TextView textView3 = (TextView) inflate.findViewById(R.id.resend_code);
        this.f27278b = textView3;
        textView3.setText("");
        this.f27278b.setVisibility(0);
        this.f27278b.setOnClickListener(new C0764a());
        q.f.a(new b());
        return inflate;
    }

    @Override
    public void h(V6.b nextListener) {
        String obj = this.f27282f.getText().toString();
        this.f27282f.setError(null);
        if (obj != null && obj.length() == 8) {
            q.f.b(this.f27282f.getText().toString(), new d(nextListener));
        } else {
            this.f27282f.setError("Please fill with a valid code");
            nextListener.a();
        }
    }

    @Override
    @SuppressLint({"SetTextI18n"})
    public void l() {
        super.l();
        synchronized (this.f27280d) {
            try {
                if (this.f27281e > 0.0f) {
                    this.f27278b.setText(Lang.l(Lang.T.EMAIL_RESEND_CODE_AFTER).replace("X", s(this.f27281e)));
                } else {
                    SpannableString spannableString = new SpannableString(Lang.l(Lang.T.EMAIL_RESEND_CODE));
                    spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
                    this.f27278b.setText(spannableString);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final String s(float t10) {
        float f10 = t10 / 60.0f;
        int i10 = (int) f10;
        int i11 = (int) ((f10 - i10) * 60.0f);
        if (i11 >= 10) {
            return i10 + s.f32937c + i11;
        }
        return i10 + ":0" + i11;
    }

    public final void t() {
        q.f.c(new c());
    }
}
