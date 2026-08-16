package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.references.ClassReference;
import java.util.Comparator;
import java.util.function.Function;

public class C6186Xd {

    public static final Comparator f45775a = Comparator.comparing(new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((ClassReference) obj).getDescriptor();
        }
    });

    public static Comparator<ClassReference> a() {
        return f45775a;
    }

    public static String a(ClassReference classReference) {
        return classReference.getDescriptor();
    }

    public static com.android.tools.r8.graph.M2 a(ClassReference classReference, C4724u1 c4724u1) {
        return c4724u1.d(classReference.getDescriptor());
    }
}
