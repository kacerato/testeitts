package Q5;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.q;
import com.itsmagic.engine2.R;

public class b extends s7.c<O5.b> {

    public static final String f21938h = "PassRecovery";

    public EditText f21939e;

    public boolean f21940f;

    public boolean f21941g;

    public class a implements TextView.OnEditorActionListener {

        public final O5.b f21942b;

        public a(final O5.b val$data) {
            this.f21942b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f21942b.l(b.this.f21939e.getText().toString());
            return false;
        }
    }

    public class ViewOnFocusChangeListenerC0529b implements View.OnFocusChangeListener {

        public final O5.b f21944a;

        public ViewOnFocusChangeListenerC0529b(final O5.b val$data) {
            this.f21944a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f21944a.l(b.this.f21939e.getText() != null ? b.this.f21939e.getText().toString() : null);
        }
    }

    public class c implements q.i.H {
        public c() {
        }

        @Override
        public void a(String message) {
            b.this.f21939e.setError(message);
            b.this.f21941g = false;
        }

        @Override
        public void b() {
            V5.a.p1();
            b.this.f21941g = false;
        }

        @Override
        public void onSuccess() {
            b.this.f21940f = true;
            b.this.n(Q5.c.f21947f);
            b.this.f21941g = false;
        }
    }

    public b() {
        super(f21938h);
        super.a(new Q5.c());
    }

    @Override
    public boolean b() {
        if (this.f21940f) {
            return true;
        }
        if (!this.f21941g) {
            this.f21941g = true;
            this.f21939e.setError(null);
            if (Tc.b.C(this.f21939e.getText().toString())) {
                q.i.o(this.f21939e.getText().toString(), new c());
                return false;
            }
            this.f21941g = true;
            this.f21939e.setError(Lang.l(Lang.T.INVALID_EMAIL_WARNING));
        }
        return false;
    }

    @Override
    public String m() {
        return "Password recovery";
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.recovery_pass_stage, (ViewGroup) null);
        this.f21939e = (EditText) inflate.findViewById(R.id.email_edit);
        O5.b i10 = i();
        O5.a f10 = i10.f(f21938h);
        if (f10 != null && !f10.b().isEmpty()) {
            this.f21939e.setError(f10.b());
        }
        this.f21939e.setOnEditorActionListener(new a(i10));
        this.f21939e.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0529b(i10));
        String c10 = i10.c();
        if (c10 != null && !c10.isEmpty()) {
            this.f21939e.setText(c10);
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
