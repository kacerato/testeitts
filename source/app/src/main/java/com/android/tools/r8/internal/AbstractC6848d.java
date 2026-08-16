package com.android.tools.r8.internal;

import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.NoSuchElementException;
import java.util.Objects;

public abstract class AbstractC6848d {

    public static final Type[] f47245a = new Type[0];

    public static final boolean f47246b = true;

    public static Type a(Type type) {
        if (type instanceof Class) {
            Class cls = (Class) type;
            return cls.isArray() ? new C6348a(a(cls.getComponentType())) : cls;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            return new C6515b(parameterizedType.getOwnerType(), parameterizedType.getRawType(), parameterizedType.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            return new C6348a(((GenericArrayType) type).getGenericComponentType());
        }
        if (!(type instanceof WildcardType)) {
            return type;
        }
        WildcardType wildcardType = (WildcardType) type;
        return new C6681c(wildcardType.getUpperBounds(), wildcardType.getLowerBounds());
    }

    public static Class b(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            Type rawType = ((ParameterizedType) type).getRawType();
            if (rawType instanceof Class) {
                return (Class) rawType;
            }
            throw new IllegalArgumentException();
        }
        if (type instanceof GenericArrayType) {
            return Array.newInstance((Class<?>) b(((GenericArrayType) type).getGenericComponentType()), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (f47246b || upperBounds.length == 1) {
                return b(upperBounds[0]);
            }
            throw new AssertionError();
        }
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + ((Object) type) + "> is of type " + (type == null ? "null" : type.getClass().getName()));
    }

