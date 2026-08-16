package com.android.tools.r8.internal;

import com.android.tools.r8.references.ClassReference;
import java.util.Objects;

public final class HW extends JW {

    public final ClassReference f40776a;

    public final String f40777b;

    public HW(ClassReference classReference, String str) {
        this.f40776a = classReference;
        this.f40777b = str;
    }

    @Override
    public final JW a(ClassReference classReference) {
        return new HW(classReference, this.f40777b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && HW.class == obj.getClass()) {
            HW hw = (HW) obj;
            if (this.f40776a.equals(hw.f40776a) && this.f40777b.equals(hw.f40777b)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final ClassReference getHolderClass() {
        return this.f40776a;
    }

    @Override
    public final String getName() {
        return this.f40777b;
    }

    public final int hashCode() {
        return Objects.hash(this.f40776a, this.f40777b);
    }
}
