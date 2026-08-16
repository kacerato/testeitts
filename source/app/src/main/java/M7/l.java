package M7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.itsmagic.engine2.R;

public class l extends g {

    public String f14736i;

    public TextView f14737j;

    public int f14738k = (int) N7.c.t().getResources().getDimension(R.dimen.editor3d_v2_topbar_height);

    public class a implements Runnable {

        public final String f14739b;

        public a(final String val$text) {
            this.f14739b = val$text;
        }

        @Override
        public void run() {
            l.this.f14736i = this.f14739b;
            if (l.this.f14737j != null) {
                l.this.f14737j.setText(this.f14739b);
            }
        }
    }

    public l(String text) {
        this.f14736i = text;
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.editor_topbar_text, (ViewGroup) null);
        parent.addView(inflate);
        TextView textView = (TextView) inflate.findViewById(R.id.textView);
        this.f14737j = textView;
        textView.setText(this.f14736i);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.width = -2;
        layoutParams.height = this.f14738k;
        inflate.setLayoutParams(layoutParams);
        m(inflate);
    }

    public int s() {
        return this.f14738k;
    }

    public String t() {
        return this.f14736i;
    }

    public l u(int height) {
        this.f14738k = height;
        return this;
    }

    public void v(String text) {
        N7.c.j0(new a(text));
    }
}
