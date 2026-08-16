package ve;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import ve.h;

public class j extends i {

    public static final String f121589a = "%";

    public static final String f121590b = "em";

    @Override
    @NonNull
    public Rect a(@NonNull C15835a c15835a) {
        return c(c15835a.c(), c15835a.g().getBounds(), c15835a.f(), c15835a.e());
    }

    public int b(@NonNull h.a aVar, int i10, float f10) {
        return (int) ((f121590b.equals(aVar.f121588b) ? aVar.f121587a * f10 : aVar.f121587a) + 0.5f);
    }

    @NonNull
    public Rect c(@Nullable h hVar, @NonNull Rect rect, int i10, float f10) {
        Rect rect2;
        if (hVar == null) {
            int width = rect.width();
            if (width > i10) {
                return new Rect(0, 0, i10, (int) ((rect.height() / (width / i10)) + 0.5f));
            }
            return rect;
        }
        h.a aVar = hVar.f121585a;
        h.a aVar2 = hVar.f121586b;
        int width2 = rect.width();
        int height = rect.height();
        float f11 = width2 / height;
        if (aVar != null) {
            int b10 = f121589a.equals(aVar.f121588b) ? (int) ((i10 * (aVar.f121587a / 100.0f)) + 0.5f) : b(aVar, width2, f10);
            rect2 = new Rect(0, 0, b10, (aVar2 == null || f121589a.equals(aVar2.f121588b)) ? (int) ((b10 / f11) + 0.5f) : b(aVar2, height, f10));
        } else {
            if (aVar2 == null || f121589a.equals(aVar2.f121588b)) {
                return rect;
            }
            int b11 = b(aVar2, height, f10);
            rect2 = new Rect(0, 0, (int) ((b11 * f11) + 0.5f), b11);
        }
        return rect2;
    }
}
