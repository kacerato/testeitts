package g2;

import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import com.google.android.material.textfield.TextInputLayout;

public class C13286a extends c {
    public C13286a(@NonNull TextInputLayout textInputLayout, @DrawableRes int i10) {
        super(textInputLayout, i10);
    }

    @Override
    public void a() {
        this.f88035a.setEndIconDrawable(this.f88038d);
        this.f88035a.setEndIconOnClickListener(null);
        this.f88035a.setEndIconOnLongClickListener(null);
    }
}
