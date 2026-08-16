package com.android.tools.r8.internal;

public abstract class AbstractC7937ja0 {
    public static final Object a(AbstractC6001Ty abstractC6001Ty, C6173Wy c6173Wy) {
        GJ.c(abstractC6001Ty, "<this>");
        GJ.c(c6173Wy, "extension");
        if (c6173Wy.f45590a != abstractC6001Ty.getDefaultInstanceForType()) {
            throw new IllegalArgumentException("This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings.");
        }
        C5418Jw c5418Jw = abstractC6001Ty.f44631b;
        C6116Vy c6116Vy = c6173Wy.f45593d;
        c5418Jw.getClass();
        if (c6116Vy.f45238d) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        if (c5418Jw.f41526a.get(c6116Vy) != null) {
            return abstractC6001Ty.a(c6173Wy);
        }
        return null;
    }
}
