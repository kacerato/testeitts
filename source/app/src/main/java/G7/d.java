package G7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Extensions.ThemeSystem.Theme;
import com.itsmagic.engine2.R;

public class d extends G7.a {

    public boolean f7684a;

    public int f7685b;

    public int f7686c;

    public int f7687d;

    public int f7688e;

    public int f7689f;

    public g f7690g;

    public ImageView f7691h;

    public class a implements View.OnClickListener {

        public final Context f7692b;

        public a(final Context val$context) {
            this.f7692b = val$context;
        }

        @Override
        public void onClick(View v10) {
            d.this.f7684a = !r2.f7684a;
            d.this.f7690g.a(d.this.f7684a);
            d.this.t(this.f7692b);
        }
    }

    public d(g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        this.f7688e = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7689f = 2;
        this.f7690g = toggleListener;
    }

    @Override
    public void a(LayoutInflater layoutInflater, Context context, LinearLayout parent, int height) {
        FrameLayout frameLayout = new FrameLayout(context);
        ImageView imageView = new ImageView(context);
        this.f7691h = imageView;
        frameLayout.addView(imageView);
        parent.addView(frameLayout);
        int k02 = Nc.b.k0(this.f7689f);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
        layoutParams.height = height;
        layoutParams.width = height;
        frameLayout.setLayoutParams(layoutParams);
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f7691h.getLayoutParams();
        int i10 = (height - k02) - k02;
        layoutParams2.height = i10;
        layoutParams2.width = i10;
        layoutParams2.leftMargin = k02;
        layoutParams2.topMargin = k02;
        this.f7691h.setLayoutParams(layoutParams2);
        this.f7684a = this.f7690g.isChecked();
        t(context);
        frameLayout.setOnClickListener(new a(context));
    }

    public int f() {
        return this.f7687d;
    }

    public int g() {
        return this.f7685b;
    }

    public int h() {
        return this.f7688e;
    }

    public int i() {
        return this.f7686c;
    }

    public int j() {
        return this.f7689f;
    }

    public g k() {
        return this.f7690g;
    }

    public boolean l() {
        return this.f7684a;
    }

    public void m(boolean enabled) {
        this.f7684a = enabled;
        t(N7.c.t());
    }

    public void n(int offColor) {
        this.f7687d = offColor;
    }

    public void o(int offImage) {
        this.f7685b = offImage;
    }

    public void p(int onColor) {
        this.f7688e = onColor;
    }

    public void q(int onImage) {
        this.f7686c = onImage;
    }

    public void r(int padding) {
        this.f7689f = padding;
    }

    public void s(g toggleListener) {
        this.f7690g = toggleListener;
    }

    public final void t(Context context) {
        Vc.e.V(this.f7691h, this.f7684a ? this.f7686c : this.f7685b, context);
        Vc.e.x(this.f7691h, context, this.f7684a ? this.f7688e : this.f7687d);
    }

    public d(boolean enabled, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        this.f7688e = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7689f = 2;
        this.f7684a = enabled;
        this.f7690g = toggleListener;
    }

    public d(int offImage, int onImage, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        this.f7688e = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7689f = 2;
        this.f7685b = offImage;
        this.f7686c = onImage;
        this.f7690g = toggleListener;
    }

    public d(boolean enabled, int offImage, int onImage, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        this.f7688e = Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7689f = 2;
        this.f7684a = enabled;
        this.f7685b = offImage;
        this.f7686c = onImage;
        this.f7690g = toggleListener;
    }

    public d(int offImage, int onImage, int offColor, int onColor, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7689f = 2;
        this.f7685b = offImage;
        this.f7686c = onImage;
        this.f7687d = offColor;
        this.f7688e = onColor;
        this.f7690g = toggleListener;
    }

    public d(boolean enabled, int offImage, int onImage, int offColor, int onColor, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7689f = 2;
        this.f7684a = enabled;
        this.f7685b = offImage;
        this.f7686c = onImage;
        this.f7687d = offColor;
        this.f7688e = onColor;
        this.f7690g = toggleListener;
    }

    public d(int offImage, int onImage, int offColor, int onColor, int padding, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7685b = offImage;
        this.f7686c = onImage;
        this.f7687d = offColor;
        this.f7688e = onColor;
        this.f7689f = padding;
        this.f7690g = toggleListener;
    }

    public d(boolean enabled, int offImage, int onImage, int offColor, int onColor, int padding, g toggleListener) {
        this.f7684a = false;
        this.f7685b = R.drawable.empty_image;
        this.f7686c = R.drawable.empty_image;
        this.f7687d = Theme.i(Theme.T.MID_ICON_TINT);
        Theme.i(Theme.T.HIGH_ICON_TINT);
        this.f7684a = enabled;
        this.f7685b = offImage;
        this.f7686c = onImage;
        this.f7687d = offColor;
        this.f7688e = onColor;
        this.f7689f = padding;
        this.f7690g = toggleListener;
    }
}
