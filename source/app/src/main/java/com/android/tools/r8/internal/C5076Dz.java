package com.android.tools.r8.internal;

import org.apache.commons.math3.geometry.VectorFormat;

public class C5076Dz {

    public static final C5076Dz f39705b = new C5076Dz(a.f39726t);

    public static final boolean f39706c = true;

    public final a f39707a;

    public enum a {
        f39708b,
        f39709c,
        f39710d,
        f39711e,
        f39712f,
        f39713g,
        f39714h,
        f39715i,
        f39716j,
        f39717k,
        f39718l,
        f39719m,
        f39720n,
        f39721o,
        f39722p,
        f39723q,
        f39724r,
        EF0,
        EF0,
        f39725s,
        f39726t;

        a() {
        }
    }

    public C5076Dz(a aVar) {
        this.f39707a = aVar;
    }

    public a a() {
        return this.f39707a;
    }

    public String b() {
        switch (AbstractC5018Cz.f39395a[a().ordinal()]) {
            case 1:
            case 2:
            case 3:
                return "referenced in keep rule";
            case 4:
                return "satisfied with precondition";
            case 5:
                return "instantiated in";
            case 6:
                return "invoked via super from";
            case 7:
                return "targeted by super from";
            case 8:
                return "invoked from";
            case 9:
                return "invoked from lambda created in";
            case 10:
                return "annotated on";
            case 11:
                return "referenced from";
            case 12:
                return "reflected from";
            case 13:
                return "reachable from";
            case 14:
                return "referenced in annotation";
            case 15:
                return "overriding method";
            case 16:
                return "defined in library method overridden by";
            case 17:
                return "referenced by method handle";
            case 18:
                return "companion class for";
            case 19:
                return "companion method for";
            case 20:
                return "referenced from xml";
            case 21:
                return "kept for unknown reasons";
            default:
                if (f39706c) {
                    return "kept for unknown reasons";
                }
                throw new AssertionError((Object) ("Unknown edge kind: " + ((Object) a())));
        }
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C5076Dz) && ((C5076Dz) obj).f39707a == this.f39707a;
        }
        return true;
    }

    public final int hashCode() {
        return this.f39707a.hashCode();
    }

    public final String toString() {
        return "{edge-type:" + this.f39707a.toString() + VectorFormat.DEFAULT_SUFFIX;
    }
}
