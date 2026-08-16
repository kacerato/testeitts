package com.android.tools.r8.references;

import com.android.tools.r8.internal.C5417Jv0;

public abstract class PrimitiveReference implements TypeReference {

    static final a f56202a = new a();

    static final b f56203b = new b();

    static final c f56204c = new c();

    static final d f56205d = new d();

    static final e f56206e = new e();

    static final f f56207f = new f();

    static final g f56208g = new g();

    static final h f56209h = new h();

    static final boolean f56210i = true;

    public static PrimitiveReference a(String str) {
        if (!f56210i && str.length() != 1) {
            throw new AssertionError();
        }
        char charAt = str.charAt(0);
        if (charAt == 'F') {
            return f56207f;
        }
        if (charAt == 'S') {
            return f56205d;
        }
        if (charAt == 'Z') {
            return f56202a;
        }
        if (charAt == 'I') {
            return f56206e;
        }
        if (charAt == 'J') {
            return f56208g;
        }
        switch (charAt) {
            case 'B':
                return f56203b;
            case 'C':
                return f56204c;
            case 'D':
                return f56209h;
            default:
                throw new C5417Jv0("Invalid primitive descriptor: " + str);
        }
    }

    @Override
    public PrimitiveReference asPrimitive() {
        return this;
    }

    public boolean equals(Object obj) {
        return this == obj;
    }

    @Override
    public abstract String getDescriptor();

    public int hashCode() {
        return System.identityHashCode(this);
    }

    @Override
    public boolean isPrimitive() {
        return true;
    }

    private PrimitiveReference() {
    }
}
