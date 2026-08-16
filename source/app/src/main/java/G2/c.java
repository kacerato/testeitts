package g2;

import android.content.Context;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

public abstract class c {

    public TextInputLayout f88035a;

    public Context f88036b;

    public CheckableImageButton f88037c;

    @DrawableRes
    public final int f88038d;

    public c(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        this.f88035a = textInputLayout;
        this.f88036b = textInputLayout.getContext();
        this.f88037c = textInputLayout.getEndIconView();
        this.f88038d = i10;
    }

    public abstract void a();

    public boolean b(int i10) {
        return true;
    }

    public void c(boolean z10) {
    }

    public boolean d() {
        return false;
    }
}
