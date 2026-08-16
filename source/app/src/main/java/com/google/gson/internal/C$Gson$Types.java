package com.google.gson.internal;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Properties;
import okhttp3.v;

/* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
public final class C$Gson$Types {
    static final Type[] EMPTY_TYPE_ARRAY = new Type[0];

    private C$Gson$Types() {
        throw new UnsupportedOperationException();
    }

    public static ParameterizedType newParameterizedTypeWithOwner(Type ownerType, Type rawType, Type... typeArguments) {
        return new ParameterizedTypeImpl(ownerType, rawType, typeArguments);
    }

    public static GenericArrayType arrayOf(Type componentType) {
        return new GenericArrayTypeImpl(componentType);
    }

    public static WildcardType subtypeOf(Type bound) {
        Type[] upperBounds;
        if (bound instanceof WildcardType) {
            upperBounds = ((WildcardType) bound).getUpperBounds();
        } else {
            upperBounds = new Type[]{bound};
        }
        return new WildcardTypeImpl(upperBounds, EMPTY_TYPE_ARRAY);
    }

    public static WildcardType supertypeOf(Type bound) {
        Type[] lowerBounds;
        if (bound instanceof WildcardType) {
            lowerBounds = ((WildcardType) bound).getLowerBounds();
        } else {
            lowerBounds = new Type[]{bound};
        }
        return new WildcardTypeImpl(new Type[]{Object.class}, lowerBounds);
    }

    public static Type canonicalize(Type type) {
        if (type instanceof Class) {
            Class<?> c10 = (Class) type;
            return c10.isArray() ? new GenericArrayTypeImpl(canonicalize(c10.getComponentType())) : c10;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType p10 = (ParameterizedType) type;
            return new ParameterizedTypeImpl(p10.getOwnerType(), p10.getRawType(), p10.getActualTypeArguments());
        }
        if (type instanceof GenericArrayType) {
            GenericArrayType g10 = (GenericArrayType) type;
            return new GenericArrayTypeImpl(g10.getGenericComponentType());
        }
        if (type instanceof WildcardType) {
            WildcardType w10 = (WildcardType) type;
            return new WildcardTypeImpl(w10.getUpperBounds(), w10.getLowerBounds());
        }
        return type;
    }

    public static Class<?> getRawType(Type type) {
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            C$Gson$Preconditions.checkArgument(rawType instanceof Class);
            return (Class) rawType;
        }
        if (type instanceof GenericArrayType) {
            Type componentType = ((GenericArrayType) type).getGenericComponentType();
            return Array.newInstance(getRawType(componentType), 0).getClass();
        }
        if (type instanceof TypeVariable) {
            return Object.class;
        }
        if (type instanceof WildcardType) {
            return getRawType(((WildcardType) type).getUpperBounds()[0]);
        }
        String className = type == null ? "null" : type.getClass().getName();
        throw new IllegalArgumentException("Expected a Class, ParameterizedType, or GenericArrayType, but <" + ((Object) type) + "> is of type " + className);
    }

    static boolean equal(Object a10, Object b10) {
        return a10 == b10 || (a10 != null && a10.equals(b10));
    }

    public static boolean equals(Type a10, Type b10) {
        if (a10 == b10) {
            return true;
        }
        if (a10 instanceof Class) {
            return a10.equals(b10);
        }
        if (a10 instanceof ParameterizedType) {
            if (!(b10 instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType pa2 = (ParameterizedType) a10;
            ParameterizedType pb2 = (ParameterizedType) b10;
            return equal(pa2.getOwnerType(), pb2.getOwnerType()) && pa2.getRawType().equals(pb2.getRawType()) && Arrays.equals(pa2.getActualTypeArguments(), pb2.getActualTypeArguments());
        }
        if (a10 instanceof GenericArrayType) {
            if (!(b10 instanceof GenericArrayType)) {
                return false;
            }
            GenericArrayType ga2 = (GenericArrayType) a10;
            GenericArrayType gb2 = (GenericArrayType) b10;
            return equals(ga2.getGenericComponentType(), gb2.getGenericComponentType());
        }
        if (a10 instanceof WildcardType) {
            if (!(b10 instanceof WildcardType)) {
                return false;
            }
            WildcardType wa2 = (WildcardType) a10;
            WildcardType wb2 = (WildcardType) b10;
            return Arrays.equals(wa2.getUpperBounds(), wb2.getUpperBounds()) && Arrays.equals(wa2.getLowerBounds(), wb2.getLowerBounds());
        }
        if (!(a10 instanceof TypeVariable) || !(b10 instanceof TypeVariable)) {
            return false;
        }
        TypeVariable<?> va2 = (TypeVariable) a10;
        TypeVariable<?> vb2 = (TypeVariable) b10;
        return va2.getGenericDeclaration() == vb2.getGenericDeclaration() && va2.getName().equals(vb2.getName());
    }

    static int hashCodeOrZero(Object o10) {
        if (o10 != null) {
            return o10.hashCode();
        }
        return 0;
    }

    public static String typeToString(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }

    static Type getGenericSupertype(Type context, Class<?> rawType, Class<?> toResolve) {
        if (toResolve == rawType) {
            return context;
        }
        if (toResolve.isInterface()) {
            Class<?>[] interfaces = rawType.getInterfaces();
            int length = interfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (interfaces[i10] == toResolve) {
                    return rawType.getGenericInterfaces()[i10];
                }
                if (toResolve.isAssignableFrom(interfaces[i10])) {
                    return getGenericSupertype(rawType.getGenericInterfaces()[i10], interfaces[i10], toResolve);
                }
            }
        }
        if (!rawType.isInterface()) {
            while (rawType != Object.class) {
                Class<?> rawSupertype = rawType.getSuperclass();
                if (rawSupertype == toResolve) {
                    return rawType.getGenericSuperclass();
                }
                if (toResolve.isAssignableFrom(rawSupertype)) {
                    return getGenericSupertype(rawType.getGenericSuperclass(), rawSupertype, toResolve);
                }
                rawType = rawSupertype;
            }
        }
        return toResolve;
    }

    static Type getSupertype(Type context, Class<?> contextRawType, Class<?> supertype) {
        if (context instanceof WildcardType) {
            context = ((WildcardType) context).getUpperBounds()[0];
        }
        C$Gson$Preconditions.checkArgument(supertype.isAssignableFrom(contextRawType));
        return resolve(context, contextRawType, getGenericSupertype(context, contextRawType, supertype));
    }

    public static Type getArrayComponentType(Type array) {
        if (array instanceof GenericArrayType) {
            return ((GenericArrayType) array).getGenericComponentType();
        }
        return ((Class) array).getComponentType();
    }

    public static Type getCollectionElementType(Type context, Class<?> contextRawType) {
        Type collectionType = getSupertype(context, contextRawType, Collection.class);
        if (collectionType instanceof WildcardType) {
            collectionType = ((WildcardType) collectionType).getUpperBounds()[0];
        }
        if (collectionType instanceof ParameterizedType) {
            return ((ParameterizedType) collectionType).getActualTypeArguments()[0];
        }
        return Object.class;
    }

    public static Type[] getMapKeyAndValueTypes(Type context, Class<?> contextRawType) {
        if (context == Properties.class) {
            return new Type[]{String.class, String.class};
        }
        Type mapType = getSupertype(context, contextRawType, Map.class);
        if (mapType instanceof ParameterizedType) {
            ParameterizedType mapParameterizedType = (ParameterizedType) mapType;
            return mapParameterizedType.getActualTypeArguments();
        }
        return new Type[]{Object.class, Object.class};
    }

    public static Type resolve(Type context, Class<?> contextRawType, Type toResolve) {
        return resolve(context, contextRawType, toResolve, new HashSet());
    }

    private static Type resolve(Type context, Class<?> contextRawType, Type toResolve, Collection<TypeVariable> visitedTypeVariables) {
        Type upperBound;
        while (toResolve instanceof TypeVariable) {
            TypeVariable<?> typeVariable = (TypeVariable) toResolve;
            if (visitedTypeVariables.contains(typeVariable)) {
                return toResolve;
            }
            visitedTypeVariables.add(typeVariable);
            toResolve = resolveTypeVariable(context, contextRawType, typeVariable);
            if (toResolve == typeVariable) {
                return toResolve;
            }
        }
        if ((toResolve instanceof Class) && ((Class) toResolve).isArray()) {
            Class<?> original = (Class) toResolve;
            Type componentType = original.getComponentType();
            Type newComponentType = resolve(context, contextRawType, componentType, visitedTypeVariables);
            if (componentType == newComponentType) {
                return original;
            }
            return arrayOf(newComponentType);
        }
        if (toResolve instanceof GenericArrayType) {
            GenericArrayType original2 = (GenericArrayType) toResolve;
            Type componentType2 = original2.getGenericComponentType();
            Type newComponentType2 = resolve(context, contextRawType, componentType2, visitedTypeVariables);
            if (componentType2 == newComponentType2) {
                return original2;
            }
            return arrayOf(newComponentType2);
        }
        if (toResolve instanceof ParameterizedType) {
            ParameterizedType original3 = (ParameterizedType) toResolve;
            Type ownerType = original3.getOwnerType();
            Type newOwnerType = resolve(context, contextRawType, ownerType, visitedTypeVariables);
            boolean changed = newOwnerType != ownerType;
            Type[] args = original3.getActualTypeArguments();
            int length = args.length;
            for (int t10 = 0; t10 < length; t10++) {
                Type resolvedTypeArgument = resolve(context, contextRawType, args[t10], visitedTypeVariables);
                if (resolvedTypeArgument != args[t10]) {
                    if (!changed) {
                        args = (Type[]) args.clone();
                        changed = true;
                    }
                    args[t10] = resolvedTypeArgument;
                }
            }
            if (changed) {
                return newParameterizedTypeWithOwner(newOwnerType, original3.getRawType(), args);
            }
            return original3;
        }
        if (toResolve instanceof WildcardType) {
            WildcardType original4 = (WildcardType) toResolve;
            Type[] originalLowerBound = original4.getLowerBounds();
            Type[] originalUpperBound = original4.getUpperBounds();
            if (originalLowerBound.length == 1) {
                Type lowerBound = resolve(context, contextRawType, originalLowerBound[0], visitedTypeVariables);
                if (lowerBound != originalLowerBound[0]) {
                    return supertypeOf(lowerBound);
                }
            } else if (originalUpperBound.length == 1 && (upperBound = resolve(context, contextRawType, originalUpperBound[0], visitedTypeVariables)) != originalUpperBound[0]) {
                return subtypeOf(upperBound);
            }
            return original4;
        }
        return toResolve;
    }

    static Type resolveTypeVariable(Type context, Class<?> contextRawType, TypeVariable<?> unknown) {
        Class<?> declaredByRaw = declaringClassOf(unknown);
        if (declaredByRaw == null) {
            return unknown;
        }
        Type declaredBy = getGenericSupertype(context, contextRawType, declaredByRaw);
        if (declaredBy instanceof ParameterizedType) {
            int index = indexOf(declaredByRaw.getTypeParameters(), unknown);
            return ((ParameterizedType) declaredBy).getActualTypeArguments()[index];
        }
        return unknown;
    }

    private static int indexOf(Object[] array, Object toFind) {
        int length = array.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (toFind.equals(array[i10])) {
                return i10;
            }
        }
        throw new NoSuchElementException();
    }

    private static Class<?> declaringClassOf(TypeVariable<?> typeVariable) {
        Object genericDeclaration = typeVariable.getGenericDeclaration();
        if (genericDeclaration instanceof Class) {
            return (Class) genericDeclaration;
        }
        return null;
    }

    static void checkNotPrimitive(Type type) {
        C$Gson$Preconditions.checkArgument(((type instanceof Class) && ((Class) type).isPrimitive()) ? false : true);
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {
        private final Type ownerType;
        private final Type rawType;
        private final Type[] typeArguments;
        private static final long serialVersionUID = 0;

        public ParameterizedTypeImpl(Type ownerType, Type rawType, Type... typeArguments) {
            if (rawType instanceof Class) {
                Class<?> rawTypeAsClass = (Class) rawType;
                boolean isStaticOrTopLevelClass = Modifier.isStatic(rawTypeAsClass.getModifiers()) || rawTypeAsClass.getEnclosingClass() == null;
                C$Gson$Preconditions.checkArgument(ownerType != null || isStaticOrTopLevelClass);
            }
            this.ownerType = ownerType == null ? null : C$Gson$Types.canonicalize(ownerType);
            this.rawType = C$Gson$Types.canonicalize(rawType);
            this.typeArguments = (Type[]) typeArguments.clone();
            int length = this.typeArguments.length;
            for (int t10 = 0; t10 < length; t10++) {
                C$Gson$Preconditions.checkNotNull(this.typeArguments[t10]);
                C$Gson$Types.checkNotPrimitive(this.typeArguments[t10]);
                this.typeArguments[t10] = C$Gson$Types.canonicalize(this.typeArguments[t10]);
            }
        }

        @Override
        public Type[] getActualTypeArguments() {
            return (Type[]) this.typeArguments.clone();
        }

        @Override
        public Type getRawType() {
            return this.rawType;
        }

        @Override
        public Type getOwnerType() {
            return this.ownerType;
        }

        public boolean equals(Object other) {
            return (other instanceof ParameterizedType) && C$Gson$Types.equals(this, (ParameterizedType) other);
        }

        public int hashCode() {
            return (Arrays.hashCode(this.typeArguments) ^ this.rawType.hashCode()) ^ C$Gson$Types.hashCodeOrZero(this.ownerType);
        }

        public String toString() {
            int length = this.typeArguments.length;
            if (length == 0) {
                return C$Gson$Types.typeToString(this.rawType);
            }
            StringBuilder stringBuilder = new StringBuilder(30 * (length + 1));
            stringBuilder.append(C$Gson$Types.typeToString(this.rawType)).append("<").append(C$Gson$Types.typeToString(this.typeArguments[0]));
            for (int i10 = 1; i10 < length; i10++) {
                stringBuilder.append(", ").append(C$Gson$Types.typeToString(this.typeArguments[i10]));
            }
            return stringBuilder.append(">").toString();
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {
        private final Type componentType;
        private static final long serialVersionUID = 0;

        public GenericArrayTypeImpl(Type componentType) {
            this.componentType = C$Gson$Types.canonicalize(componentType);
        }

        @Override
        public Type getGenericComponentType() {
            return this.componentType;
        }

        public boolean equals(Object o10) {
            return (o10 instanceof GenericArrayType) && C$Gson$Types.equals(this, (GenericArrayType) o10);
        }

        public int hashCode() {
            return this.componentType.hashCode();
        }

        public String toString() {
            return C$Gson$Types.typeToString(this.componentType) + v.f99450n;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  classes4.dex
 */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {
        private final Type upperBound;
        private final Type lowerBound;
        private static final long serialVersionUID = 0;

        public WildcardTypeImpl(Type[] upperBounds, Type[] lowerBounds) {
            C$Gson$Preconditions.checkArgument(lowerBounds.length <= 1);
            C$Gson$Preconditions.checkArgument(upperBounds.length == 1);
            if (lowerBounds.length == 1) {
                C$Gson$Preconditions.checkNotNull(lowerBounds[0]);
                C$Gson$Types.checkNotPrimitive(lowerBounds[0]);
                C$Gson$Preconditions.checkArgument(upperBounds[0] == Object.class);
                this.lowerBound = C$Gson$Types.canonicalize(lowerBounds[0]);
                this.upperBound = Object.class;
                return;
            }
            C$Gson$Preconditions.checkNotNull(upperBounds[0]);
            C$Gson$Types.checkNotPrimitive(upperBounds[0]);
            this.lowerBound = null;
            this.upperBound = C$Gson$Types.canonicalize(upperBounds[0]);
        }

        @Override
        public Type[] getUpperBounds() {
            return new Type[]{this.upperBound};
        }

        @Override
        public Type[] getLowerBounds() {
            return this.lowerBound != null ? new Type[]{this.lowerBound} : C$Gson$Types.EMPTY_TYPE_ARRAY;
        }

        public boolean equals(Object other) {
            return (other instanceof WildcardType) && C$Gson$Types.equals(this, (WildcardType) other);
        }

        public int hashCode() {
            return (this.lowerBound != null ? 31 + this.lowerBound.hashCode() : 1) ^ (31 + this.upperBound.hashCode());
        }

        public String toString() {
            if (this.lowerBound != null) {
                return "? super " + C$Gson$Types.typeToString(this.lowerBound);
            }
            if (this.upperBound == Object.class) {
                return "?";
            }
            return "? extends " + C$Gson$Types.typeToString(this.upperBound);
        }
    }
}
