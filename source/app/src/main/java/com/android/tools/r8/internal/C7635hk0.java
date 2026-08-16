package com.android.tools.r8.internal;

import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;
import com.android.tools.r8.retrace.RetraceClassElement;
import com.android.tools.r8.retrace.RetraceTypeElement;
import com.android.tools.r8.retrace.RetraceTypeResult;
import com.android.tools.r8.retrace.RetracedTypeReference;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public final class C7635hk0 implements RetraceTypeResult {

    public static final boolean f48703c = true;

    public final TypeReference f48704a;

    public final List f48705b;

    public C7635hk0(TypeReference typeReference, List list, C10137wk0 c10137wk0) {
        this.f48704a = typeReference;
        this.f48705b = list;
    }

    public static List a(TypeReference typeReference, C10137wk0 c10137wk0) {
        if (typeReference == null) {
            return Collections.EMPTY_LIST;
        }
        if (typeReference.isPrimitive()) {
            return Collections.singletonList(new C9803uk0(typeReference));
        }
        if (typeReference.isArray()) {
            final int dimensions = typeReference.asArray().getDimensions();
            return AT.a((Collection) a(typeReference.asArray().getBaseType(), c10137wk0), new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C7635hk0.a(dimensions, (RetracedTypeReference) obj);
                }
            });
        }
        if (f48703c || typeReference.isClass()) {
            return (List) c10137wk0.retraceClass(typeReference.asClass()).stream().map(new Function() {
                @Override
                public final Object apply(Object obj) {
                    RetracedTypeReference retracedType;
                    retracedType = ((RetraceClassElement) obj).getRetracedClass().getRetracedType();
                    return retracedType;
                }
            }).collect(Collectors.toList());
        }
        throw new AssertionError();
    }

    @Override
    public final void forEach(Consumer<RetraceTypeElement> consumer) {
        stream().forEach(consumer);
    }

    @Override
    public final boolean isAmbiguous() {
        return this.f48705b.size() > 1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f48705b.size() == 0;
    }

    @Override
    public final Stream<RetraceTypeElement> stream() {
        return AT.a((Collection) this.f48705b, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C7635hk0.this.a((RetracedTypeReference) obj);
            }
        }).stream();
    }

    public static RetracedTypeReference a(int i10, RetracedTypeReference retracedTypeReference) {
        return new C9803uk0(Reference.array(retracedTypeReference.getTypeReference(), i10));
    }

    public final RetraceTypeElement a(RetracedTypeReference retracedTypeReference) {
        return new C7468gk0(this, retracedTypeReference);
    }
}
