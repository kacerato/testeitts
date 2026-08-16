package com.google.common.reflect;

import com.google.common.collect.AbstractC12521g1;
import java.lang.annotation.Annotation;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Arrays;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;

@d
@InterfaceC15800a
public abstract class f<T, R> implements AnnotatedElement, Member {

    public final AccessibleObject f67114a;

    public final Member f67115b;

    public static class a<T> extends f<T, T> {

        public final Constructor<?> f67116c;

        public a(Constructor<?> constructor) {
            super(constructor);
            this.f67116c = constructor;
        }

        public final boolean F() {
            Class<?> declaringClass = this.f67116c.getDeclaringClass();
            if (declaringClass.getEnclosingConstructor() != null) {
                return true;
            }
            return declaringClass.getEnclosingMethod() != null ? !Modifier.isStatic(r1.getModifiers()) : (declaringClass.getEnclosingClass() == null || Modifier.isStatic(declaringClass.getModifiers())) ? false : true;
        }

        @Override
        public Type[] d() {
            return this.f67116c.getGenericExceptionTypes();
        }

        @Override
        public Type[] e() {
            Type[] genericParameterTypes = this.f67116c.getGenericParameterTypes();
            if (genericParameterTypes.length <= 0 || !F()) {
                return genericParameterTypes;
            }
            Class<?>[] parameterTypes = this.f67116c.getParameterTypes();
            return (genericParameterTypes.length == parameterTypes.length && parameterTypes[0] == getDeclaringClass().getEnclosingClass()) ? (Type[]) Arrays.copyOfRange(genericParameterTypes, 1, genericParameterTypes.length) : genericParameterTypes;
        }

        @Override
        public Type f() {
            Class<? super T> declaringClass = getDeclaringClass();
            TypeVariable<Class<? super T>>[] typeParameters = declaringClass.getTypeParameters();
            return typeParameters.length > 0 ? s.l(declaringClass, typeParameters) : declaringClass;
        }

        @Override
        public final Annotation[][] h() {
            return this.f67116c.getParameterAnnotations();
        }

        @Override
        public final TypeVariable<?>[] k() {
            TypeVariable<Class<? super T>>[] typeParameters = getDeclaringClass().getTypeParameters();
            TypeVariable<Constructor<?>>[] typeParameters2 = this.f67116c.getTypeParameters();
            TypeVariable<?>[] typeVariableArr = new TypeVariable[typeParameters.length + typeParameters2.length];
            System.arraycopy(typeParameters, 0, typeVariableArr, 0, typeParameters.length);
            System.arraycopy(typeParameters2, 0, typeVariableArr, typeParameters.length, typeParameters2.length);
            return typeVariableArr;
        }

        @Override
        public final Object m(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            try {
                return this.f67116c.newInstance(objArr);
            } catch (InstantiationException e10) {
                String valueOf = String.valueOf(this.f67116c);
                StringBuilder sb2 = new StringBuilder(valueOf.length() + 8);
                sb2.append(valueOf);
                sb2.append(" failed.");
                throw new RuntimeException(sb2.toString(), e10);
            }
        }

        @Override
        public final boolean r() {
            return false;
        }

        @Override
        public final boolean z() {
            return this.f67116c.isVarArgs();
        }
    }

    public static class b<T> extends f<T, Object> {

        public final Method f67117c;

        public b(Method method) {
            super(method);
            this.f67117c = method;
        }

        @Override
        public Type[] d() {
            return this.f67117c.getGenericExceptionTypes();
        }

        @Override
        public Type[] e() {
            return this.f67117c.getGenericParameterTypes();
        }

        @Override
        public Type f() {
            return this.f67117c.getGenericReturnType();
        }

        @Override
        public final Annotation[][] h() {
            return this.f67117c.getParameterAnnotations();
        }

        @Override
        public final TypeVariable<?>[] k() {
            return this.f67117c.getTypeParameters();
        }

        @Override
        @CheckForNull
        public final Object m(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException {
            return this.f67117c.invoke(obj, objArr);
        }

        @Override
        public final boolean r() {
            return (p() || t() || w() || Modifier.isFinal(getDeclaringClass().getModifiers())) ? false : true;
        }

        @Override
        public final boolean z() {
            return this.f67117c.isVarArgs();
        }
    }

    public <M extends AccessibleObject & Member> f(M m10) {
        H.E(m10);
        this.f67114a = m10;
        this.f67115b = m10;
    }

