package com.android.tools.r8.internal;

import com.android.tools.r8.references.MethodReference;
import com.android.tools.r8.retrace.RetracedMethodReference;
import java.util.Comparator;
import java.util.OptionalInt;
import java.util.function.Function;

public abstract class AbstractC9302rk0 implements RetracedMethodReference {

    public static final Comparator f52122c = Comparator.comparing(new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((RetracedMethodReference) obj).getMethodName();
        }
    }).thenComparing(new Function() {
        @Override
        public final Object apply(Object obj) {
            return Boolean.valueOf(((RetracedMethodReference) obj).isKnown());
        }
    }).thenComparing(new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((RetracedMethodReference) obj).asKnown();
        }
    }, Comparator.nullsFirst(Comparator.comparing(new Function() {
        @Override
        public final Object apply(Object obj) {
            return AbstractC9302rk0.a((RetracedMethodReference.KnownRetracedMethodReference) obj);
        }
    })).thenComparing(new Function() {
        @Override
        public final Object apply(Object obj) {
            return ((RetracedMethodReference.KnownRetracedMethodReference) obj).getFormalTypes();
        }
    }, AbstractC8619nf.b(Comparator.comparing(new C7660hs1()))));

    public final OptionalInt f52123b;

    public AbstractC9302rk0(OptionalInt optionalInt) {
        this.f52123b = optionalInt;
    }

    public C8969pk0 a() {
        return null;
    }

    @Override
    public final int getOriginalPositionOrDefault(int i10) {
        return this.f52123b.orElse(i10);
    }

    @Override
    public final boolean hasPosition() {
        return this.f52123b.isPresent();
    }

    @Override
    public final boolean isKnown() {
        return this instanceof C8969pk0;
    }

    @Override
    public boolean isUnknown() {
        return !(this instanceof C8969pk0);
    }

    public static String a(RetracedMethodReference.KnownRetracedMethodReference knownRetracedMethodReference) {
        if (knownRetracedMethodReference == null) {
            return null;
        }
        return knownRetracedMethodReference.isVoid() ? "void" : knownRetracedMethodReference.getReturnType().getTypeName();
    }

    public static C8969pk0 a(MethodReference methodReference) {
        return new C8969pk0(methodReference, OptionalInt.empty());
    }
}
