package com.android.tools.r8.internal;

import java.lang.classfile.Attributes;

/* JADX WARN: $VALUES field not found */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
public final class KM {

    public static final KM f41648c = new KM(0, "GENERIC_SIGNATURES", "Signature");

    public static final KM f41649d = new KM(1, "RUNTIME_VISIBLE_ANNOTATIONS", "RuntimeVisibleAnnotations");

    public static final KM f41650e = new KM(2, "RUNTIME_VISIBLE_PARAMETER_ANNOTATIONS", "RuntimeVisibleParameterAnnotations");

    public static final KM f41651f = new KM(3, "RUNTIME_VISIBLE_TYPE_ANNOTATIONS", Attributes.NAME_RUNTIME_VISIBLE_TYPE_ANNOTATIONS);

    public static final KM f41652g = new KM(4, "RUNTIME_INVISIBLE_ANNOTATIONS", "RuntimeInvisibleAnnotations");

    public static final KM f41653h = new KM(5, "RUNTIME_INVISIBLE_PARAMETER_ANNOTATIONS", "RuntimeInvisibleParameterAnnotations");

    public static final KM f41654i = new KM(6, "RUNTIME_INVISIBLE_TYPE_ANNOTATIONS", Attributes.NAME_RUNTIME_INVISIBLE_TYPE_ANNOTATIONS);

    public final String f41655b;

    public KM(int i10, String str, String str2) {
        this.f41655b = str2;
    }
}
