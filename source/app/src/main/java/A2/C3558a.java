package a2;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import java.util.Arrays;

public final class C3558a implements InterfaceC3561d {

    public final float f31678a;

    public C3558a(float f10) {
        this.f31678a = f10;
    }

    @Override
    public float a(@NonNull RectF rectF) {
        return this.f31678a;
    }

    public float b() {
        return this.f31678a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3558a) && this.f31678a == ((C3558a) obj).f31678a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31678a)});
    }
}
