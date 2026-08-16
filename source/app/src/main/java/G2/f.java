package g2;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import com.google.android.material.textfield.TextInputLayout;

public class f extends c {
    public f(@NonNull TextInputLayout textInputLayout) {
        super(textInputLayout, 0);
    }

    @Override
    public void a() {
        this.f88035a.setEndIconOnClickListener(null);
        this.f88035a.setEndIconDrawable((Drawable) null);
        this.f88035a.setEndIconContentDescription((CharSequence) null);
    }
}
