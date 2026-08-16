package M7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine2.R;

public class k extends g {

    public int f14735i;

    public k(int space) {
        this.f14735i = space;
    }

    @Override
    public void a(LinearLayout parent, Context context, LayoutInflater layoutInflater) {
        View inflate = layoutInflater.inflate(R.layout.editor_topbar_micro_space, (ViewGroup) null);
        parent.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        int i10 = this.f14735i;
        layoutParams.width = i10;
        layoutParams.height = i10;
        inflate.setLayoutParams(layoutParams);
        m(inflate);
    }
}
