package b2;

import androidx.annotation.NonNull;
import java.util.Locale;

public final class C3835d implements InterfaceC3836e {

    public static final long f32898d = 1000000000000L;

    public static final int f32899e = 1000000000;

    public static final int f32900f = 1000000;

    public static final int f32901g = 1000;

    @Override
    @NonNull
    public String a(float f10) {
        return f10 >= 1.0E12f ? String.format(Locale.US, "%.1fT", Float.valueOf(f10 / 1.0E12f)) : f10 >= 1.0E9f ? String.format(Locale.US, "%.1fB", Float.valueOf(f10 / 1.0E9f)) : f10 >= 1000000.0f ? String.format(Locale.US, "%.1fM", Float.valueOf(f10 / 1000000.0f)) : f10 >= 1000.0f ? String.format(Locale.US, "%.1fK", Float.valueOf(f10 / 1000.0f)) : String.format(Locale.US, "%.0f", Float.valueOf(f10));
    }
}
