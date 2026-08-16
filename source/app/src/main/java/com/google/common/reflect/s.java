package com.google.common.reflect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.D1;
import com.google.common.collect.e3;
import com.google.common.reflect.s;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.CheckForNull;
import okhttp3.v;
import w2.B;
import w2.H;
import w2.InterfaceC15902t;
import w2.J;
import w2.y;

@com.google.common.reflect.d
public final class s {

    public static final y f67164a = y.p(", ").s("null");

    public class a extends r {

        public final AtomicReference f67165b;

        public a(AtomicReference atomicReference) {
            this.f67165b = atomicReference;
        }

        @Override
        public void b(Class<?> cls) {
            this.f67165b.set(cls.getComponentType());
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            this.f67165b.set(genericArrayType.getGenericComponentType());
        }

        @Override
        public void e(TypeVariable<?> typeVariable) {
            this.f67165b.set(s.p(typeVariable.getBounds()));
        }

        @Override
        public void f(WildcardType wildcardType) {
            this.f67165b.set(s.p(wildcardType.getUpperBounds()));
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b {
        public static final b OWNED_BY_ENCLOSING_CLASS = new a("OWNED_BY_ENCLOSING_CLASS", 0);
        public static final b LOCAL_CLASS_HAS_NO_OWNER = new c("LOCAL_CLASS_HAS_NO_OWNER", 1);
        private static final b[] $VALUES = a();
        static final b JVM_BEHAVIOR = b();

        public enum a extends b {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            @CheckForNull
            public Class<?> c(Class<?> cls) {
                return cls.getEnclosingClass();
            }
        }

        public class C1013b<T> {
        }

        public enum c extends b {
            public c(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            @CheckForNull
            public Class<?> c(Class<?> cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }

        public class d extends C1013b<String> {
        }

        public b(String str, int i10) {
        }

        public static b[] a() {
            return new b[]{OWNED_BY_ENCLOSING_CLASS, LOCAL_CLASS_HAS_NO_OWNER};
        }

        public static b b() {
            new d();
            ParameterizedType parameterizedType = (ParameterizedType) d.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            ParameterizedType parameterizedType2 = parameterizedType;
            for (b bVar : values()) {
                if (bVar.c(C1013b.class) == parameterizedType2.getOwnerType()) {
                    return bVar;
                }
            }
            throw new AssertionError();
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) $VALUES.clone();
        }

        @CheckForNull
        public abstract Class<?> c(Class<?> cls);

        public b(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    public static final class c implements GenericArrayType, Serializable {

        public static final long f67166c = 0;

        public final Type f67167b;

        public c(Type type) {
            this.f67167b = d.CURRENT.g(type);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (obj instanceof GenericArrayType) {
                return B.a(getGenericComponentType(), ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override
        public Type getGenericComponentType() {
            return this.f67167b;
        }

        public int hashCode() {
            return this.f67167b.hashCode();
        }

        public String toString() {
            return String.valueOf(s.s(this.f67167b)).concat(v.f99450n);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class d {
        private static final d[] $VALUES;
        static final d CURRENT;
        public static final d JAVA6;
        public static final d JAVA7;
        public static final d JAVA8;
        public static final d JAVA9;

        public enum a extends d {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public Type g(Type type) {
                H.E(type);
                if (!(type instanceof Class)) {
                    return type;
                }
                Class cls = (Class) type;
                return cls.isArray() ? new c(cls.getComponentType()) : type;
            }

            @Override
            public GenericArrayType c(Type type) {
                return new c(type);
            }
        }

        public enum b extends d {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public Type c(Type type) {
                return type instanceof Class ? s.h((Class) type) : new c(type);
            }

            @Override
            public Type g(Type type) {
                return (Type) H.E(type);
            }
        }

        public enum c extends d {
            public c(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public Type c(Type type) {
                return d.JAVA7.c(type);
            }

            @Override
            public String d(Type type) {
                try {
                    return (String) Type.class.getMethod("getTypeName", null).invoke(type, null);
                } catch (IllegalAccessException e10) {
                    throw new RuntimeException(e10);
                } catch (NoSuchMethodException unused) {
                    throw new AssertionError((Object) "Type.getTypeName should be available in Java 8");
                } catch (InvocationTargetException e11) {
                    throw new RuntimeException(e11);
                }
            }

            @Override
            public Type g(Type type) {
                return d.JAVA7.g(type);
            }
        }

        public enum C1014d extends d {
            public C1014d(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public boolean b() {
                return false;
            }

            @Override
            public Type c(Type type) {
                return d.JAVA8.c(type);
            }

            @Override
            public String d(Type type) {
                return d.JAVA8.d(type);
            }

            @Override
            public Type g(Type type) {
                return d.JAVA8.g(type);
            }
        }

        public class e extends l<Map.Entry<String, int[][]>> {
        }

        public class f extends l<int[]> {
        }

        static {
            a aVar = new a("JAVA6", 0);
            JAVA6 = aVar;
            b bVar = new b("JAVA7", 1);
            JAVA7 = bVar;
            c cVar = new c("JAVA8", 2);
            JAVA8 = cVar;
            C1014d c1014d = new C1014d("JAVA9", 3);
            JAVA9 = c1014d;
            $VALUES = a();
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                if (new e().a().toString().contains("java.util.Map.java.util.Map")) {
                    CURRENT = cVar;
                    return;
                } else {
                    CURRENT = c1014d;
                    return;
                }
            }
            if (new f().a() instanceof Class) {
                CURRENT = bVar;
            } else {
                CURRENT = aVar;
            }
        }

        public d(String str, int i10) {
        }

        public static d[] a() {
            return new d[]{JAVA6, JAVA7, JAVA8, JAVA9};
        }

        public static d valueOf(String str) {
            return (d) Enum.valueOf(d.class, str);
        }

        public static d[] values() {
            return (d[]) $VALUES.clone();
        }

        public boolean b() {
            return true;
        }

        public abstract Type c(Type type);

        public String d(Type type) {
            return s.s(type);
        }

        public final AbstractC12521g1<Type> e(Type[] typeArr) {
            AbstractC12521g1.a m10 = AbstractC12521g1.m();
            for (Type type : typeArr) {
                m10.a(g(type));
            }
            return m10.e();
        }

        public abstract Type g(Type type);

        public d(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    public static final class e<X> {

        public static final boolean f67168a = !e.class.getTypeParameters()[0].equals(s.k(e.class, "X", new Type[0]));
    }

    public static final class f implements ParameterizedType, Serializable {

        public static final long f67169e = 0;

        @CheckForNull
        public final Type f67170b;

        public final AbstractC12521g1<Type> f67171c;

        public final Class<?> f67172d;

        public f(@CheckForNull Type type, Class<?> cls, Type[] typeArr) {
            H.E(cls);
            H.d(typeArr.length == cls.getTypeParameters().length);
            s.f(typeArr, "type parameter");
            this.f67170b = type;
            this.f67172d = cls;
            this.f67171c = d.CURRENT.e(typeArr);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof ParameterizedType)) {
                return false;
            }
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            return getRawType().equals(parameterizedType.getRawType()) && B.a(getOwnerType(), parameterizedType.getOwnerType()) && Arrays.equals(getActualTypeArguments(), parameterizedType.getActualTypeArguments());
        }

        @Override
        public Type[] getActualTypeArguments() {
            return s.r(this.f67171c);
        }

        @Override
        @CheckForNull
        public Type getOwnerType() {
            return this.f67170b;
        }

        @Override
        public Type getRawType() {
            return this.f67172d;
        }

        public int hashCode() {
            Type type = this.f67170b;
            return ((type == null ? 0 : type.hashCode()) ^ this.f67171c.hashCode()) ^ this.f67172d.hashCode();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder();
            if (this.f67170b != null) {
                d dVar = d.CURRENT;
                if (dVar.b()) {
                    sb2.append(dVar.d(this.f67170b));
                    sb2.append('.');
                }
            }
            sb2.append(this.f67172d.getName());
            sb2.append('<');
            y yVar = s.f67164a;
            AbstractC12521g1<Type> abstractC12521g1 = this.f67171c;
            final d dVar2 = d.CURRENT;
            Objects.requireNonNull(dVar2);
            sb2.append(yVar.k(D1.U(abstractC12521g1, new InterfaceC15902t() {
                @Override
                public final Object apply(Object obj) {
                    return s.d.this.d((Type) obj);
                }
            })));
            sb2.append('>');
            return sb2.toString();
        }
    }

    public static final class g<D extends GenericDeclaration> {

        public final D f67173a;

        public final String f67174b;

        public final AbstractC12521g1<Type> f67175c;

        public g(D d10, String str, Type[] typeArr) {
            s.f(typeArr, "bound for type variable");
            this.f67173a = (D) H.E(d10);
            this.f67174b = (String) H.E(str);
            this.f67175c = AbstractC12521g1.u(typeArr);
        }

        public Type[] a() {
            return s.r(this.f67175c);
        }

        public D b() {
            return this.f67173a;
        }

        public String c() {
            return this.f67174b;
        }

        public String d() {
            return this.f67174b;
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!e.f67168a) {
                if (!(obj instanceof TypeVariable)) {
                    return false;
                }
                TypeVariable typeVariable = (TypeVariable) obj;
                return this.f67174b.equals(typeVariable.getName()) && this.f67173a.equals(typeVariable.getGenericDeclaration());
            }
            if (obj == null || !Proxy.isProxyClass(obj.getClass()) || !(Proxy.getInvocationHandler(obj) instanceof h)) {
                return false;
            }
            g gVar = ((h) Proxy.getInvocationHandler(obj)).f67177a;
            return this.f67174b.equals(gVar.c()) && this.f67173a.equals(gVar.b()) && this.f67175c.equals(gVar.f67175c);
        }

        public int hashCode() {
            return this.f67173a.hashCode() ^ this.f67174b.hashCode();
        }

        public String toString() {
            return this.f67174b;
        }
    }

    public static final class h implements InvocationHandler {

        public static final AbstractC12529i1<String, Method> f67176b;

        public final g<?> f67177a;

        static {
            AbstractC12529i1.b i10 = AbstractC12529i1.i();
            for (Method method : g.class.getMethods()) {
                if (method.getDeclaringClass().equals(g.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    i10.i(method.getName(), method);
                }
            }
            f67176b = i10.c();
        }

        public h(g<?> gVar) {
            this.f67177a = gVar;
        }

        @Override
        @CheckForNull
        public Object invoke(Object obj, Method method, @CheckForNull Object[] objArr) throws Throwable {
            String name = method.getName();
            Method method2 = f67176b.get(name);
            if (method2 == null) {
                throw new UnsupportedOperationException(name);
            }
            try {
                return method2.invoke(this.f67177a, objArr);
            } catch (InvocationTargetException e10) {
                throw e10.getCause();
            }
        }
    }

    public static final class i implements WildcardType, Serializable {

        public static final long f67178d = 0;

        public final AbstractC12521g1<Type> f67179b;

        public final AbstractC12521g1<Type> f67180c;

        public i(Type[] typeArr, Type[] typeArr2) {
            s.f(typeArr, "lower bound for wildcard");
            s.f(typeArr2, "upper bound for wildcard");
            d dVar = d.CURRENT;
            this.f67179b = dVar.e(typeArr);
            this.f67180c = dVar.e(typeArr2);
        }

        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof WildcardType)) {
                return false;
            }
            WildcardType wildcardType = (WildcardType) obj;
            return this.f67179b.equals(Arrays.asList(wildcardType.getLowerBounds())) && this.f67180c.equals(Arrays.asList(wildcardType.getUpperBounds()));
        }

        @Override
        public Type[] getLowerBounds() {
            return s.r(this.f67179b);
        }

        @Override
        public Type[] getUpperBounds() {
            return s.r(this.f67180c);
        }

        public int hashCode() {
            return this.f67179b.hashCode() ^ this.f67180c.hashCode();
        }

        public String toString() {
            StringBuilder sb2 = new StringBuilder("?");
            e3<Type> it = this.f67179b.iterator();
            while (it.hasNext()) {
                Type next = it.next();
                sb2.append(" super ");
                sb2.append(d.CURRENT.d(next));
            }
            for (Type type : s.g(this.f67180c)) {
                sb2.append(" extends ");
                sb2.append(d.CURRENT.d(type));
            }
            return sb2.toString();
        }
    }

    public static void f(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                H.y(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    public static Iterable<Type> g(Iterable<Type> iterable) {
        return D1.p(iterable, J.q(J.m(Object.class)));
    }

    public static Class<?> h(Class<?> cls) {
        return Array.newInstance(cls, 0).getClass();
    }

    @CheckForNull
    public static Type i(Type type) {
        H.E(type);
        AtomicReference atomicReference = new AtomicReference();
        new a(atomicReference).a(type);
        return (Type) atomicReference.get();
    }

    public static Type j(Type type) {
        if (!(type instanceof WildcardType)) {
            return d.CURRENT.c(type);
        }
        WildcardType wildcardType = (WildcardType) type;
        Type[] lowerBounds = wildcardType.getLowerBounds();
        H.e(lowerBounds.length <= 1, "Wildcard cannot have more than one lower bounds.");
        if (lowerBounds.length == 1) {
            return q(j(lowerBounds[0]));
        }
        Type[] upperBounds = wildcardType.getUpperBounds();
        H.e(upperBounds.length == 1, "Wildcard should have only one upper bound.");
        return o(j(upperBounds[0]));
    }

    public static <D extends GenericDeclaration> TypeVariable<D> k(D d10, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        return n(d10, str, typeArr);
    }

    public static ParameterizedType l(Class<?> cls, Type... typeArr) {
        return new f(b.JVM_BEHAVIOR.c(cls), cls, typeArr);
    }

    public static ParameterizedType m(@CheckForNull Type type, Class<?> cls, Type... typeArr) {
        if (type == null) {
            return l(cls, typeArr);
        }
        H.E(typeArr);
        H.u(cls.getEnclosingClass() != null, "Owner type for unenclosed %s", cls);
        return new f(type, cls, typeArr);
    }

    public static <D extends GenericDeclaration> TypeVariable<D> n(D d10, String str, Type[] typeArr) {
        return (TypeVariable) k.d(TypeVariable.class, new h(new g(d10, str, typeArr)));
    }

    @v2.d
    public static WildcardType o(Type type) {
        return new i(new Type[0], new Type[]{type});
    }

    @CheckForNull
    public static Type p(Type[] typeArr) {
        for (Type type : typeArr) {
            Type i10 = i(type);
            if (i10 != null) {
                if (i10 instanceof Class) {
                    Class cls = (Class) i10;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return o(i10);
            }
        }
        return null;
    }

    @v2.d
    public static WildcardType q(Type type) {
        return new i(new Type[]{type}, new Type[]{Object.class});
    }

    public static Type[] r(Collection<Type> collection) {
        return (Type[]) collection.toArray(new Type[0]);
    }

    public static String s(Type type) {
        return type instanceof Class ? ((Class) type).getName() : type.toString();
    }
}
