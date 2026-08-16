package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import com.google.common.collect.AbstractC12596z1;
import com.google.common.collect.S2;
import java.lang.reflect.Array;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;
import org.eclipse.jdt.core.Signature;

@X
@v2.b
@I2.j(containerOf = {"R", Signature.SIG_CHAR, "V"})
public final class S<R, C, V> extends AbstractC12589x2<R, C, V> {

    public final AbstractC12529i1<R, Integer> f66179d;

    public final AbstractC12529i1<C, Integer> f66180e;

    public final AbstractC12529i1<R, AbstractC12529i1<C, V>> f66181f;

    public final AbstractC12529i1<C, AbstractC12529i1<R, V>> f66182g;

    public final int[] f66183h;

    public final int[] f66184i;

    public final V[][] f66185j;

    public final int[] f66186k;

    public final int[] f66187l;

    public final class b extends d<R, V> {

        public final int f66188h;

        public b(int i10) {
            super(S.this.f66184i[i10]);
            this.f66188h = i10;
        }

        @Override
        @CheckForNull
        public V P(int i10) {
            return (V) S.this.f66185j[i10][this.f66188h];
        }

        @Override
        public AbstractC12529i1<R, Integer> R() {
            return S.this.f66179d;
        }

        @Override
        public boolean v() {
            return true;
        }
    }

    public final class c extends d<C, AbstractC12529i1<R, V>> {
        @Override
        public AbstractC12529i1<C, Integer> R() {
            return S.this.f66180e;
        }

        @Override
        public AbstractC12529i1<R, V> P(int i10) {
            return new b(i10);
        }

        @Override
        public boolean v() {
            return false;
        }

        public c() {
            super(S.this.f66184i.length);
        }
    }

    public static abstract class d<K, V> extends AbstractC12529i1.c<K, V> {

        public final int f66191g;

        public class a extends AbstractC12503c<Map.Entry<K, V>> {

            public int f66192d = -1;

            public final int f66193e;

            public a() {
                this.f66193e = d.this.R().size();
            }

            @Override
            @CheckForNull
            public Map.Entry<K, V> a() {
                int i10 = this.f66192d;
                while (true) {
                    this.f66192d = i10 + 1;
                    int i11 = this.f66192d;
                    if (i11 >= this.f66193e) {
                        return b();
                    }
                    Object P10 = d.this.P(i11);
                    if (P10 != null) {
                        return Q1.O(d.this.O(this.f66192d), P10);
                    }
                    i10 = this.f66192d;
                }
            }
        }

        public d(int i10) {
            this.f66191g = i10;
        }

        @Override
        public e3<Map.Entry<K, V>> N() {
            return new a();
        }

        public K O(int i10) {
            return R().o().a().get(i10);
        }

        @CheckForNull
        public abstract V P(int i10);

        public final boolean Q() {
            return this.f66191g == R().size();
        }

        public abstract AbstractC12529i1<K, Integer> R();

        @Override
        @CheckForNull
        public V get(@CheckForNull Object obj) {
            Integer num = R().get(obj);
            if (num == null) {
                return null;
            }
            return P(num.intValue());
        }

        @Override
        public AbstractC12564r1<K> p() {
            return Q() ? R().o() : super.p();
        }

        @Override
        public int size() {
            return this.f66191g;
        }
    }

    public final class e extends d<C, V> {

        public final int f66195h;

        public e(int i10) {
            super(S.this.f66183h[i10]);
            this.f66195h = i10;
        }

        @Override
        @CheckForNull
        public V P(int i10) {
            return (V) S.this.f66185j[this.f66195h][i10];
        }

        @Override
        public AbstractC12529i1<C, Integer> R() {
            return S.this.f66180e;
        }

        @Override
        public boolean v() {
            return true;
        }
    }

    public final class f extends d<R, AbstractC12529i1<C, V>> {
        @Override
        public AbstractC12529i1<R, Integer> R() {
            return S.this.f66179d;
        }

        @Override
        public AbstractC12529i1<C, V> P(int i10) {
            return new e(i10);
        }

        @Override
        public boolean v() {
            return false;
        }

        public f() {
            super(S.this.f66183h.length);
        }
    }

    public S(AbstractC12521g1<S2.a<R, C, V>> abstractC12521g1, AbstractC12564r1<R> abstractC12564r1, AbstractC12564r1<C> abstractC12564r12) {
        this.f66185j = (V[][]) ((Object[][]) Array.newInstance((Class<?>) Object.class, abstractC12564r1.size(), abstractC12564r12.size()));
        AbstractC12529i1<R, Integer> Q10 = Q1.Q(abstractC12564r1);
        this.f66179d = Q10;
        AbstractC12529i1<C, Integer> Q11 = Q1.Q(abstractC12564r12);
        this.f66180e = Q11;
        this.f66183h = new int[Q10.size()];
        this.f66184i = new int[Q11.size()];
        int[] iArr = new int[abstractC12521g1.size()];
        int[] iArr2 = new int[abstractC12521g1.size()];
        for (int i10 = 0; i10 < abstractC12521g1.size(); i10++) {
            S2.a<R, C, V> aVar = abstractC12521g1.get(i10);
            R b10 = aVar.b();
            C a10 = aVar.a();
            Integer num = this.f66179d.get(b10);
            Objects.requireNonNull(num);
            int intValue = num.intValue();
            Integer num2 = this.f66180e.get(a10);
            Objects.requireNonNull(num2);
            int intValue2 = num2.intValue();
            F(b10, a10, this.f66185j[intValue][intValue2], aVar.getValue());
            this.f66185j[intValue][intValue2] = aVar.getValue();
            int[] iArr3 = this.f66183h;
            iArr3[intValue] = iArr3[intValue] + 1;
            int[] iArr4 = this.f66184i;
            iArr4[intValue2] = iArr4[intValue2] + 1;
            iArr[i10] = intValue;
            iArr2[i10] = intValue2;
        }
        this.f66186k = iArr;
        this.f66187l = iArr2;
        this.f66181f = new f();
        this.f66182g = new c();
    }

    @Override
    public S2.a<R, C, V> K(int i10) {
        int i11 = this.f66186k[i10];
        int i12 = this.f66187l[i10];
        R r10 = x().a().get(i11);
        C c10 = d0().a().get(i12);
        V v10 = this.f66185j[i11][i12];
        Objects.requireNonNull(v10);
        return AbstractC12596z1.i(r10, c10, v10);
    }

    @Override
    public V M(int i10) {
        V v10 = this.f66185j[this.f66186k[i10]][this.f66187l[i10]];
        Objects.requireNonNull(v10);
        return v10;
    }

    @Override
    @CheckForNull
    public V e(@CheckForNull Object obj, @CheckForNull Object obj2) {
        Integer num = this.f66179d.get(obj);
        Integer num2 = this.f66180e.get(obj2);
        if (num == null || num2 == null) {
            return null;
        }
        return this.f66185j[num.intValue()][num2.intValue()];
    }

    @Override
    public AbstractC12529i1<C, Map<R, V>> A() {
        return AbstractC12529i1.n(this.f66182g);
    }

    @Override
    public AbstractC12596z1.b q() {
        return AbstractC12596z1.b.a(this, this.f66186k, this.f66187l);
    }

    @Override
    public int size() {
        return this.f66186k.length;
    }

    @Override
    public AbstractC12529i1<R, Map<C, V>> u() {
        return AbstractC12529i1.n(this.f66181f);
    }
}
