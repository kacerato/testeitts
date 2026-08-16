package Ae;

import android.content.Context;
import androidx.annotation.NonNull;

public class b {

    public final float f520a;

    public b(float f10) {
        this.f520a = f10;
    }

    @NonNull
    public static b a(float f10) {
        return new b(f10);
    }

    @NonNull
    public static b b(@NonNull Context context) {
        return new b(context.getResources().getDisplayMetrics().density);
    }

    public int c(int i10) {
        return (int) ((i10 * this.f520a) + 0.5f);
    }
}
