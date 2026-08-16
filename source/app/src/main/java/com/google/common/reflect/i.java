package com.google.common.reflect;

import com.google.common.collect.AbstractC12521g1;
import com.google.common.collect.AbstractC12556p0;
import com.google.common.collect.e3;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import javax.annotation.CheckForNull;
import v2.InterfaceC15800a;
import w2.H;

@d
@InterfaceC15800a
public final class i implements AnnotatedElement {

    public final f<?, ?> f67121a;

    public final int f67122b;

    public final p<?> f67123c;

    public final AbstractC12521g1<Annotation> f67124d;

    public i(f<?, ?> fVar, int i10, p<?> pVar, Annotation[] annotationArr) {
        this.f67121a = fVar;
        this.f67122b = i10;
        this.f67123c = pVar;
        this.f67124d = AbstractC12521g1.u(annotationArr);
    }

    public f<?, ?> a() {
        return this.f67121a;
    }

    public p<?> b() {
        return this.f67123c;
    }

    public boolean equals(@CheckForNull Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f67122b == iVar.f67122b && this.f67121a.equals(iVar.f67121a);
    }

    @Override
    @CheckForNull
    public <A extends Annotation> A getAnnotation(Class<A> cls) {
        H.E(cls);
        e3<Annotation> it = this.f67124d.iterator();
        while (it.hasNext()) {
            Annotation next = it.next();
            if (cls.isInstance(next)) {
                return cls.cast(next);
            }
        }
        return null;
    }

    @Override
    public Annotation[] getAnnotations() {
        return getDeclaredAnnotations();
    }

    @Override
    public <A extends Annotation> A[] getAnnotationsByType(Class<A> cls) {
        return (A[]) getDeclaredAnnotationsByType(cls);
    }

    @Override
    @CheckForNull
    public <A extends Annotation> A getDeclaredAnnotation(Class<A> cls) {
        H.E(cls);
        return (A) AbstractC12556p0.s(this.f67124d).m(cls).o().j();
    }

    @Override
    public Annotation[] getDeclaredAnnotations() {
        return (Annotation[]) this.f67124d.toArray(new Annotation[0]);
    }

    @Override
    public <A extends Annotation> A[] getDeclaredAnnotationsByType(Class<A> cls) {
        return (A[]) ((Annotation[]) AbstractC12556p0.s(this.f67124d).m(cls).C(cls));
    }

    public int hashCode() {
        return this.f67122b;
    }

    @Override
    public boolean isAnnotationPresent(Class<? extends Annotation> cls) {
        return getAnnotation(cls) != null;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f67123c);
        int i10 = this.f67122b;
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 15);
        sb2.append(valueOf);
        sb2.append(" arg");
        sb2.append(i10);
        return sb2.toString();
    }
}
