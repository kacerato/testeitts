package com.github.javaparser.utils;

import com.github.javaparser.ast.type.PrimitiveType;
import com.github.javaparser.ast.type.VoidType;
import java.lang.reflect.Method;
import java.util.Optional;
import java.util.function.Function;
import java.util.function.Supplier;

public class TypeUtils {
    private static void appendDescriptor(final Class<?> clazz, final StringBuilder stringBuilder) {
        while (clazz.isArray()) {
            stringBuilder.append("[");
            clazz = clazz.getComponentType();
        }
        if (clazz.isPrimitive()) {
            stringBuilder.append(getPrimitiveTypeDescriptor(clazz));
            return;
        }
        stringBuilder.append("L");
        stringBuilder.append(clazz.getName().replace(".", "/"));
        stringBuilder.append(";");
    }

    public static String getMethodDescriptor(Method method) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("(");
        for (Class<?> cls : method.getParameterTypes()) {
            appendDescriptor(cls, sb2);
        }
        sb2.append(")");
        appendDescriptor(method.getReturnType(), sb2);
        return sb2.toString();
    }

    public static String getPrimitiveTypeDescriptor(final Class<?> clazz) {
        if (clazz == Void.TYPE || clazz == Void.class) {
            return new VoidType().toDescriptor();
        }
        final String simpleName = clazz.getSimpleName();
        Optional<PrimitiveType.Primitive> byTypeName = PrimitiveType.Primitive.byTypeName(simpleName);
        return byTypeName.isPresent() ? byTypeName.get().toDescriptor() : (String) PrimitiveType.Primitive.byBoxedTypeName(simpleName).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                String descriptor;
                descriptor = ((PrimitiveType.Primitive) obj).toDescriptor();
                return descriptor;
            }
        }).orElseThrow(new Supplier() {
            @Override
            public final Object get() {
                IllegalArgumentException lambda$getPrimitiveTypeDescriptor$1;
                lambda$getPrimitiveTypeDescriptor$1 = TypeUtils.lambda$getPrimitiveTypeDescriptor$1(String.this);
                return lambda$getPrimitiveTypeDescriptor$1;
            }
        });
    }

    public static IllegalArgumentException lambda$getPrimitiveTypeDescriptor$1(final String className) {
        return new IllegalArgumentException(String.format("Unknown primitive type \"%s\"", className));
    }
}
