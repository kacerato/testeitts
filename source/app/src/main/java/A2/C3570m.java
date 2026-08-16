package a2;

import android.graphics.RectF;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import java.util.Arrays;

public final class C3570m implements InterfaceC3561d {

    public final float f31748a;

    public C3570m(@FloatRange(from = 0.0d, to = 1.0d) float f10) {
        this.f31748a = f10;
    }

    @Override
    public float a(@NonNull RectF rectF) {
        return this.f31748a * rectF.height();
    }

    @FloatRange(from = 0.0d, to = 1.0d)
    public float b() {
        return this.f31748a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3570m) && this.f31748a == ((C3570m) obj).f31748a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.f31748a)});
    }
}
