package L7;

import a6.C3585a;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Interface.FloatingPanel.FloatingPanelArea;
import com.itsmagic.engine2.R;
import r4.C15147a;

public class b {

    public Context f11630a;

    public LayoutInflater f11631b;

    public boolean f11632c = true;

    public FloatingPanelArea f11633d;

    public class a implements View.OnClickListener {

        public final L7.a f11634b;

        public a(final L7.a val$user) {
            this.f11634b = val$user;
        }

        @Override
        public void onClick(View v10) {
            C3585a.p1(this.f11634b.c(), this.f11634b.b(), v10, C15147a.e.Below);
        }
    }

    public b(Context context) {
        this.f11630a = context;
        this.f11631b = LayoutInflater.from(context);
    }

    public View a(L7.a user) {
        View inflate = this.f11631b.inflate(R.layout.marketplace_user_name_view_module, (ViewGroup) null);
        c(inflate, user);
        return inflate;
    }

    public void b(boolean allowProTag) {
        this.f11632c = allowProTag;
    }

    public void c(View layout, L7.a user) {
        layout.setOnClickListener(new a(user));
        TextView textView = (TextView) layout.findViewById(R.id.user_name);
        ((LinearLayout) layout.findViewById(R.id.user_profile_module)).removeAllViews();
        textView.setText(user.c());
    }
}