    public static String c(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    public static boolean a(Type type, Type type2) {
        if (type == type2) {
            return true;
        }
        if (type instanceof Class) {
            return type.equals(type2);
        }
        if (type instanceof ParameterizedType) {
            if (!(type2 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            ParameterizedType parameterizedType2 = (ParameterizedType) type2;
            return Objects.equals(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType()) && parameterizedType.getRawType().equals(parameterizedType2.getRawType()) && Arrays.equals(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            if (type2 instanceof GenericArrayType) {
                return a(((GenericArrayType) type).getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType());
            }
            return false;
        }
        if (type instanceof WildcardType) {
            if (!(type2 instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) type;
            WildcardType wildcardType2 = (WildcardType) type2;
            return Arrays.equals(wildcardType.getUpperBounds(), wildcardType2.getUpperBounds()) && Arrays.equals(wildcardType.getLowerBounds(), wildcardType2.getLowerBounds());
        }
        if (!(type instanceof TypeVariable) || !(type2 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable typeVariable = (TypeVariable) type;
        TypeVariable typeVariable2 = (TypeVariable) type2;
        return typeVariable.getGenericDeclaration() == typeVariable2.getGenericDeclaration() && typeVariable.getName().equals(typeVariable2.getName());
    }

    public static Type b(Type type, Class cls, Class cls2) {
        if (type instanceof WildcardType) {
            Type[] upperBounds = ((WildcardType) type).getUpperBounds();
            if (!f47246b && upperBounds.length != 1) {
                throw new AssertionError();
            }
            type = upperBounds[0];
        }
        if (cls2.isAssignableFrom(cls)) {
            return a(type, cls, a(type, cls, cls2), new HashMap());
        }
        throw new IllegalArgumentException();
    }

    public static Type a(Type type, Class cls, Class cls2) {
        if (cls2 == cls) {
            return type;
        }
        if (cls2.isInterface()) {
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                Class<?> cls3 = interfaces[i10];
                if (cls3 == cls2) {
                    return cls.getGenericInterfaces()[i10];
                }
                if (cls2.isAssignableFrom(cls3)) {
                    return a(cls.getGenericInterfaces()[i10], interfaces[i10], cls2);
                }
            }
        }
        if (!cls.isInterface()) {
            while (cls != Object.class) {
                Class<?> superclass = cls.getSuperclass();
                if (superclass == cls2) {
                    return cls.getGenericSuperclass();
                }
                if (cls2.isAssignableFrom(superclass)) {
                    return a(cls.getGenericSuperclass(), superclass, cls2);
                }
                cls = superclass;
            }
        }
        return cls2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x013d, code lost:
    
        if (r3 == null) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x013f, code lost:
    
        r12.put(r3, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0142, code lost:
    
        return r11;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x013d A[EDGE_INSN: B:24:0x013d->B:25:0x013d BREAK  A[LOOP:0: B:2:0x0004->B:29:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[LOOP:0: B:2:0x0004->B:29:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.reflect.Type] */
    /* JADX WARN: Type inference failed for: r11v10, types: [java.lang.reflect.Type, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v15 */
    /* JADX WARN: Type inference failed for: r11v16 */
    /* JADX WARN: Type inference failed for: r11v18, types: [java.lang.reflect.Type[]] */
    /* JADX WARN: Type inference failed for: r11v19 */
    /* JADX WARN: Type inference failed for: r11v2, types: [java.lang.reflect.WildcardType] */
    /* JADX WARN: Type inference failed for: r11v3, types: [com.android.tools.r8.internal.c] */
    /* JADX WARN: Type inference failed for: r11v4, types: [com.android.tools.r8.internal.c] */
    /* JADX WARN: Type inference failed for: r11v5, types: [java.lang.reflect.ParameterizedType] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.reflect.GenericArrayType] */
    /* JADX WARN: Type inference failed for: r11v7 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.util.HashMap] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Type a(Type type, Class cls, Type type2, HashMap hashMap) {
        Type a10;
        Type[] typeArr;
        Type[] typeArr2;
        Type c6515b;
        TypeVariable typeVariable = null;
        while (true) {
            if (type2 instanceof TypeVariable) {
                TypeVariable typeVariable2 = type2;
                Type type3 = (Type) hashMap.get(typeVariable2);
                if (type3 != null) {
                    return type3 == Void.TYPE ? type2 : type3;
                }
                hashMap.put(typeVariable2, Void.TYPE);
                if (typeVariable == null) {
                    typeVariable = typeVariable2;
                }
                GenericDeclaration genericDeclaration = typeVariable2.getGenericDeclaration();
                Class cls2 = genericDeclaration instanceof Class ? (Class) genericDeclaration : null;
                if (cls2 != null) {
                    Type a11 = a(type, cls, cls2);
                    if (a11 instanceof ParameterizedType) {
                        TypeVariable[] typeParameters = cls2.getTypeParameters();
                        int length = typeParameters.length;
                        for (int i10 = 0; i10 < length; i10++) {
                            if (typeVariable2.equals(typeParameters[i10])) {
                                type2 = ((ParameterizedType) a11).getActualTypeArguments()[i10];
                                if (type2 != typeVariable2) {
                                    break;
                                }
                            }
                        }
                        throw new NoSuchElementException();
                    }
                }
                type2 = typeVariable2;
                if (type2 != typeVariable2) {
                }
            } else {
                if (type2 instanceof Class) {
                    Class cls3 = type2;
                    if (cls3.isArray()) {
                        Class<?> componentType = cls3.getComponentType();
                        Type a12 = a(type, cls, componentType, hashMap);
                        if (Objects.equals(componentType, a12)) {
                            type2 = cls3;
                        } else {
                            c6515b = new C6348a(a12);
                            type2 = c6515b;
                        }
                    }
                }
                if (type2 instanceof GenericArrayType) {
                    type2 = (GenericArrayType) type2;
                    Type genericComponentType = type2.getGenericComponentType();
                    Type a13 = a(type, cls, genericComponentType, hashMap);
                    if (!Objects.equals(genericComponentType, a13)) {
                        c6515b = new C6348a(a13);
                        type2 = c6515b;
                    }
                } else if (type2 instanceof ParameterizedType) {
                    type2 = (ParameterizedType) type2;
                    Type ownerType = type2.getOwnerType();
                    Type a14 = a(type, cls, ownerType, hashMap);
                    boolean z10 = !Objects.equals(a14, ownerType);
                    Type[] actualTypeArguments = type2.getActualTypeArguments();
                    int length2 = actualTypeArguments.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        Type a15 = a(type, cls, actualTypeArguments[i11], hashMap);
                        if (!Objects.equals(a15, actualTypeArguments[i11])) {
                            if (!z10) {
                                actualTypeArguments = (Type[]) actualTypeArguments.clone();
                                z10 = true;
                            }
                            actualTypeArguments[i11] = a15;
                        }
                    }
                    if (z10) {
                        c6515b = new C6515b(a14, type2.getRawType(), actualTypeArguments);
                        type2 = c6515b;
                    }
                } else if (type2 instanceof WildcardType) {
                    type2 = (WildcardType) type2;
                    Type[] lowerBounds = type2.getLowerBounds();
                    Type[] upperBounds = type2.getUpperBounds();
                    if (lowerBounds.length == 1) {
                        Type a16 = a(type, cls, lowerBounds[0], hashMap);
                        if (a16 != lowerBounds[0]) {
                            if (a16 instanceof WildcardType) {
                                typeArr2 = ((WildcardType) a16).getLowerBounds();
                            } else {
                                typeArr2 = new Type[]{a16};
                            }
                            type2 = new C6681c(new Type[]{Object.class}, typeArr2);
                        }
                    } else if (upperBounds.length == 1 && (a10 = a(type, cls, upperBounds[0], hashMap)) != upperBounds[0]) {
                        if (a10 instanceof WildcardType) {
                            typeArr = ((WildcardType) a10).getUpperBounds();
                        } else {
                            typeArr = new Type[]{a10};
                        }
                        type2 = new C6681c(typeArr, f47245a);
                    }
                }
            }
        }
    }
}
