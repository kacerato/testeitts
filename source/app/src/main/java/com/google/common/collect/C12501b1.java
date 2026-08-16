package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import java.io.Serializable;
import java.util.Map;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.core.Signature;

@v2.c
@X
@I2.j(containerOf = {Signature.SIG_BYTE})
public final class C12501b1<B> extends C0<Class<? extends B>, B> implements A<B>, Serializable {

    public static final C12501b1<Object> f66450c = new C12501b1<>(AbstractC12529i1.y());

    public final AbstractC12529i1<Class<? extends B>, B> f66451b;

    public static final class b<B> {

        public final AbstractC12529i1.b<Class<? extends B>, B> f66452a = AbstractC12529i1.i();

        public static <B, T extends B> T b(Class<T> cls, B b10) {
            return (T) com.google.common.primitives.r.f(cls).cast(b10);
        }

        public C12501b1<B> a() {
            AbstractC12529i1<Class<? extends B>, B> d10 = this.f66452a.d();
            return d10.isEmpty() ? C12501b1.D0() : new C12501b1<>(d10);
        }

        @I2.a
        public <T extends B> b<B> c(Class<T> cls, T t10) {
            this.f66452a.i(cls, t10);
            return this;
        }

        @I2.a
        public <T extends B> b<B> d(Map<? extends Class<? extends T>, ? extends T> map) {
            for (Map.Entry<? extends Class<? extends T>, ? extends T> entry : map.entrySet()) {
                Class<? extends T> key = entry.getKey();
                this.f66452a.i(key, b(key, entry.getValue()));
            }
            return this;
        }
    }

    public static <B> b<B> B0() {
        return new b<>();
    }

    public static <B, S extends B> C12501b1<B> C0(Map<? extends Class<? extends S>, ? extends S> map) {
        return map instanceof C12501b1 ? (C12501b1) map : new b().d(map).a();
    }

    public static <B> C12501b1<B> D0() {
        return (C12501b1<B>) f66450c;
    }

    public static <B, T extends B> C12501b1<B> E0(Class<T> cls, T t10) {
        return new C12501b1<>(AbstractC12529i1.z(cls, t10));
    }

    public Object F0() {
        return isEmpty() ? D0() : this;
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public <T extends B> T a2(Class<T> cls, T t10) {
        throw new UnsupportedOperationException();
    }

    @Override
    @CheckForNull
    public <T extends B> T k2(Class<T> cls) {
        return this.f66451b.get(w2.H.E(cls));
    }

    @Override
    public Map<Class<? extends B>, B> k0() {
        return this.f66451b;
    }

    public C12501b1(AbstractC12529i1<Class<? extends B>, B> abstractC12529i1) {
        this.f66451b = abstractC12529i1;
    }
}
