package G7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;

public class c extends G7.a {

    public int f7678a;

    public int f7679b;

    public int f7680c;

    public b f7681d;

    public ImageView f7682e;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View v10) {
            c.this.f7681d.onClick(v10);
        }
    }

    public interface b {
        void onClick(View view);
    }

    public c(b listener) {
        this.f7678a = R.drawable.empty_image;
        this.f7679b = Theme.i(Theme.T.MID_ICON_TINT);
        this.f7680c = 2;
        this.f7681d = listener;
    }

    @Override
    public void a(LayoutInflater layoutInflater, Context context, LinearLayout parent, int height) {
        FrameLayout frameLayout = new FrameLayout(context);
        ImageView imageView = new ImageView(context);
        this.f7682e = imageView;
        frameLayout.addView(imageView);
        parent.addView(frameLayout);
        int k02 = Nc.b.k0(this.f7680c);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.height = height;
        layoutParams.width = height;
        frameLayout.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f7682e.getLayoutParams();
        int i10 = (height - k02) - k02;
        layoutParams2.height = i10;
        layoutParams2.width = i10;
        layoutParams2.leftMargin = k02;
        layoutParams2.topMargin = k02;
        this.f7682e.setLayoutParams(layoutParams2);
        k();
        frameLayout.setOnClickListener(new a());
    }

    public int c() {
        return this.f7679b;
    }

    public int d() {
        return this.f7678a;
    }

    public b e() {
        return this.f7681d;
    }

    public int f() {
        return this.f7680c;
    }

    public void g(int color) {
        this.f7679b = color;
        k();
    }

    public void h(int icon) {
        this.f7678a = icon;
        k();
    }

    public void i(b listener) {
        this.f7681d = listener;
    }

    public void j(int padding) {
        this.f7680c = padding;
    }

    public final void k() {
        Context t10 = N7.c.t();
        Vc.e.V(this.f7682e, this.f7678a, t10);
        Vc.e.x(this.f7682e, t10, this.f7679b);
    }

    public c(int icon, b listener) {
        this.f7678a = R.drawable.empty_image;
        this.f7679b = Theme.i(Theme.T.MID_ICON_TINT);
        this.f7680c = 2;
        this.f7678a = icon;
        this.f7681d = listener;
    }

    public c(int icon, int color, b listener) {
        this.f7678a = R.drawable.empty_image;
        Theme.i(Theme.T.MID_ICON_TINT);
        this.f7680c = 2;
        this.f7678a = icon;
        this.f7679b = color;
        this.f7681d = listener;
    }
}
