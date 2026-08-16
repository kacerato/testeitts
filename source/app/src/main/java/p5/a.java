package P5;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.EditorActivity;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine2.R;
import s7.c;
import y0.C16131b;

public class a extends c<O5.b> {

    public class C0505a extends AbstractViewOnClickListenerC12733a {
        public C0505a() {
        }

        @Override
        public void click(View view) {
            a.this.n("STAGE_ACCESS");
        }
    }

    public class b extends AbstractViewOnClickListenerC12733a {
        public b() {
        }

        @Override
        public void click(View view) {
            C16131b z10 = N7.c.z();
            z10.C();
            N7.c.o().startActivityForResult(z10.g0(), EditorActivity.f69786M);
            a.this.t();
        }
    }

    public a() {
        super.a(new Q5.a());
        super.a(new R5.a());
    }

    @Override
    public boolean b() {
        return true;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public String m() {
        return Lang.l(Lang.T.ACCOUNT_ITSMAGIC);
    }

    @Override
    public View p() {
        View inflate = this.f109288a.inflate(R.layout.account_itsmagic_panel, (ViewGroup) null);
        View findViewById = inflate.findViewById(R.id.loginWithITsMagic);
        findViewById.setOnClickListener(new C0505a());
        ((TextView) findViewById.findViewById(R.id.already_have_account_text)).setText(Lang.l(Lang.T.ALREADY_HAVE_ACCOUNT_TEXT));
        View findViewById2 = inflate.findViewById(R.id.loginWithGoogle);
        findViewById2.setOnClickListener(new b());
        TextView textView = (TextView) findViewById2.findViewById(R.id.already_have_account_text);
        TextView textView2 = (TextView) findViewById2.findViewById(R.id.log_in);
        textView.setText(Lang.l(Lang.T.LOGIN_WITH_GOOGLE));
        textView2.setText(Lang.l(Lang.T.LOGIN_WITH_GOOGLE_SUB));
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
