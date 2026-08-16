package x1;

import android.util.Property;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import w1.C15879a;

public class C16049d extends Property<ViewGroup, Float> {

    public static final Property<ViewGroup, Float> f127894a = new C16049d("childrenAlpha");

    public C16049d(String str) {
        super(Float.class, str);
    }

    @Override
    @NonNull
    public Float get(@NonNull ViewGroup viewGroup) {
        Float f10 = (Float) viewGroup.getTag(C15879a.h.f123719d3);
        return f10 != null ? f10 : Float.valueOf(1.0f);
    }

    @Override
    public void set(@NonNull ViewGroup viewGroup, @NonNull Float f10) {
        float floatValue = f10.floatValue();
        viewGroup.setTag(C15879a.h.f123719d3, f10);
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            viewGroup.getChildAt(i10).setAlpha(floatValue);
        }
    }
}
