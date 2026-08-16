package com.android.tools.r8.internal;

import com.android.tools.r8.AbstractC4281a;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.Reference;

public final class C5105Ek0 {

    public ClassReference f40006a;

    public C5105Ek0(ClassReference classReference) {
        this.f40006a = classReference;
    }

    public static C5105Ek0 a(AbstractC6907dL abstractC6907dL) {
        String h10 = abstractC6907dL.h();
        int indexOf = h10.indexOf(40);
        if (indexOf >= 1 && h10.endsWith(")")) {
            String substring = h10.substring(0, indexOf);
            String a10 = AbstractC4281a.a(h10, 1, indexOf + 1);
            if ("throws".equals(substring)) {
                return a(a10);
            }
            throw new C5325If("Unexpected condition: " + h10);
        }
        throw new C5325If("Invalid formatted condition: " + h10);
    }

    public final C7906jL a() {
        return new C7906jL("throws(" + this.f40006a.getDescriptor() + ")");
    }

    public static C5105Ek0 a(String str) {
        if (C4932Bl.y(str)) {
            return new C5105Ek0(Reference.classFromDescriptor(str));
        }
        throw new C5325If("Unexpected throws-descriptor: " + str);
    }
}
