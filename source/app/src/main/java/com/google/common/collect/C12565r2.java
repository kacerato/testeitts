package com.google.common.collect;

import com.google.common.collect.AbstractC12529i1;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

@X
@v2.b(emulated = true, serializable = true)
public final class C12565r2<K, V> extends AbstractC12529i1<K, V> {

    public static final byte f66830j = -1;

    public static final int f66831k = 128;

    public static final int f66832l = 32768;

    public static final int f66833m = 255;

    public static final int f66834n = 65535;

    public static final AbstractC12529i1<Object, Object> f66835o = new C12565r2(null, new Object[0], 0);

    public static final long f66836p = 0;

    @CheckForNull
    public final transient Object f66837g;

    @v2.d
    public final transient Object[] f66838h;

    public final transient int f66839i;

    public static class a<K, V> extends AbstractC12564r1<Map.Entry<K, V>> {

        public final transient AbstractC12529i1<K, V> f66840g;

        public final transient Object[] f66841h;

        public final transient int f66842i;

        public final transient int f66843j;

        public class C1007a extends AbstractC12521g1<Map.Entry<K, V>> {
            public C1007a() {
            }

            @Override
            public Map.Entry<K, V> get(int i10) {
                w2.H.C(i10, a.this.f66843j);
                int i11 = i10 * 2;
                Object obj = a.this.f66841h[a.this.f66842i + i11];
                Objects.requireNonNull(obj);
                Object obj2 = a.this.f66841h[i11 + (a.this.f66842i ^ 1)];
                Objects.requireNonNull(obj2);
                return new AbstractMap.SimpleImmutableEntry(obj, obj2);
            }

            @Override
            public boolean h() {
                return true;
            }

            @Override
            public int size() {
                return a.this.f66843j;
            }
        }

        public a(AbstractC12529i1<K, V> abstractC12529i1, Object[] objArr, int i10, int i11) {
            this.f66840g = abstractC12529i1;
            this.f66841h = objArr;
            this.f66842i = i10;
            this.f66843j = i11;
        }

        @Override
        public int b(Object[] objArr, int i10) {
            return a().b(objArr, i10);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            return value != null && value.equals(this.f66840g.get(key));
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public e3<Map.Entry<K, V>> iterator() {
            return a().iterator();
        }

        @Override
        public int size() {
            return this.f66843j;
        }

        @Override
        public AbstractC12521g1<Map.Entry<K, V>> x() {
            return new C1007a();
        }
    }

    public static final class b<K> extends AbstractC12564r1<K> {

        public final transient AbstractC12529i1<K, ?> f66845g;

        public final transient AbstractC12521g1<K> f66846h;

        public b(AbstractC12529i1<K, ?> abstractC12529i1, AbstractC12521g1<K> abstractC12521g1) {
            this.f66845g = abstractC12529i1;
            this.f66846h = abstractC12521g1;
        }

        @Override
        public AbstractC12521g1<K> a() {
            return this.f66846h;
        }

        @Override
        public int b(Object[] objArr, int i10) {
            return a().b(objArr, i10);
        }

        @Override
        public boolean contains(@CheckForNull Object obj) {
            return this.f66845g.get(obj) != null;
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public e3<K> iterator() {
            return a().iterator();
        }

        @Override
        public int size() {
            return this.f66845g.size();
        }
    }

    public static final class c extends AbstractC12521g1<Object> {

        public final transient Object[] f66847d;

        public final transient int f66848e;

        public final transient int f66849f;

        public c(Object[] objArr, int i10, int i11) {
            this.f66847d = objArr;
            this.f66848e = i10;
            this.f66849f = i11;
        }

        @Override
        public Object get(int i10) {
            w2.H.C(i10, this.f66849f);
            Object obj = this.f66847d[(i10 * 2) + this.f66848e];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override
        public boolean h() {
            return true;
        }

        @Override
        public int size() {
            return this.f66849f;
        }
    }

    public C12565r2(@CheckForNull Object obj, Object[] objArr, int i10) {
        this.f66837g = obj;
        this.f66838h = objArr;
        this.f66839i = i10;
    }

    public static <K, V> C12565r2<K, V> N(int i10, Object[] objArr) {
        return O(i10, objArr, null);
    }

