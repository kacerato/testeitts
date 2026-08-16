package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.ArrayReference;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.PrimitiveReference;
import com.android.tools.r8.references.TypeReference;
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.function.Function;

public class C10000vu0 {

    public static final Comparator f53371a = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return C10000vu0.a((TypeReference) obj, (TypeReference) obj2);
        }
    };

    public static final boolean f53372b = true;

    public static TypeReference a() {
        return null;
    }

    public static com.android.tools.r8.graph.M2 b(C4724u1 c4724u1, Function function, TypeReference typeReference) {
        if (typeReference == null) {
            return c4724u1.f37905M1;
        }
        if (!typeReference.isPrimitive()) {
            if (typeReference.isArray()) {
                ArrayReference asArray = typeReference.asArray();
                return c4724u1.a(asArray.getDimensions(), b(c4724u1, function, asArray.getBaseType()));
            }
            if (f53372b || typeReference.isClass()) {
                return (com.android.tools.r8.graph.M2) function.apply(typeReference.asClass());
            }
            throw new AssertionError();
        }
        PrimitiveReference asPrimitive = typeReference.asPrimitive();
        char charAt = asPrimitive.getDescriptor().charAt(0);
        if (charAt == 'F') {
            return c4724u1.f37877I1;
        }
        if (charAt == 'S') {
            return c4724u1.f37898L1;
        }
        if (charAt == 'Z') {
            return c4724u1.f37849E1;
        }
        if (charAt == 'I') {
            return c4724u1.f37884J1;
        }
        if (charAt == 'J') {
            return c4724u1.f37891K1;
        }
        switch (charAt) {
            case 'B':
                return c4724u1.f37856F1;
            case 'C':
                return c4724u1.f37863G1;
            case 'D':
                return c4724u1.f37870H1;
            default:
                throw new C5417Jv0("Invalid primitive descriptor: " + asPrimitive.getDescriptor());
        }
    }

    public static int a(TypeReference typeReference, TypeReference typeReference2) {
        if (typeReference == typeReference2) {
            return 0;
        }
        if (typeReference == null) {
            return -1;
        }
        if (typeReference2 == null) {
            return 1;
        }
        return typeReference.getDescriptor().compareTo(typeReference2.getDescriptor());
    }

    public static com.android.tools.r8.graph.I2 a(List list, TypeReference typeReference, final C4724u1 c4724u1) {
        return a(list, typeReference, c4724u1, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 a10;
                a10 = C6186Xd.a((ClassReference) obj, C4724u1.this);
                return a10;
            }
        });
    }

    public static com.android.tools.r8.graph.I2 a(List list, TypeReference typeReference, final C4724u1 c4724u1, final Function function) {
        return c4724u1.a(b(c4724u1, function, typeReference), AT.a((Collection) list, new Function() {
            @Override
            public final Object apply(Object obj) {
                com.android.tools.r8.graph.M2 b10;
                b10 = C10000vu0.b(C4724u1.this, function, (TypeReference) obj);
                return b10;
            }
        }));
    }
}
