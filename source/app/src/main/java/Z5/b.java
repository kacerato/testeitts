package Z5;

import android.content.res.ColorStateList;
import android.view.View;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;

public class b {

    public LinearLayout f30766a;

    public boolean f30767b = false;

    public View.OnClickListener f30768c;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View v10) {
            b.this.d(!r0.f30767b);
            if (b.this.f30768c != null) {
                b.this.f30768c.onClick(v10);
            }
        }
    }

    public b(LinearLayout v10) {
        this.f30766a = v10;
        v10.setOnClickListener(new a());
        d(false);
    }

    public boolean c() {
        return this.f30767b;
    }

    public void d(boolean checked) {
        this.f30767b = checked;
        if (checked) {
            this.f30766a.setBackgroundResource(R.drawable.editor3d_v2_rounded_button_checkbox_checked);
            this.f30766a.setBackgroundTintList(ColorStateList.valueOf(Theme.i(Theme.T.HIGH_ICON_TINT)));
        } else {
            this.f30766a.setBackgroundResource(R.drawable.editor3d_v2_rounded_button_checkbox_unchecked);
            this.f30766a.setBackgroundTintList(N7.c.t().getResources().getColorStateList(R.color.theme_mid_icon_tint));
        }
    }

    public void e(View.OnClickListener onClickListener) {
        this.f30768c = onClickListener;
    }
}