    public static <T> f<T, T> a(Constructor<T> constructor) {
        return new a(constructor);
    }

    public static f<?, Object> b(Method method) {
        return new b(method);
    }

    public final boolean A() {
        return Modifier.isVolatile(getModifiers());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R1 extends R> f<T, R1> B(p<R1> pVar) {
        if (pVar.N(j())) {
            return this;
        }
        String valueOf = String.valueOf(j());
        String valueOf2 = String.valueOf(pVar);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 35 + valueOf2.length());
        sb2.append("Invokable is known to return ");
        sb2.append(valueOf);
        sb2.append(", not ");
        sb2.append(valueOf2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public final <R1 extends R> f<T, R1> C(Class<R1> cls) {
        return B(p.T(cls));
    }

    public final void D(boolean z10) {
        this.f67114a.setAccessible(z10);
    }

    public final boolean E() {
        try {
            this.f67114a.setAccessible(true);
            return true;
        } catch (RuntimeException unused) {
            return false;
        }
    }

    public final AbstractC12521g1<p<? extends Throwable>> c() {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        for (Type type : d()) {
            m10.a(p.U(type));
        }
        return m10.e();
    }

    public abstract Type[] d();

    public abstract Type[] e();

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof f)) {
            return false;
        }
        f fVar = (f) obj;
        return g().equals(fVar.g()) && this.f67115b.equals(fVar.f67115b);
    }

    public abstract Type f();

    public p<T> g() {
        return p.T(getDeclaringClass());
    }

    @Override
    @CheckForNull
    public final <A extends Annotation> A getAnnotation(Class<A> cls) {
        return (A) this.f67114a.getAnnotation(cls);
    }

    @Override
    public final Annotation[] getAnnotations() {
        return this.f67114a.getAnnotations();
    }

    @Override
    public final Annotation[] getDeclaredAnnotations() {
        return this.f67114a.getDeclaredAnnotations();
    }

    @Override
    public final Class<? super T> getDeclaringClass() {
        return (Class<? super T>) this.f67115b.getDeclaringClass();
    }

    @Override
    public final int getModifiers() {
        return this.f67115b.getModifiers();
    }

    @Override
    public final String getName() {
        return this.f67115b.getName();
    }

    public abstract Annotation[][] h();

    public int hashCode() {
        return this.f67115b.hashCode();
    }

    public final AbstractC12521g1<i> i() {
        Type[] e10 = e();
        Annotation[][] h10 = h();
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        for (int i10 = 0; i10 < e10.length; i10++) {
            m10.a(new i(this, i10, p.U(e10[i10]), h10[i10]));
        }
        return m10.e();
    }

    @Override
    public final boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return this.f67114a.isAnnotationPresent(cls);
    }

    @Override
    public final boolean isSynthetic() {
        return this.f67115b.isSynthetic();
    }

    public final p<? extends R> j() {
        return (p<? extends R>) p.U(f());
    }

    public abstract TypeVariable<?>[] k();

    @I2.a
    @CheckForNull
    public final R l(@CheckForNull T t10, Object... objArr) throws InvocationTargetException, IllegalAccessException {
        return (R) m(t10, (Object[]) H.E(objArr));
    }

    @CheckForNull
    public abstract Object m(@CheckForNull Object obj, Object[] objArr) throws InvocationTargetException, IllegalAccessException;

    public final boolean n() {
        return Modifier.isAbstract(getModifiers());
    }

    public final boolean o() {
        return this.f67114a.isAccessible();
    }

    public final boolean p() {
        return Modifier.isFinal(getModifiers());
    }

    public final boolean q() {
        return Modifier.isNative(getModifiers());
    }

    public abstract boolean r();

    public final boolean s() {
        return (t() || v() || u()) ? false : true;
    }

    public final boolean t() {
        return Modifier.isPrivate(getModifiers());
    }

    public String toString() {
        return this.f67115b.toString();
    }

    public final boolean u() {
        return Modifier.isProtected(getModifiers());
    }

    public final boolean v() {
        return Modifier.isPublic(getModifiers());
    }

    public final boolean w() {
        return Modifier.isStatic(getModifiers());
    }

    public final boolean x() {
        return Modifier.isSynchronized(getModifiers());
    }

    public final boolean y() {
        return Modifier.isTransient(getModifiers());
    }

    public abstract boolean z();
}
