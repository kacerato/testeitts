package com.google.common.reflect;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.Q1;
import com.google.common.reflect.s;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import javax.annotation.CheckForNull;
import w2.B;
import w2.H;
import w2.y;

@com.google.common.reflect.d
public final class n {

    public final c f67126a;

    public class a extends r {

        public final Map f67127b;

        public final Type f67128c;

        public a(Map map, Type type) {
            this.f67127b = map;
            this.f67128c = type;
        }

        @Override
        public void b(Class<?> cls) {
            if (this.f67128c instanceof WildcardType) {
                return;
            }
            String valueOf = String.valueOf(cls);
            String valueOf2 = String.valueOf(this.f67128c);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 25 + valueOf2.length());
            sb2.append("No type mapping from ");
            sb2.append(valueOf);
            sb2.append(" to ");
            sb2.append(valueOf2);
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            Type type = this.f67128c;
            if (type instanceof WildcardType) {
                return;
            }
            Type i10 = s.i(type);
            H.u(i10 != null, "%s is not an array type.", this.f67128c);
            n.g(this.f67127b, genericArrayType.getGenericComponentType(), i10);
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            Type type = this.f67128c;
            if (type instanceof WildcardType) {
                return;
            }
            ParameterizedType parameterizedType2 = (ParameterizedType) n.e(ParameterizedType.class, type);
            if (parameterizedType.getOwnerType() != null && parameterizedType2.getOwnerType() != null) {
                n.g(this.f67127b, parameterizedType.getOwnerType(), parameterizedType2.getOwnerType());
            }
            H.y(parameterizedType.getRawType().equals(parameterizedType2.getRawType()), "Inconsistent raw type: %s vs. %s", parameterizedType, this.f67128c);
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            Type[] actualTypeArguments2 = parameterizedType2.getActualTypeArguments();
            H.y(actualTypeArguments.length == actualTypeArguments2.length, "%s not compatible with %s", parameterizedType, parameterizedType2);
            for (int i10 = 0; i10 < actualTypeArguments.length; i10++) {
                n.g(this.f67127b, actualTypeArguments[i10], actualTypeArguments2[i10]);
            }
        }

        @Override
        public void e(TypeVariable<?> typeVariable) {
            this.f67127b.put(new d(typeVariable), this.f67128c);
        }

