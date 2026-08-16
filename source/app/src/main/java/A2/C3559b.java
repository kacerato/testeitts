package a2;

import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Arrays;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class C3559b implements InterfaceC3561d {

    public final InterfaceC3561d f31679a;

    public final float f31680b;

    public C3559b(float f10, @NonNull InterfaceC3561d interfaceC3561d) {
        while (interfaceC3561d instanceof C3559b) {
            interfaceC3561d = ((C3559b) interfaceC3561d).f31679a;
            f10 += ((C3559b) interfaceC3561d).f31680b;
        }
        this.f31679a = interfaceC3561d;
        this.f31680b = f10;
    }

    @Override
    public float a(@NonNull RectF rectF) {
        return Math.max(0.0f, this.f31679a.a(rectF) + this.f31680b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3559b)) {
            return false;
        }
        C3559b c3559b = (C3559b) obj;
        return this.f31679a.equals(c3559b.f31679a) && this.f31680b == c3559b.f31680b;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31679a, Float.valueOf(this.f31680b)});
    }
}