    public static <K, V> C12565r2<K, V> O(int i10, Object[] objArr, AbstractC12529i1.b<K, V> bVar) {
        if (i10 == 0) {
            return (C12565r2) f66835o;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[1];
            Objects.requireNonNull(obj2);
            B.a(obj, obj2);
            return new C12565r2<>(null, objArr, 1);
        }
        w2.H.d0(i10, objArr.length >> 1);
        Object P10 = P(objArr, i10, AbstractC12564r1.o(i10), 0);
        if (P10 instanceof Object[]) {
            Object[] objArr2 = (Object[]) P10;
            AbstractC12529i1.b.a aVar = (AbstractC12529i1.b.a) objArr2[2];
            if (bVar == null) {
                throw aVar.a();
            }
            bVar.f66674e = aVar;
            Object obj3 = objArr2[0];
            int intValue = ((Integer) objArr2[1]).intValue();
            objArr = Arrays.copyOf(objArr, intValue * 2);
            P10 = obj3;
            i10 = intValue;
        }
        return new C12565r2<>(P10, objArr, i10);
    }

    @CheckForNull
    public static Object P(Object[] objArr, int i10, int i11, int i12) {
        AbstractC12529i1.b.a aVar = null;
        if (i10 == 1) {
            Object obj = objArr[i12];
            Objects.requireNonNull(obj);
            Object obj2 = objArr[i12 ^ 1];
            Objects.requireNonNull(obj2);
            B.a(obj, obj2);
            return null;
        }
        int i13 = i11 - 1;
        int i14 = -1;
        if (i11 <= 128) {
            byte[] bArr = new byte[i11];
            Arrays.fill(bArr, (byte) -1);
            int i15 = 0;
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = (i16 * 2) + i12;
                int i18 = (i15 * 2) + i12;
                Object obj3 = objArr[i17];
                Objects.requireNonNull(obj3);
                Object obj4 = objArr[i17 ^ 1];
                Objects.requireNonNull(obj4);
                B.a(obj3, obj4);
                int c10 = Y0.c(obj3.hashCode());
                while (true) {
                    int i19 = c10 & i13;
                    int i20 = bArr[i19] & 255;
                    if (i20 == 255) {
                        bArr[i19] = (byte) i18;
                        if (i15 < i16) {
                            objArr[i18] = obj3;
                            objArr[i18 ^ 1] = obj4;
                        }
                        i15++;
                    } else {
                        if (obj3.equals(objArr[i20])) {
                            int i21 = i20 ^ 1;
                            Object obj5 = objArr[i21];
                            Objects.requireNonNull(obj5);
                            aVar = new AbstractC12529i1.b.a(obj3, obj4, obj5);
                            objArr[i21] = obj4;
                            break;
                        }
                        c10 = i19 + 1;
                    }
                }
            }
            return i15 == i10 ? bArr : new Object[]{bArr, Integer.valueOf(i15), aVar};
        }
        if (i11 <= 32768) {
            short[] sArr = new short[i11];
            Arrays.fill(sArr, (short) -1);
            int i22 = 0;
            for (int i23 = 0; i23 < i10; i23++) {
                int i24 = (i23 * 2) + i12;
                int i25 = (i22 * 2) + i12;
                Object obj6 = objArr[i24];
                Objects.requireNonNull(obj6);
                Object obj7 = objArr[i24 ^ 1];
                Objects.requireNonNull(obj7);
                B.a(obj6, obj7);
                int c11 = Y0.c(obj6.hashCode());
                while (true) {
                    int i26 = c11 & i13;
                    int i27 = sArr[i26] & 65535;
                    if (i27 == 65535) {
                        sArr[i26] = (short) i25;
                        if (i22 < i23) {
                            objArr[i25] = obj6;
                            objArr[i25 ^ 1] = obj7;
                        }
                        i22++;
                    } else {
                        if (obj6.equals(objArr[i27])) {
                            int i28 = i27 ^ 1;
                            Object obj8 = objArr[i28];
                            Objects.requireNonNull(obj8);
                            aVar = new AbstractC12529i1.b.a(obj6, obj7, obj8);
                            objArr[i28] = obj7;
                            break;
                        }
                        c11 = i26 + 1;
                    }
                }
            }
            return i22 == i10 ? sArr : new Object[]{sArr, Integer.valueOf(i22), aVar};
        }
        int[] iArr = new int[i11];
        Arrays.fill(iArr, -1);
        int i29 = 0;
        int i30 = 0;
        while (i29 < i10) {
            int i31 = (i29 * 2) + i12;
            int i32 = (i30 * 2) + i12;
            Object obj9 = objArr[i31];
            Objects.requireNonNull(obj9);
            Object obj10 = objArr[i31 ^ 1];
            Objects.requireNonNull(obj10);
            B.a(obj9, obj10);
            int c12 = Y0.c(obj9.hashCode());
            while (true) {
                int i33 = c12 & i13;
                int i34 = iArr[i33];
                if (i34 == i14) {
                    iArr[i33] = i32;
                    if (i30 < i29) {
                        objArr[i32] = obj9;
                        objArr[i32 ^ 1] = obj10;
                    }
                    i30++;
                } else {
                    if (obj9.equals(objArr[i34])) {
                        int i35 = i34 ^ 1;
                        Object obj11 = objArr[i35];
                        Objects.requireNonNull(obj11);
                        aVar = new AbstractC12529i1.b.a(obj9, obj10, obj11);
                        objArr[i35] = obj10;
                        break;
                    }
                    c12 = i33 + 1;
                    i14 = -1;
                }
            }
            i29++;
            i14 = -1;
        }
        return i30 == i10 ? iArr : new Object[]{iArr, Integer.valueOf(i30), aVar};
    }