        @Override
        public void f(WildcardType wildcardType) {
            Type type = this.f67128c;
            if (type instanceof WildcardType) {
                WildcardType wildcardType2 = (WildcardType) type;
                Type[] upperBounds = wildcardType.getUpperBounds();
                Type[] upperBounds2 = wildcardType2.getUpperBounds();
                Type[] lowerBounds = wildcardType.getLowerBounds();
                Type[] lowerBounds2 = wildcardType2.getLowerBounds();
                H.y(upperBounds.length == upperBounds2.length && lowerBounds.length == lowerBounds2.length, "Incompatible type: %s vs. %s", wildcardType, this.f67128c);
                for (int i10 = 0; i10 < upperBounds.length; i10++) {
                    n.g(this.f67127b, upperBounds[i10], upperBounds2[i10]);
                }
                for (int i11 = 0; i11 < lowerBounds.length; i11++) {
                    n.g(this.f67127b, lowerBounds[i11], lowerBounds2[i11]);
                }
            }
        }
    }

    public static final class b extends r {

        public final Map<d, Type> f67129b = Q1.Y();

        public static AbstractC12529i1<d, Type> g(Type type) {
            H.E(type);
            b bVar = new b();
            bVar.a(type);
            return AbstractC12529i1.n(bVar.f67129b);
        }

        @Override
        public void b(Class<?> cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            H.g0(typeParameters.length == actualTypeArguments.length);
            for (int i10 = 0; i10 < typeParameters.length; i10++) {
                h(new d(typeParameters[i10]), actualTypeArguments[i10]);
            }
            a(cls);
            a(parameterizedType.getOwnerType());
        }

        @Override
        public void e(TypeVariable<?> typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override
        public void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }

        public final void h(d dVar, Type type) {
            if (this.f67129b.containsKey(dVar)) {
                return;
            }
            Type type2 = type;
            while (type2 != null) {
                if (dVar.a(type2)) {
                    while (type != null) {
                        type = this.f67129b.remove(d.c(type));
                    }
                    return;
                }
                type2 = this.f67129b.get(d.c(type2));
            }
            this.f67129b.put(dVar, type);
        }
    }

    public static final class d {

        public final TypeVariable<?> f67133a;

        public d(TypeVariable<?> typeVariable) {
            this.f67133a = (TypeVariable) H.E(typeVariable);
        }

        @CheckForNull
        public static d c(Type type) {
            if (type instanceof TypeVariable) {
                return new d((TypeVariable) type);
            }
            return null;
        }

        public boolean a(Type type) {
            if (type instanceof TypeVariable) {
                return b((TypeVariable) type);
            }
            return false;
        }

        public final boolean b(TypeVariable<?> typeVariable) {
            return this.f67133a.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && this.f67133a.getName().equals(typeVariable.getName());
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof d) {
                return b(((d) obj).f67133a);
            }
            return false;
        }

        public int hashCode() {
            return B.b(this.f67133a.getGenericDeclaration(), this.f67133a.getName());
        }

        public String toString() {
            return this.f67133a.toString();
        }
    }

    public static class e {

        public static final e f67134b = new e();

        public final AtomicInteger f67135a;

        public class a extends e {

            public final TypeVariable f67136c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(e eVar, AtomicInteger atomicInteger, TypeVariable typeVariable) {
                super(atomicInteger, null);
                this.f67136c = typeVariable;
            }

            @Override
            public TypeVariable<?> b(Type[] typeArr) {
                LinkedHashSet linkedHashSet = new LinkedHashSet(Arrays.asList(typeArr));
                linkedHashSet.addAll(Arrays.asList(this.f67136c.getBounds()));
                if (linkedHashSet.size() > 1) {
                    linkedHashSet.remove(Object.class);
                }
                return super.b((Type[]) linkedHashSet.toArray(new Type[0]));
            }
        }

        public e(AtomicInteger atomicInteger, a aVar) {
            this(atomicInteger);
        }

        public final Type a(Type type) {
            H.E(type);
            if ((type instanceof Class) || (type instanceof TypeVariable)) {
                return type;
            }
            if (type instanceof GenericArrayType) {
                return s.j(e().a(((GenericArrayType) type).getGenericComponentType()));
            }
            if (!(type instanceof ParameterizedType)) {
                if (!(type instanceof WildcardType)) {
                    throw new AssertionError((Object) "must have been one of the known types");
                }
                WildcardType wildcardType = (WildcardType) type;
                return wildcardType.getLowerBounds().length == 0 ? b(wildcardType.getUpperBounds()) : type;
            }
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable<?>[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            for (int i10 = 0; i10 < actualTypeArguments.length; i10++) {
                actualTypeArguments[i10] = d(typeParameters[i10]).a(actualTypeArguments[i10]);
            }
            return s.m(e().c(parameterizedType.getOwnerType()), cls, actualTypeArguments);
        }

        public TypeVariable<?> b(Type[] typeArr) {
            int incrementAndGet = this.f67135a.incrementAndGet();
            String n10 = y.o('&').n(typeArr);
            StringBuilder sb2 = new StringBuilder(String.valueOf(n10).length() + 33);
            sb2.append("capture#");
            sb2.append(incrementAndGet);
            sb2.append("-of ? extends ");
            sb2.append(n10);
            return s.k(e.class, sb2.toString(), typeArr);
        }

        @CheckForNull
        public final Type c(@CheckForNull Type type) {
            if (type == null) {
                return null;
            }
            return a(type);
        }

        public final e d(TypeVariable<?> typeVariable) {
            return new a(this, this.f67135a, typeVariable);
        }

        public final e e() {
            return new e(this.f67135a);
        }

        public e() {
            this(new AtomicInteger());
        }

        public e(AtomicInteger atomicInteger) {
            this.f67135a = atomicInteger;
        }
    }

    public n(c cVar, a aVar) {
        this(cVar);
    }

    public static n d(Type type) {
        return new n().o(b.g(type));
    }

    public static <T> T e(Class<T> cls, Object obj) {
        try {
            return cls.cast(obj);
        } catch (ClassCastException unused) {
            String valueOf = String.valueOf(obj);
            String simpleName = cls.getSimpleName();
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 10 + simpleName.length());
            sb2.append(valueOf);
            sb2.append(" is not a ");
            sb2.append(simpleName);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public static n f(Type type) {
        return new n().o(b.g(e.f67134b.a(type)));
    }

    public static void g(Map<d, Type> map, Type type, Type type2) {
        if (type.equals(type2)) {
            return;
        }
        new a(map, type2).a(type);
    }

    public final Type h(GenericArrayType genericArrayType) {
        return s.j(j(genericArrayType.getGenericComponentType()));
    }

    public final ParameterizedType i(ParameterizedType parameterizedType) {
        Type ownerType = parameterizedType.getOwnerType();
        return s.m(ownerType == null ? null : j(ownerType), (Class) j(parameterizedType.getRawType()), k(parameterizedType.getActualTypeArguments()));
    }

    public Type j(Type type) {
        H.E(type);
        return type instanceof TypeVariable ? this.f67126a.a((TypeVariable) type) : type instanceof ParameterizedType ? i((ParameterizedType) type) : type instanceof GenericArrayType ? h((GenericArrayType) type) : type instanceof WildcardType ? m((WildcardType) type) : type;
    }

    public final Type[] k(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i10 = 0; i10 < typeArr.length; i10++) {
            typeArr2[i10] = j(typeArr[i10]);
        }
        return typeArr2;
    }

    public Type[] l(Type[] typeArr) {
        for (int i10 = 0; i10 < typeArr.length; i10++) {
            typeArr[i10] = j(typeArr[i10]);
        }
        return typeArr;
    }

    public final WildcardType m(WildcardType wildcardType) {
        return new s.i(k(wildcardType.getLowerBounds()), k(wildcardType.getUpperBounds()));
    }

    public n n(Type type, Type type2) {
        HashMap Y10 = Q1.Y();
        g(Y10, (Type) H.E(type), (Type) H.E(type2));
        return o(Y10);
    }

    public n o(Map<d, ? extends Type> map) {
        return new n(this.f67126a.c(map));
    }

    public static class c {

        public final AbstractC12529i1<d, Type> f67130a;

        public class a extends c {

            public final TypeVariable f67131b;

            public final c f67132c;

            public a(c cVar, TypeVariable typeVariable, c cVar2) {
                this.f67131b = typeVariable;
                this.f67132c = cVar2;
            }

            @Override
            public Type b(TypeVariable<?> typeVariable, c cVar) {
                return typeVariable.getGenericDeclaration().equals(this.f67131b.getGenericDeclaration()) ? typeVariable : this.f67132c.b(typeVariable, cVar);
            }
        }

        public c() {
            this.f67130a = AbstractC12529i1.y();
        }

        public final Type a(TypeVariable<?> typeVariable) {
            return b(typeVariable, new a(this, typeVariable, this));
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.reflect.GenericDeclaration] */
        public Type b(TypeVariable<?> typeVariable, c cVar) {
            Type type = this.f67130a.get(new d(typeVariable));
            a aVar = null;
            if (type != null) {
                return new n(cVar, aVar).j(type);
            }
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length == 0) {
                return typeVariable;
            }
            Type[] k10 = new n(cVar, aVar).k(bounds);
            return (s.e.f67168a && Arrays.equals(bounds, k10)) ? typeVariable : s.k(typeVariable.getGenericDeclaration(), typeVariable.getName(), k10);
        }

        public final c c(Map<d, ? extends Type> map) {
            AbstractC12529i1.b i10 = AbstractC12529i1.i();
            i10.l(this.f67130a);
            for (Map.Entry<d, ? extends Type> entry : map.entrySet()) {
                d key = entry.getKey();
                Type value = entry.getValue();
                H.u(!key.a(value), "Type variable %s bound to itself", key);
                i10.i(key, value);
            }
            return new c(i10.d());
        }

        public c(AbstractC12529i1<d, Type> abstractC12529i1) {
            this.f67130a = abstractC12529i1;
        }
    }

    public n() {
        this.f67126a = new c();
    }

    public n(c cVar) {
        this.f67126a = cVar;
    }
}
