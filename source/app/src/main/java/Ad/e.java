package Ad;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;

public class e extends b {

    public final int f515d;

    public e(CharSequence charSequence, float f10, @LayoutRes int i10) {
        super(charSequence, f10);
        this.f515d = i10;
    }

    public static e d(CharSequence charSequence, float f10, @LayoutRes int i10) {
        return new e(charSequence, f10, i10);
    }

    public static e e(CharSequence charSequence, @LayoutRes int i10) {
        return d(charSequence, 1.0f, i10);
    }

    public View c(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return layoutInflater.inflate(this.f515d, viewGroup, false);
    }
}
