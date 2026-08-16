package com.android.tools.r8.internal;

import com.android.tools.r8.references.FieldReference;
import com.android.tools.r8.references.Reference;
import java.util.Comparator;

public class C5244Gw {

    public static final Comparator f40624a = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return C5244Gw.a((FieldReference) obj, (FieldReference) obj2);
        }
    };

    public static int a(FieldReference fieldReference, FieldReference fieldReference2) {
        int a10 = AbstractC8786of.a(C6186Xd.a().compare(fieldReference.getHolderClass(), fieldReference2.getHolderClass()));
        if (!AbstractC8786of.b(a10)) {
            return AbstractC8786of.c(a10);
        }
        int a11 = AbstractC8786of.a(fieldReference.getFieldName().compareTo(fieldReference2.getFieldName()));
        if (!AbstractC8786of.b(a11)) {
            return AbstractC8786of.c(a11);
        }
        return C10000vu0.f53371a.compare(fieldReference.getFieldType(), fieldReference2.getFieldType());
    }

    public static FieldReference a(Class<?> cls, String str) {
        try {
            return Reference.fieldFromField(cls.getDeclaredField(str));
        } catch (NoSuchFieldException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String a(FieldReference fieldReference) {
        return fieldReference.getFieldType().getTypeName() + " " + fieldReference.getHolderClass().getTypeName() + "." + fieldReference.getFieldName();
    }
}