    @CheckForNull
    public static Object Q(Object[] objArr, int i10, int i11, int i12) {
        Object P10 = P(objArr, i10, i11, i12);
        if (P10 instanceof Object[]) {
            throw ((AbstractC12529i1.b.a) ((Object[]) P10)[2]).a();
        }
        return P10;
    }

    @CheckForNull
    public static Object R(@CheckForNull Object obj, Object[] objArr, int i10, int i11, @CheckForNull Object obj2) {
        if (obj2 == null) {
            return null;
        }
        if (i10 == 1) {
            Object obj3 = objArr[i11];
            Objects.requireNonNull(obj3);
            if (!obj3.equals(obj2)) {
                return null;
            }
            Object obj4 = objArr[i11 ^ 1];
            Objects.requireNonNull(obj4);
            return obj4;
        }
        if (obj == null) {
            return null;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            int length = bArr.length - 1;
            int c10 = Y0.c(obj2.hashCode());
            while (true) {
                int i12 = c10 & length;
                int i13 = bArr[i12] & 255;
                if (i13 == 255) {
                    return null;
                }
                if (obj2.equals(objArr[i13])) {
                    return objArr[i13 ^ 1];
                }
                c10 = i12 + 1;
            }
        } else if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            int length2 = sArr.length - 1;
            int c11 = Y0.c(obj2.hashCode());
            while (true) {
                int i14 = c11 & length2;
                int i15 = sArr[i14] & 65535;
                if (i15 == 65535) {
                    return null;
                }
                if (obj2.equals(objArr[i15])) {
                    return objArr[i15 ^ 1];
                }
                c11 = i14 + 1;
            }
        } else {
            int[] iArr = (int[]) obj;
            int length3 = iArr.length - 1;
            int c12 = Y0.c(obj2.hashCode());
            while (true) {
                int i16 = c12 & length3;
                int i17 = iArr[i16];
                if (i17 == -1) {
                    return null;
                }
                if (obj2.equals(objArr[i17])) {
                    return objArr[i17 ^ 1];
                }
                c12 = i16 + 1;
            }
        }
    }

    @Override
    @CheckForNull
    public V get(@CheckForNull Object obj) {
        V v10 = (V) R(this.f66837g, this.f66838h, this.f66839i, 0, obj);
        if (v10 == null) {
            return null;
        }
        return v10;
    }

    @Override
    public AbstractC12564r1<Map.Entry<K, V>> o() {
        return new a(this, this.f66838h, 0, this.f66839i);
    }

    @Override
    public AbstractC12564r1<K> p() {
        return new b(this, new c(this.f66838h, 0, this.f66839i));
    }

    @Override
    public AbstractC12505c1<V> q() {
        return new c(this.f66838h, 1, this.f66839i);
    }

    @Override
    public int size() {
        return this.f66839i;
    }

    @Override
    public boolean v() {
        return false;
    }
}
