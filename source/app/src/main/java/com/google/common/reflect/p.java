package com.google.common.reflect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12556p0;
import com.google.common.collect.AbstractC12564r1;
import com.google.common.collect.K0;
import com.google.common.collect.Ordering;
import com.google.common.collect.Q1;
import com.google.common.collect.e3;
import com.google.common.reflect.f;
import com.google.common.reflect.n;
import com.google.common.reflect.s;
import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;
import w2.I;
import w2.y;

@com.google.common.reflect.d
public abstract class p<T> extends l<T> implements Serializable {

    public static final long f67137e = 3637540370352322684L;

    public final Type f67138b;

    @CheckForNull
    public transient n f67139c;

    @CheckForNull
    public transient n f67140d;

    public class a extends f.b<T> {
        public a(Method method) {
            super(method);
        }

        @Override
        public Type[] d() {
            return p.this.r().l(super.d());
        }

        @Override
        public Type[] e() {
            return p.this.v().l(super.e());
        }

        @Override
        public Type f() {
            return p.this.r().j(super.f());
        }

        @Override
        public p<T> g() {
            return p.this;
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(g());
            String fVar = super.toString();
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 1 + String.valueOf(fVar).length());
            sb2.append(valueOf);
            sb2.append(".");
            sb2.append(fVar);
            return sb2.toString();
        }
    }

    public class b extends f.a<T> {
        public b(Constructor constructor) {
            super(constructor);
        }

        @Override
        public Type[] d() {
            return p.this.r().l(super.d());
        }

        @Override
        public Type[] e() {
            return p.this.v().l(super.e());
        }

        @Override
        public Type f() {
            return p.this.r().j(super.f());
        }

        @Override
        public p<T> g() {
            return p.this;
        }

        @Override
        public String toString() {
            String valueOf = String.valueOf(g());
            String n10 = y.p(", ").n(e());
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 2 + String.valueOf(n10).length());
            sb2.append(valueOf);
            sb2.append("(");
            sb2.append(n10);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public class c extends r {
        public c() {
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            a(genericArrayType.getGenericComponentType());
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            a(parameterizedType.getActualTypeArguments());
            a(parameterizedType.getOwnerType());
        }

        @Override
        public void e(TypeVariable<?> typeVariable) {
            String valueOf = String.valueOf(p.this.f67138b);
            StringBuilder sb2 = new StringBuilder(valueOf.length() + 58);
            sb2.append(valueOf);
            sb2.append("contains a type variable and is not safe for the operation");
            throw new IllegalArgumentException(sb2.toString());
        }

        @Override
        public void f(WildcardType wildcardType) {
            a(wildcardType.getLowerBounds());
            a(wildcardType.getUpperBounds());
        }
    }

    public class d extends r {

        public final AbstractC12564r1.a f67144b;

        public d(p pVar, AbstractC12564r1.a aVar) {
            this.f67144b = aVar;
        }

        @Override
        public void b(Class<?> cls) {
            this.f67144b.g(cls);
        }

        @Override
        public void c(GenericArrayType genericArrayType) {
            this.f67144b.g(s.h(p.U(genericArrayType.getGenericComponentType()).x()));
        }

        @Override
        public void d(ParameterizedType parameterizedType) {
            this.f67144b.g((Class) parameterizedType.getRawType());
        }

        @Override
        public void e(TypeVariable<?> typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override
        public void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    public static class e {

        public final Type[] f67145a;

        public final boolean f67146b;

        public e(Type[] typeArr, boolean z10) {
            this.f67145a = typeArr;
            this.f67146b = z10;
        }

        public boolean a(Type type) {
            for (Type type2 : this.f67145a) {
                boolean K10 = p.U(type2).K(type);
                boolean z10 = this.f67146b;
                if (K10 == z10) {
                    return z10;
                }
            }
            return !this.f67146b;
        }

        public boolean b(Type type) {
            p<?> U10 = p.U(type);
            for (Type type2 : this.f67145a) {
                boolean K10 = U10.K(type2);
                boolean z10 = this.f67146b;
                if (K10 == z10) {
                    return z10;
                }
            }
            return !this.f67146b;
        }
    }

    public final class f extends p<T>.k {

        public static final long f67147g = 0;

        @CheckForNull
        public transient AbstractC12564r1<p<? super T>> f67148e;

        public f() {
            super();
        }

        private Object J0() {
            return p.this.E().G0();
        }

        @Override
        public Set<p<? super T>> k0() {
            AbstractC12564r1<p<? super T>> abstractC12564r1 = this.f67148e;
            if (abstractC12564r1 != null) {
                return abstractC12564r1;
            }
            AbstractC12564r1<p<? super T>> G10 = AbstractC12556p0.s(i.f67155a.a().d(p.this)).n(j.IGNORE_TYPE_VARIABLE_OR_WILDCARD).G();
            this.f67148e = G10;
            return G10;
        }

        @Override
        public p<T>.k G0() {
            return this;
        }

        @Override
        public p<T>.k H0() {
            throw new UnsupportedOperationException("classes().interfaces() not supported.");
        }

        @Override
        public Set<Class<? super T>> I0() {
            return AbstractC12564r1.s(i.f67156b.a().c(p.this.y()));
        }

        public f(p pVar, a aVar) {
            this();
        }
    }

    public final class g extends p<T>.k {

        public static final long f67150h = 0;

        public final transient p<T>.k f67151e;

        @CheckForNull
        public transient AbstractC12564r1<p<? super T>> f67152f;

        public g(p<T>.k kVar) {
            super();
            this.f67151e = kVar;
        }

        private Object J0() {
            return p.this.E().H0();
        }

        @Override
        public Set<p<? super T>> k0() {
            AbstractC12564r1<p<? super T>> abstractC12564r1 = this.f67152f;
            if (abstractC12564r1 != null) {
                return abstractC12564r1;
            }
            AbstractC12564r1<p<? super T>> G10 = AbstractC12556p0.s(this.f67151e).n(j.INTERFACE_ONLY).G();
            this.f67152f = G10;
            return G10;
        }

        @Override
        public p<T>.k G0() {
            throw new UnsupportedOperationException("interfaces().classes() not supported.");
        }

        @Override
        public p<T>.k H0() {
            return this;
        }

        @Override
        public Set<Class<? super T>> I0() {
            return AbstractC12556p0.s(i.f67156b.c(p.this.y())).n(new I() {
                @Override
                public final boolean apply(Object obj) {
                    return ((Class) obj).isInterface();
                }
            }).G();
        }
    }

    public static final class h<T> extends p<T> {

        public static final long f67154f = 0;

        public h(Type type) {
            super(type, null);
        }
    }

    public static abstract class i<K> {

        public static final i<p<?>> f67155a = new a();

        public static final i<Class<?>> f67156b = new b();

        public class a extends i<p<?>> {
            public a() {
                super(null);
            }

            @Override
            public Iterable<? extends p<?>> e(p<?> pVar) {
                return pVar.s();
            }

            @Override
            public Class<?> f(p<?> pVar) {
                return pVar.x();
            }

            @Override
            @CheckForNull
            public p<?> g(p<?> pVar) {
                return pVar.u();
            }
        }

        public class b extends i<Class<?>> {
            public b() {
                super(null);
            }

            @Override
            public Iterable<? extends Class<?>> e(Class<?> cls) {
                return Arrays.asList(cls.getInterfaces());
            }

            @Override
            public Class<?> f(Class<?> cls) {
                return cls;
            }

            @Override
            @CheckForNull
            public Class<?> g(Class<?> cls) {
                return cls.getSuperclass();
            }
        }

        public class c extends e<K> {
            public c(i iVar, i iVar2) {
                super(iVar2);
            }

            @Override
            public AbstractC12521g1<K> c(Iterable<? extends K> iterable) {
                AbstractC12521g1.a m10 = AbstractC12521g1.m();
                for (K k10 : iterable) {
                    if (!f(k10).isInterface()) {
                        m10.a(k10);
                    }
                }
                return super.c(m10.e());
            }

            @Override
            public Iterable<? extends K> e(K k10) {
                return AbstractC12564r1.z();
            }
        }

        public class d extends Ordering<K> {

            public final Comparator f67157d;

            public final Map f67158e;

            public d(Comparator comparator, Map map) {
                this.f67157d = comparator;
                this.f67158e = map;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public int compare(K k10, K k11) {
                Comparator comparator = this.f67157d;
                Object obj = this.f67158e.get(k10);
                Objects.requireNonNull(obj);
                Object obj2 = this.f67158e.get(k11);
                Objects.requireNonNull(obj2);
                return comparator.compare(obj, obj2);
            }
        }

        public static class e<K> extends i<K> {

            public final i<K> f67159c;

            public e(i<K> iVar) {
                super(null);
                this.f67159c = iVar;
            }

            @Override
            public Iterable<? extends K> e(K k10) {
                return this.f67159c.e(k10);
            }

            @Override
            public Class<?> f(K k10) {
                return this.f67159c.f(k10);
            }

            @Override
            @CheckForNull
            public K g(K k10) {
                return this.f67159c.g(k10);
            }
        }

        public i() {
        }

        public static <K, V> AbstractC12521g1<K> h(Map<K, V> map, Comparator<? super V> comparator) {
            return (AbstractC12521g1<K>) new d(comparator, map).l(map.o());
        }

        public final i<K> a() {
            return new c(this, this);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @I2.a
        public final int b(K k10, Map<? super K, Integer> map) {
            Integer num = map.get(k10);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = f(k10).isInterface();
            Iterator<? extends K> it = e(k10).iterator();
            int i10 = isInterface;
            while (it.hasNext()) {
                i10 = Math.max(i10, b(it.next(), map));
            }
            K g10 = g(k10);
            int i11 = i10;
            if (g10 != null) {
                i11 = Math.max(i10, b(g10, map));
            }
            int i12 = i11 + 1;
            map.put(k10, Integer.valueOf(i12));
            return i12;
        }

        public AbstractC12521g1<K> c(Iterable<? extends K> iterable) {
            HashMap Y10 = Q1.Y();
            Iterator<? extends K> it = iterable.iterator();
            while (it.hasNext()) {
                b(it.next(), Y10);
            }
            return h(Y10, Ordering.A().F());
        }

        public final AbstractC12521g1<K> d(K k10) {
            return c(AbstractC12521g1.y(k10));
        }

        public abstract Iterable<? extends K> e(K k10);

        public abstract Class<?> f(K k10);

        @CheckForNull
        public abstract K g(K k10);

        public i(a aVar) {
            this();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class j implements I<p<?>> {
        public static final j IGNORE_TYPE_VARIABLE_OR_WILDCARD = new a("IGNORE_TYPE_VARIABLE_OR_WILDCARD", 0);
        public static final j INTERFACE_ONLY = new b("INTERFACE_ONLY", 1);
        private static final j[] $VALUES = a();

        public enum a extends j {
            public a(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public boolean apply(p<?> pVar) {
                return ((pVar.f67138b instanceof TypeVariable) || (pVar.f67138b instanceof WildcardType)) ? false : true;
            }
        }

        public enum b extends j {
            public b(String str, int i10) {
                super(str, i10, null);
            }

            @Override
            public boolean apply(p<?> pVar) {
                return pVar.x().isInterface();
            }
        }

        public j(String str, int i10) {
        }

        public static j[] a() {
            return new j[]{IGNORE_TYPE_VARIABLE_OR_WILDCARD, INTERFACE_ONLY};
        }

        public static j valueOf(String str) {
            return (j) Enum.valueOf(j.class, str);
        }

        public static j[] values() {
            return (j[]) $VALUES.clone();
        }

        public j(String str, int i10, a aVar) {
            this(str, i10);
        }
    }

    public class k extends K0<p<? super T>> implements Serializable {

        public static final long f67160d = 0;

        @CheckForNull
        public transient AbstractC12564r1<p<? super T>> f67161b;

        public k() {
        }

        @Override
        public Set<p<? super T>> k0() {
            AbstractC12564r1<p<? super T>> abstractC12564r1 = this.f67161b;
            if (abstractC12564r1 != null) {
                return abstractC12564r1;
            }
            AbstractC12564r1<p<? super T>> G10 = AbstractC12556p0.s(i.f67155a.d(p.this)).n(j.IGNORE_TYPE_VARIABLE_OR_WILDCARD).G();
            this.f67161b = G10;
            return G10;
        }

        public p<T>.k G0() {
            return new f(p.this, null);
        }

        public p<T>.k H0() {
            return new g(this);
        }

        public Set<Class<? super T>> I0() {
            return AbstractC12564r1.s(i.f67156b.c(p.this.y()));
        }
    }

    public p(Type type, a aVar) {
        this(type);
    }

    public static Type S(Type type) {
        return s.d.JAVA7.c(type);
    }

    public static <T> p<T> T(Class<T> cls) {
        return new h(cls);
    }

    public static p<?> U(Type type) {
        return new h(type);
    }

    @v2.d
    public static <T> p<? extends T> a0(Class<T> cls) {
        if (cls.isArray()) {
            return (p<? extends T>) U(s.j(a0(cls.getComponentType()).f67138b));
        }
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type type = (!cls.isMemberClass() || Modifier.isStatic(cls.getModifiers())) ? null : a0(cls.getEnclosingClass()).f67138b;
        return (typeParameters.length > 0 || !(type == null || type == cls.getEnclosingClass())) ? (p<? extends T>) U(s.m(type, cls, typeParameters)) : T(cls);
    }

    public static e f(Type[] typeArr) {
        return new e(typeArr, true);
    }

    public static Type i(TypeVariable<?> typeVariable, Type type) {
        return type instanceof WildcardType ? j(typeVariable, (WildcardType) type) : l(type);
    }

    public static WildcardType j(TypeVariable<?> typeVariable, WildcardType wildcardType) {
        Type[] bounds = typeVariable.getBounds();
        ArrayList arrayList = new ArrayList();
        for (Type type : wildcardType.getUpperBounds()) {
            if (!f(bounds).a(type)) {
                arrayList.add(l(type));
            }
        }
        return new s.i(wildcardType.getLowerBounds(), (Type[]) arrayList.toArray(new Type[0]));
    }

    public static ParameterizedType k(ParameterizedType parameterizedType) {
        Class cls = (Class) parameterizedType.getRawType();
        TypeVariable<Class<T>>[] typeParameters = cls.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i10 = 0; i10 < actualTypeArguments.length; i10++) {
            actualTypeArguments[i10] = i(typeParameters[i10], actualTypeArguments[i10]);
        }
        return s.m(parameterizedType.getOwnerType(), cls, actualTypeArguments);
    }

    public static Type l(Type type) {
        return type instanceof ParameterizedType ? k((ParameterizedType) type) : type instanceof GenericArrayType ? s.j(l(((GenericArrayType) type).getGenericComponentType())) : type;
    }

    public static e n(Type[] typeArr) {
        return new e(typeArr, false);
    }

    public final p<? extends T> A(Class<?> cls, Type[] typeArr) {
        if (typeArr.length > 0) {
            return (p<? extends T>) U(typeArr[0]).z(cls);
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 21 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" isn't a subclass of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public final p<? super T> B(Class<? super T> cls) {
        H.y(Z(cls), "%s is not a super class of %s", cls, this);
        Type type = this.f67138b;
        return type instanceof TypeVariable ? C(cls, ((TypeVariable) type).getBounds()) : type instanceof WildcardType ? C(cls, ((WildcardType) type).getUpperBounds()) : cls.isArray() ? p(cls) : (p<? super T>) W(a0(cls).f67138b);
    }

    public final p<? super T> C(Class<? super T> cls, Type[] typeArr) {
        for (Type type : typeArr) {
            p<?> U10 = U(type);
            if (U10.K(cls)) {
                return (p<? super T>) U10.B(cls);
            }
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 23 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" isn't a super type of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public final Type D() {
        return this.f67138b;
    }

    public final p<T>.k E() {
        return new k();
    }

    public final boolean F(Type type, TypeVariable<?> typeVariable) {
        if (this.f67138b.equals(type)) {
            return true;
        }
        if (!(type instanceof WildcardType)) {
            return l(this.f67138b).equals(l(type));
        }
        WildcardType j10 = j(typeVariable, (WildcardType) type);
        return n(j10.getUpperBounds()).b(this.f67138b) && n(j10.getLowerBounds()).a(this.f67138b);
    }

    public final boolean G() {
        return q() != null;
    }

    public final boolean H(Type type) {
        Iterator<p<? super T>> it = E().iterator();
        while (it.hasNext()) {
            Type w10 = it.next().w();
            if (w10 != null && U(w10).K(type)) {
                return true;
            }
        }
        return false;
    }

    public final boolean I() {
        Type type = this.f67138b;
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }

    public final boolean J(p<?> pVar) {
        return K(pVar.D());
    }

    public final boolean K(Type type) {
        H.E(type);
        if (type instanceof WildcardType) {
            return f(((WildcardType) type).getLowerBounds()).b(this.f67138b);
        }
        Type type2 = this.f67138b;
        if (type2 instanceof WildcardType) {
            return f(((WildcardType) type2).getUpperBounds()).a(type);
        }
        if (type2 instanceof TypeVariable) {
            return type2.equals(type) || f(((TypeVariable) this.f67138b).getBounds()).a(type);
        }
        if (type2 instanceof GenericArrayType) {
            return U(type).P((GenericArrayType) this.f67138b);
        }
        if (type instanceof Class) {
            return Z((Class) type);
        }
        if (type instanceof ParameterizedType) {
            return M((ParameterizedType) type);
        }
        if (type instanceof GenericArrayType) {
            return L((GenericArrayType) type);
        }
        return false;
    }

    public final boolean L(GenericArrayType genericArrayType) {
        Type type = this.f67138b;
        if (!(type instanceof Class)) {
            if (type instanceof GenericArrayType) {
                return U(((GenericArrayType) type).getGenericComponentType()).K(genericArrayType.getGenericComponentType());
            }
            return false;
        }
        Class cls = (Class) type;
        if (cls.isArray()) {
            return T(cls.getComponentType()).K(genericArrayType.getGenericComponentType());
        }
        return false;
    }

    public final boolean M(ParameterizedType parameterizedType) {
        Class<? super Object> x10 = U(parameterizedType).x();
        if (!Z(x10)) {
            return false;
        }
        TypeVariable<Class<? super Object>>[] typeParameters = x10.getTypeParameters();
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        for (int i10 = 0; i10 < typeParameters.length; i10++) {
            if (!U(r().j(typeParameters[i10])).F(actualTypeArguments[i10], typeParameters[i10])) {
                return false;
            }
        }
        return Modifier.isStatic(((Class) parameterizedType.getRawType()).getModifiers()) || parameterizedType.getOwnerType() == null || H(parameterizedType.getOwnerType());
    }

    public final boolean N(p<?> pVar) {
        return pVar.K(D());
    }

    public final boolean O(Type type) {
        return U(type).K(D());
    }

    public final boolean P(GenericArrayType genericArrayType) {
        Type type = this.f67138b;
        if (type instanceof Class) {
            Class cls = (Class) type;
            return !cls.isArray() ? cls.isAssignableFrom(Object[].class) : U(genericArrayType.getGenericComponentType()).K(cls.getComponentType());
        }
        if (type instanceof GenericArrayType) {
            return U(genericArrayType.getGenericComponentType()).K(((GenericArrayType) this.f67138b).getGenericComponentType());
        }
        return false;
    }

    public final boolean Q() {
        return com.google.common.primitives.r.c().contains(this.f67138b);
    }

    @InterfaceC15800a
    public final com.google.common.reflect.f<T, Object> R(Method method) {
        H.y(Z(method.getDeclaringClass()), "%s not declared by %s", method, this);
        return new a(method);
    }

    @I2.a
    public final p<T> V() {
        new c().a(this.f67138b);
        return this;
    }

    public final p<?> W(Type type) {
        p<?> U10 = U(r().j(type));
        U10.f67140d = this.f67140d;
        U10.f67139c = this.f67139c;
        return U10;
    }

    public final p<?> X(Type type) {
        H.E(type);
        return U(v().j(type));
    }

    public final Type Y(Class<?> cls) {
        if ((this.f67138b instanceof Class) && (cls.getTypeParameters().length == 0 || x().getTypeParameters().length != 0)) {
            return cls;
        }
        p a02 = a0(cls);
        return new n().n(a02.B(x()).f67138b, this.f67138b).j(a02.f67138b);
    }

    public final boolean Z(Class<?> cls) {
        e3<Class<? super T>> it = y().iterator();
        while (it.hasNext()) {
            if (cls.isAssignableFrom(it.next())) {
                return true;
            }
        }
        return false;
    }

    public final p<T> b0() {
        return Q() ? T(com.google.common.primitives.r.e((Class) this.f67138b)) : this;
    }

    public final <X> p<T> c0(m<X> mVar, p<X> pVar) {
        return new h(new n().o(AbstractC12529i1.z(new n.d(mVar.f67125b), pVar.f67138b)).j(this.f67138b));
    }

    public final <X> p<T> d0(m<X> mVar, Class<X> cls) {
        return c0(mVar, T(cls));
    }

    public final p<T> e0() {
        return I() ? T(com.google.common.primitives.r.f((Class) this.f67138b)) : this;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (obj instanceof p) {
            return this.f67138b.equals(((p) obj).f67138b);
        }
        return false;
    }

    public Object f0() {
        return U(new n().j(this.f67138b));
    }

    @CheckForNull
    public final p<? super T> g(Type type) {
        p<? super T> pVar = (p<? super T>) U(type);
        if (pVar.x().isInterface()) {
            return null;
        }
        return pVar;
    }

    public final AbstractC12521g1<p<? super T>> h(Type[] typeArr) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        for (Type type : typeArr) {
            p<?> U10 = U(type);
            if (U10.x().isInterface()) {
                m10.a(U10);
            }
        }
        return m10.e();
    }

    public int hashCode() {
        return this.f67138b.hashCode();
    }

    @InterfaceC15800a
    public final com.google.common.reflect.f<T, T> m(Constructor<?> constructor) {
        H.y(constructor.getDeclaringClass() == x(), "%s not declared by %s", constructor, x());
        return new b(constructor);
    }

    public final p<? extends T> o(Class<?> cls) {
        Class<?> componentType = cls.getComponentType();
        if (componentType != null) {
            p<?> q10 = q();
            Objects.requireNonNull(q10);
            return (p<? extends T>) U(S(q10.z(componentType).f67138b));
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 36 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" does not appear to be a subtype of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final p<? super T> p(Class<? super T> cls) {
        p<?> q10 = q();
        if (q10 != 0) {
            Class<?> componentType = cls.getComponentType();
            Objects.requireNonNull(componentType);
            return (p<? super T>) U(S(q10.B(componentType).f67138b));
        }
        String valueOf = String.valueOf(cls);
        String valueOf2 = String.valueOf(this);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 23 + valueOf2.length());
        sb2.append(valueOf);
        sb2.append(" isn't a super type of ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    @CheckForNull
    public final p<?> q() {
        Type i10 = s.i(this.f67138b);
        if (i10 == null) {
            return null;
        }
        return U(i10);
    }

    public final n r() {
        n nVar = this.f67140d;
        if (nVar != null) {
            return nVar;
        }
        n d10 = n.d(this.f67138b);
        this.f67140d = d10;
        return d10;
    }

    public final AbstractC12521g1<p<? super T>> s() {
        Type type = this.f67138b;
        if (type instanceof TypeVariable) {
            return h(((TypeVariable) type).getBounds());
        }
        if (type instanceof WildcardType) {
            return h(((WildcardType) type).getUpperBounds());
        }
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        for (Type type2 : x().getGenericInterfaces()) {
            m10.a(W(type2));
        }
        return m10.e();
    }

    public String toString() {
        return s.s(this.f67138b);
    }

    @CheckForNull
    public final p<? super T> u() {
        Type type = this.f67138b;
        if (type instanceof TypeVariable) {
            return g(((TypeVariable) type).getBounds()[0]);
        }
        if (type instanceof WildcardType) {
            return g(((WildcardType) type).getUpperBounds()[0]);
        }
        Type genericSuperclass = x().getGenericSuperclass();
        if (genericSuperclass == null) {
            return null;
        }
        return (p<? super T>) W(genericSuperclass);
    }

    public final n v() {
        n nVar = this.f67139c;
        if (nVar != null) {
            return nVar;
        }
        n f10 = n.f(this.f67138b);
        this.f67139c = f10;
        return f10;
    }

    @CheckForNull
    public final Type w() {
        Type type = this.f67138b;
        if (type instanceof ParameterizedType) {
            return ((ParameterizedType) type).getOwnerType();
        }
        if (type instanceof Class) {
            return ((Class) type).getEnclosingClass();
        }
        return null;
    }

    public final Class<? super T> x() {
        return y().iterator().next();
    }

    public final AbstractC12564r1<Class<? super T>> y() {
        AbstractC12564r1.a m10 = AbstractC12564r1.m();
        new d(this, m10).a(this.f67138b);
        return m10.e();
    }

    public final p<? extends T> z(Class<?> cls) {
        H.u(!(this.f67138b instanceof TypeVariable), "Cannot get subtype of type variable <%s>", this);
        Type type = this.f67138b;
        if (type instanceof WildcardType) {
            return A(cls, ((WildcardType) type).getLowerBounds());
        }
        if (G()) {
            return o(cls);
        }
        H.y(x().isAssignableFrom(cls), "%s isn't a subclass of %s", cls, this);
        p<? extends T> pVar = (p<? extends T>) U(Y(cls));
        H.y(pVar.J(this), "%s does not appear to be a subtype of %s", pVar, this);
        return pVar;
    }

    public p() {
        Type a10 = a();
        this.f67138b = a10;
        H.x0(!(a10 instanceof TypeVariable), "Cannot construct a TypeToken for a type variable.\nYou probably meant to call new TypeToken<%s>(getClass()) that can resolve the type variable for you.\nIf you do need to create a TypeToken of a type variable, please use TypeToken.of() instead.", a10);
    }

    public p(Class<?> cls) {
        Type a10 = super.a();
        if (a10 instanceof Class) {
            this.f67138b = a10;
        } else {
            this.f67138b = n.d(cls).j(a10);
        }
    }

    public p(Type type) {
        this.f67138b = (Type) H.E(type);
    }
}
