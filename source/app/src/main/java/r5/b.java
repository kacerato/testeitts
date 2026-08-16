package R5;

import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine2.R;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b extends s7.c<O5.b> {

    public static final String f22574f = "STAGE_USER_NAME";

    public EditText f22575e;

    public class a implements TextView.OnEditorActionListener {

        public final O5.b f22576b;

        public a(final O5.b val$data) {
            this.f22576b = val$data;
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 6) {
                return false;
            }
            this.f22576b.r(b.this.f22575e.getText().toString());
            return false;
        }
    }

    public class ViewOnFocusChangeListenerC0544b implements View.OnFocusChangeListener {

        public final O5.b f22578a;

        public ViewOnFocusChangeListenerC0544b(final O5.b val$data) {
            this.f22578a = val$data;
        }

        @Override
        public void onFocusChange(View v10, boolean hasFocus) {
            if (hasFocus) {
                return;
            }
            this.f22578a.r(b.this.f22575e.getText() != null ? b.this.f22575e.getText().toString() : null);
        }
    }

    public b() {
        super(f22574f);
        super.a(new c());
    }

    public boolean A(String name) {
        Matcher matcher = Pattern.compile("^[a-zA-Z0-9_-]+$").matcher(name);
        if (name == null || name.isEmpty()) {
            this.f22575e.setError(Lang.l(Lang.T.USERNAME_CANT_BE_EMPTY));
            return false;
        }
        if (name.length() >= 64) {
            this.f22575e.setError(Lang.l(Lang.T.USERNAME_TOO_BIG));
            return false;
        }
        if (matcher.matches()) {
            return true;
        }
        this.f22575e.setError(Lang.l(Lang.T.UNWANTED_CHARACTERS));
        return false;
    }

    @Override
    public boolean b() {
        this.f22575e.setError(null);
        O5.a f10 = i().f(f22574f);
        if (f10 != null && f10.b() != null && !f10.b().isEmpty()) {
            if (this.f22575e.getText().toString().equals(f10.a())) {
                this.f22575e.setError(f10.b());
                return false;
            }
            this.f22575e.setError(null);
            i().i(f10);
        }
        return A(this.f22575e.getText().toString());
    }

    @Override
    public String m() {
        return Lang.l(Lang.T.REGISTER_NEW_ACCOUNT);
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.register_new_account_stage_2, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(R.id.user_name);
        this.f22575e = (EditText) inflate.findViewById(R.id.user_edit);
        textView.setText(Lang.l(Lang.T.USERNAME));
        O5.b i10 = i();
        O5.a f10 = i10.f(f22574f);
        if (f10 != null && !f10.b().isEmpty()) {
            this.f22575e.setError(f10.b());
        }
        this.f22575e.setOnEditorActionListener(new a(i10));
        this.f22575e.setOnFocusChangeListener(new ViewOnFocusChangeListenerC0544b(i10));
        String h10 = i10.h();
        if (h10 != null && !h10.isEmpty()) {
            this.f22575e.setText(h10);
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
