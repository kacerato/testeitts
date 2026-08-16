package p7;

import android.widget.ImageView;

@Deprecated
public class C14935c {

    public final ImageView f103629a;

    public boolean f103630b = true;

    public C14935c(ImageView icon) {
        this.f103629a = icon;
        b(true);
    }

    public boolean a() {
        b(this.f103630b);
        return this.f103630b;
    }

    public final void b(boolean visible) {
        ImageView imageView = this.f103629a;
        if (imageView != null) {
            imageView.setVisibility(visible ? 0 : 8);
        }
    }

    public C14935c c(boolean visible) {
        this.f103630b = visible;
        b(visible);
        return this;
    }
}
