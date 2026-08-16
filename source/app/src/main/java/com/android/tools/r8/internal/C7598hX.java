package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.ArrayReference;
import com.android.tools.r8.references.ClassReference;
import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import java.lang.constant.ConstantDescs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

public class C7598hX {

    public static final Comparator f48572a = new Comparator() {
        @Override
        public final int compare(Object obj, Object obj2) {
            return C7598hX.a((MethodReference) obj, (MethodReference) obj2);
        }
    };

    public static int a(MethodReference methodReference, MethodReference methodReference2) {
        int a10 = AbstractC8786of.a(C6186Xd.a().compare(methodReference.getHolderClass(), methodReference2.getHolderClass()));
        if (!AbstractC8786of.b(a10)) {
            return AbstractC8786of.c(a10);
        }
        int a11 = AbstractC8786of.a(methodReference.getMethodName().compareTo(methodReference2.getMethodName()));
        if (!AbstractC8786of.b(a11)) {
            return AbstractC8786of.c(a11);
        }
        int a12 = AbstractC8786of.a(C10000vu0.f53371a.compare(methodReference.getReturnType(), methodReference2.getReturnType()));
        if (!AbstractC8786of.b(a12)) {
            return AbstractC8786of.c(a12);
        }
        for (int i10 = 0; i10 < Math.min(methodReference.getFormalTypes().size(), methodReference2.getFormalTypes().size()); i10++) {
            int a13 = AbstractC8786of.a(C10000vu0.f53371a.compare(methodReference.getFormalTypes().get(i10), methodReference2.getFormalTypes().get(i10)));
            if (!AbstractC8786of.b(a13)) {
                return AbstractC8786of.c(a13);
            }
        }
        return methodReference.getFormalTypes().size() - methodReference2.getFormalTypes().size();
    }

    public static MethodReference b(Class<?> cls) {
        return b(Reference.classFromClass(cls));
    }

    public static MethodReference b(ClassReference classReference) {
        ArrayReference array = Reference.array(Reference.classFromClass(String.class), 1);
        int i10 = AbstractC7552hC.f48487c;
        return Reference.method(classReference, T5.b.f24045b, new C5920Sm0(array), null);
    }

    public static String b(MethodReference methodReference) {
        return a(methodReference, true, true);
    }

    public static MethodReference a(Class<?> cls) {
        return a(Reference.classFromClass(cls));
    }

    public static MethodReference a(ClassReference classReference) {
        return Reference.method(classReference, ConstantDescs.INIT_NAME, Collections.EMPTY_LIST, null);
    }

    public static MethodReference a(ClassReference classReference, TypeReference... typeReferenceArr) {
        return Reference.method(classReference, ConstantDescs.INIT_NAME, Arrays.asList(typeReferenceArr), null);
    }

    public static Comparator<MethodReference> a() {
        return f48572a;
    }

    public static MethodReference a(Class<?> cls, String str, Class<?>... clsArr) {
        try {
            return Reference.methodFromMethod(cls.getDeclaredMethod(str, clsArr));
        } catch (NoSuchMethodException e10) {
            throw new RuntimeException(e10);
        }
    }

    public static MethodReference a(int i10, String str) {
        String substring;
        int indexOf;
        String substring2 = str.substring(0, i10);
        Comparator comparator = C6186Xd.f45775a;
        ClassReference classFromDescriptor = C4932Bl.y(substring2) ? Reference.classFromDescriptor(substring2) : null;
        if (classFromDescriptor == null || (indexOf = (substring = str.substring(i10 + 2)).indexOf(40)) <= 0) {
            return null;
        }
        String substring3 = substring.substring(0, indexOf);
        String substring4 = substring.substring(indexOf);
        ArrayList arrayList = new ArrayList();
        for (String str2 : C4932Bl.e(substring4)) {
            arrayList.add(Reference.typeFromDescriptor(str2));
        }
        return Reference.method(classFromDescriptor, substring3, arrayList, Reference.returnTypeFromDescriptor(C4932Bl.t(substring4)));
    }

    public static com.android.tools.r8.graph.A2 a(MethodReference methodReference, C4724u1 c4724u1) {
        return c4724u1.a(C6186Xd.a(methodReference.getHolderClass(), c4724u1), C10000vu0.a(methodReference.getFormalTypes(), methodReference.getReturnType(), c4724u1), methodReference.getMethodName());
    }

    public static String a(MethodReference methodReference) {
        return methodReference.getHolderClass().getDescriptor() + "->" + methodReference.getMethodName() + methodReference.getMethodDescriptor();
    }

    public static String a(MethodReference methodReference, boolean z10, boolean z11) {
        String str;
        StringBuilder sb2 = new StringBuilder();
        if (z11) {
            if (methodReference.getReturnType() != null) {
                str = methodReference.getReturnType().getTypeName();
            } else {
                str = "void";
            }
            sb2.append(str);
            sb2.append(" ");
        }
        if (z10) {
            sb2.append(methodReference.getHolderClass().getTypeName());
            sb2.append(".");
        }
        sb2.append(methodReference.getMethodName());
        sb2.append("(");
        Iterator<TypeReference> it = methodReference.getFormalTypes().iterator();
        if (it.hasNext()) {
            sb2.append(it.next().getTypeName());
            while (it.hasNext()) {
                sb2.append(", ");
                sb2.append(it.next().getTypeName());
            }
        }
        sb2.append(")");
        return sb2.toString();
    }
}
