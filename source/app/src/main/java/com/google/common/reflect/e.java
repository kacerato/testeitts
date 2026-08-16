package com.google.common.reflect;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.C0;
import java.util.Map;
import javax.annotation.CheckForNull;

@d
public final class e<B> extends C0<p<? extends B>, B> implements o<B> {

    public final AbstractC12529i1<p<? extends B>, B> f67112b;

    public static final class b<B> {

        public final AbstractC12529i1.b<p<? extends B>, B> f67113a;

        public e<B> a() {
            return new e<>(this.f67113a.d());
        }

        @I2.a
        public <T extends B> b<B> b(p<T> pVar, T t10) {
            this.f67113a.i(pVar.V(), t10);
            return this;
        }

        @I2.a
        public <T extends B> b<B> c(Class<T> cls, T t10) {
            this.f67113a.i(p.T(cls), t10);
            return this;
        }

        public b() {
            this.f67113a = AbstractC12529i1.i();
        }
    }

    public static <B> b<B> B0() {
        return new b<>();
    }

    public static <B> e<B> C0() {
        return new e<>(AbstractC12529i1.y());
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public B put(p<? extends B> pVar, B b10) {
        throw new UnsupportedOperationException();
    }

    @CheckForNull
    public final <T extends B> T E0(p<T> pVar) {
        return this.f67112b.get(pVar);
    }

    @Override
    @I2.a
    @CheckForNull
    @Deprecated
    @I2.e("Always throws UnsupportedOperationException")
    public <T extends B> T Qc(p<T> pVar, T t10) {
        throw new UnsupportedOperationException();
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
        return (T) E0(p.T(cls));
    }

    @Override
    public Map<p<? extends B>, B> k0() {
        return this.f67112b;
    }

    @Override
    @I2.e("Always throws UnsupportedOperationException")
    @Deprecated
    public void putAll(Map<? extends p<? extends B>, ? extends B> map) {
        throw new UnsupportedOperationException();
    }

    @Override
    @CheckForNull
    public <T extends B> T u6(p<T> pVar) {
        return (T) E0(pVar.V());
    }

    public e(AbstractC12529i1<p<? extends B>, B> abstractC12529i1) {
        this.f67112b = abstractC12529i1;
    }
}
