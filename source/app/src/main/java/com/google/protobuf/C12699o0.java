package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.C12699o0.c;
import com.google.protobuf.D0;
import com.google.protobuf.H0;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C12699o0<T extends c<T>> {

    public static final int f69409d = 16;

    public static final C12699o0 f69410e = new C12699o0(true);

    public final R1<T, Object> f69411a;

    public boolean f69412b;

    public boolean f69413c;

    public static class a {

        public static final int[] f69414a;

        public static final int[] f69415b;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69415b = iArr;
            try {
                iArr[A2.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69415b[A2.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69415b[A2.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69415b[A2.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69415b[A2.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69415b[A2.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69415b[A2.b.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69415b[A2.b.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69415b[A2.b.GROUP.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69415b[A2.b.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69415b[A2.b.STRING.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69415b[A2.b.BYTES.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69415b[A2.b.UINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69415b[A2.b.SFIXED32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69415b[A2.b.SFIXED64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69415b[A2.b.SINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69415b[A2.b.SINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f69415b[A2.b.ENUM.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[A2.c.values().length];
            f69414a = iArr2;
            try {
                iArr2[A2.c.INT.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f69414a[A2.c.LONG.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f69414a[A2.c.FLOAT.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f69414a[A2.c.DOUBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f69414a[A2.c.BOOLEAN.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f69414a[A2.c.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f69414a[A2.c.BYTE_STRING.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f69414a[A2.c.ENUM.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f69414a[A2.c.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    public static final class b<T extends c<T>> {

        public R1<T, Object> f69416a;

        public boolean f69417b;

        public boolean f69418c;

        public boolean f69419d;

        public b(a aVar) {
            this();
        }

        public static <T extends c<T>> b<T> g(C12699o0<T> fieldSet) {
            b<T> bVar = new b<>(C12699o0.l(fieldSet.f69411a, true));
            bVar.f69417b = fieldSet.f69413c;
            return bVar;
        }

        public static Object r(Object value, boolean partial) {
            if (!(value instanceof InterfaceC12659b1.a)) {
                return value;
            }
            InterfaceC12659b1.a aVar = (InterfaceC12659b1.a) value;
            return partial ? aVar.buildPartial() : aVar.build();
        }

        public static <T extends c<T>> Object s(T descriptor, Object value, boolean partial) {
            if (value == null || descriptor.V1() != A2.c.MESSAGE) {
                return value;
            }
            if (!descriptor.Z1()) {
                return r(value, partial);
            }
            if (!(value instanceof List)) {
                throw new IllegalStateException("Repeated field should contains a List but actually contains type: " + ((Object) value.getClass()));
            }
            List list = (List) value;
            for (int i10 = 0; i10 < list.size(); i10++) {
                Object obj = list.get(i10);
                Object r10 = r(obj, partial);
                if (r10 != obj) {
                    if (list == value) {
                        list = new ArrayList(list);
                    }
                    list.set(i10, r10);
                }
            }
            return list;
        }

        public static <T extends c<T>> void t(R1<T, Object> fieldMap, boolean partial) {
            for (int i10 = 0; i10 < fieldMap.m(); i10++) {
                u(fieldMap.l(i10), partial);
            }
            Iterator<Map.Entry<T, Object>> it = fieldMap.o().iterator();
            while (it.hasNext()) {
                u(it.next(), partial);
            }
        }

        public static <T extends c<T>> void u(Map.Entry<T, Object> entry, boolean partial) {
            entry.setValue(s(entry.getKey(), entry.getValue(), partial));
        }

        public void a(final T descriptor, final Object value) {
            Collection collection;
            f();
            if (!descriptor.Z1()) {
                throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
            }
            this.f69419d = this.f69419d || (value instanceof InterfaceC12659b1.a);
            x(descriptor, value);
            Object j10 = j(descriptor);
            if (j10 == null) {
                collection = new ArrayList();
                this.f69416a.put(descriptor, collection);
            } else {
                collection = (List) j10;
            }
            collection.add(value);
        }

        public C12699o0<T> b() {
            return c(false);
        }

        public final C12699o0<T> c(boolean partial) {
            if (this.f69416a.isEmpty()) {
                return C12699o0.s();
            }
            this.f69418c = false;
            R1<T, Object> r12 = this.f69416a;
            if (this.f69419d) {
                r12 = C12699o0.l(r12, false);
                t(r12, partial);
            }
            C12699o0<T> c12699o0 = new C12699o0<>(r12, null);
            c12699o0.f69413c = this.f69417b;
            return c12699o0;
        }

        public C12699o0<T> d() {
            return c(true);
        }

        public void e(final T descriptor) {
            f();
            this.f69416a.remove(descriptor);
            if (this.f69416a.isEmpty()) {
                this.f69417b = false;
            }
        }

        public final void f() {
            if (this.f69418c) {
                return;
            }
            this.f69416a = C12699o0.l(this.f69416a, true);
            this.f69418c = true;
        }

        public Map<T, Object> h() {
            if (!this.f69417b) {
                return this.f69416a.r() ? this.f69416a : Collections.unmodifiableMap(this.f69416a);
            }
            R1 l10 = C12699o0.l(this.f69416a, false);
            if (this.f69416a.r()) {
                l10.s();
            } else {
                t(l10, true);
            }
            return l10;
        }

        public Object i(final T descriptor) {
            return s(descriptor, j(descriptor), true);
        }

        public Object j(final T descriptor) {
            Object obj = this.f69416a.get(descriptor);
            return obj instanceof H0 ? ((H0) obj).p() : obj;
        }

        public Object k(final T descriptor, final int index) {
            if (this.f69419d) {
                f();
            }
            return r(l(descriptor, index), true);
        }

        public Object l(final T descriptor, final int index) {
            if (!descriptor.Z1()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            Object j10 = j(descriptor);
            if (j10 != null) {
                return ((List) j10).get(index);
            }
            throw new IndexOutOfBoundsException();
        }

        public int m(final T descriptor) {
            if (!descriptor.Z1()) {
                throw new IllegalArgumentException("getRepeatedFieldCount() can only be called on repeated fields.");
            }
            Object j10 = j(descriptor);
            if (j10 == null) {
                return 0;
            }
            return ((List) j10).size();
        }

        public boolean n(final T descriptor) {
            if (descriptor.Z1()) {
                throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
            }
            return this.f69416a.get(descriptor) != null;
        }

        public boolean o() {
            for (int i10 = 0; i10 < this.f69416a.m(); i10++) {
                if (!C12699o0.F(this.f69416a.l(i10))) {
                    return false;
                }
            }
            Iterator<Map.Entry<T, Object>> it = this.f69416a.o().iterator();
            while (it.hasNext()) {
                if (!C12699o0.F(it.next())) {
                    return false;
                }
            }
            return true;
        }

        public void p(final C12699o0<T> other) {
            f();
            for (int i10 = 0; i10 < other.f69411a.m(); i10++) {
                q(other.f69411a.l(i10));
            }
            Iterator it = other.f69411a.o().iterator();
            while (it.hasNext()) {
                q((Map.Entry) it.next());
            }
        }

        public final void q(final Map.Entry<T, Object> entry) {
            T key = entry.getKey();
            Object value = entry.getValue();
            if (value instanceof H0) {
                value = ((H0) value).p();
            }
            if (key.Z1()) {
                Collection collection = (List) j(key);
                if (collection == null) {
                    collection = new ArrayList();
                    this.f69416a.put(key, collection);
                }
                Iterator it = ((List) value).iterator();
                while (it.hasNext()) {
                    collection.add(C12699o0.n(it.next()));
                }
                return;
            }
            if (key.V1() != A2.c.MESSAGE) {
                this.f69416a.put(key, C12699o0.n(value));
                return;
            }
            Object j10 = j(key);
            if (j10 == null) {
                this.f69416a.put(key, C12699o0.n(value));
            } else if (j10 instanceof InterfaceC12659b1.a) {
                key.n((InterfaceC12659b1.a) j10, (InterfaceC12659b1) value);
            } else {
                this.f69416a.put(key, key.n(((InterfaceC12659b1) j10).toBuilder(), (InterfaceC12659b1) value).build());
            }
        }

        public void v(final T descriptor, Object value) {
            f();
            if (!descriptor.Z1()) {
                x(descriptor, value);
            } else {
                if (!(value instanceof List)) {
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
                ArrayList arrayList = new ArrayList((List) value);
                for (Object obj : arrayList) {
                    x(descriptor, obj);
                    this.f69419d = this.f69419d || (obj instanceof InterfaceC12659b1.a);
                }
                value = arrayList;
            }
            if (value instanceof H0) {
                this.f69417b = true;
            }
            this.f69419d = this.f69419d || (value instanceof InterfaceC12659b1.a);
            this.f69416a.put(descriptor, value);
        }

        public void w(final T descriptor, final int index, final Object value) {
            f();
            if (!descriptor.Z1()) {
                throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
            }
            this.f69419d = this.f69419d || (value instanceof InterfaceC12659b1.a);
            Object j10 = j(descriptor);
            if (j10 == null) {
                throw new IndexOutOfBoundsException();
            }
            x(descriptor, value);
            ((List) j10).set(index, value);
        }

        public final void x(final T descriptor, final Object value) {
            if (C12699o0.H(descriptor.U1(), value)) {
                return;
            }
            if (descriptor.U1().a() != A2.c.MESSAGE || !(value instanceof InterfaceC12659b1.a)) {
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(descriptor.getNumber()), descriptor.U1().a(), value.getClass().getName()));
            }
        }

        public b() {
            this(R1.t(16));
        }

        public b(R1<T, Object> fields) {
            this.f69416a = fields;
            this.f69418c = true;
        }
    }

    public interface c<T extends c<T>> extends Comparable<T> {
        A2.b U1();

        A2.c V1();

        D0.d<?> W1();

        boolean Z1();

        int getNumber();

        boolean i2();

        InterfaceC12659b1.a n(InterfaceC12659b1.a to, InterfaceC12659b1 from);
    }

    public C12699o0(R1 r12, a aVar) {
        this(r12);
    }

    public static int A(final A2.b type, boolean isPacked) {
        if (isPacked) {
            return 2;
        }
        return type.b();
    }

    public static <T extends c<T>> boolean F(final Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        if (key.V1() != A2.c.MESSAGE) {
            return true;
        }
        if (!key.Z1()) {
            return G(entry.getValue());
        }
        Iterator it = ((List) entry.getValue()).iterator();
        while (it.hasNext()) {
            if (!G(it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean G(Object value) {
        if (value instanceof InterfaceC12663c1) {
            return ((InterfaceC12663c1) value).isInitialized();
        }
        if (value instanceof H0) {
            return true;
        }
        throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
    }

    public static boolean H(final A2.b type, final Object value) {
        D0.d(value);
        switch (a.f69414a[type.a().ordinal()]) {
            case 1:
                return value instanceof Integer;
            case 2:
                return value instanceof Long;
            case 3:
                return value instanceof Float;
            case 4:
                return value instanceof Double;
            case 5:
                return value instanceof Boolean;
            case 6:
                return value instanceof String;
            case 7:
                return (value instanceof AbstractC12724x) || (value instanceof byte[]);
            case 8:
                return (value instanceof Integer) || (value instanceof D0.c);
            case 9:
                return (value instanceof InterfaceC12659b1) || (value instanceof H0);
            default:
                return false;
        }
    }

    public static <T extends c<T>> b<T> M() {
        return new b<>((a) null);
    }

    public static <T extends c<T>> C12699o0<T> N() {
        return new C12699o0<>();
    }

    public static Object O(C input, final A2.b type, boolean checkUtf8) throws IOException {
        return checkUtf8 ? A2.d(input, type, A2.d.STRICT) : A2.d(input, type, A2.d.LOOSE);
    }

    public static void S(final CodedOutputStream output, final A2.b type, final int number, final Object value) throws IOException {
        if (type == A2.b.GROUP) {
            output.F1(number, (InterfaceC12659b1) value);
        } else {
            output.g2(number, A(type, false));
            T(output, type, value);
        }
    }

    public static void T(final CodedOutputStream output, final A2.b type, final Object value) throws IOException {
        switch (a.f69415b[type.ordinal()]) {
            case 1:
                output.A1(((Double) value).doubleValue());
                return;
            case 2:
                output.E1(((Float) value).floatValue());
                return;
            case 3:
                output.K1(((Long) value).longValue());
                return;
            case 4:
                output.i2(((Long) value).longValue());
                return;
            case 5:
                output.J1(((Integer) value).intValue());
                return;
            case 6:
                output.D1(((Long) value).longValue());
                return;
            case 7:
                output.C1(((Integer) value).intValue());
                return;
            case 8:
                output.t1(((Boolean) value).booleanValue());
                return;
            case 9:
                output.H1((InterfaceC12659b1) value);
                return;
            case 10:
                output.N1((InterfaceC12659b1) value);
                return;
            case 11:
                if (value instanceof AbstractC12724x) {
                    output.z1((AbstractC12724x) value);
                    return;
                } else {
                    output.f2((String) value);
                    return;
                }
            case 12:
                if (value instanceof AbstractC12724x) {
                    output.z1((AbstractC12724x) value);
                    return;
                } else {
                    output.w1((byte[]) value);
                    return;
                }
            case 13:
                output.h2(((Integer) value).intValue());
                return;
            case 14:
                output.b2(((Integer) value).intValue());
                return;
            case 15:
                output.c2(((Long) value).longValue());
                return;
            case 16:
                output.d2(((Integer) value).intValue());
                return;
            case 17:
                output.e2(((Long) value).longValue());
                return;
            case 18:
                if (value instanceof D0.c) {
                    output.B1(((D0.c) value).getNumber());
                    return;
                } else {
                    output.B1(((Integer) value).intValue());
                    return;
                }
            default:
                return;
        }
    }

    public static void U(final c<?> descriptor, final Object value, final CodedOutputStream output) throws IOException {
        A2.b U12 = descriptor.U1();
        int number = descriptor.getNumber();
        if (!descriptor.Z1()) {
            if (value instanceof H0) {
                S(output, U12, number, ((H0) value).p());
                return;
            } else {
                S(output, U12, number, value);
                return;
            }
        }
        List list = (List) value;
        if (!descriptor.i2()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                S(output, U12, number, it.next());
            }
        } else {
            if (list.isEmpty()) {
                return;
            }
            output.g2(number, 2);
            Iterator it2 = list.iterator();
            int i10 = 0;
            while (it2.hasNext()) {
                i10 += p(U12, it2.next());
            }
            output.h2(i10);
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                T(output, U12, it3.next());
            }
        }
    }

    public static <T extends c<T>> R1<T, Object> l(R1<T, Object> fields, boolean copyList) {
        R1<T, Object> t10 = R1.t(16);
        for (int i10 = 0; i10 < fields.m(); i10++) {
            m(t10, fields.l(i10), copyList);
        }
        Iterator<Map.Entry<T, Object>> it = fields.o().iterator();
        while (it.hasNext()) {
            m(t10, it.next(), copyList);
        }
        return t10;
    }

    public static <T extends c<T>> void m(Map<T, Object> map, Map.Entry<T, Object> entry, boolean copyList) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof H0) {
            map.put(key, ((H0) value).p());
        } else if (copyList && (value instanceof List)) {
            map.put(key, new ArrayList((List) value));
        } else {
            map.put(key, value);
        }
    }

    public static Object n(Object value) {
        if (!(value instanceof byte[])) {
            return value;
        }
        byte[] bArr = (byte[]) value;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int o(final A2.b type, final int number, final Object value) {
        int X02 = CodedOutputStream.X0(number);
        if (type == A2.b.GROUP) {
            X02 *= 2;
        }
        return X02 + p(type, value);
    }

    public static int p(final A2.b type, final Object value) {
        switch (a.f69415b[type.ordinal()]) {
            case 1:
                return CodedOutputStream.j0(((Double) value).doubleValue());
            case 2:
                return CodedOutputStream.r0(((Float) value).floatValue());
            case 3:
                return CodedOutputStream.z0(((Long) value).longValue());
            case 4:
                return CodedOutputStream.b1(((Long) value).longValue());
            case 5:
                return CodedOutputStream.x0(((Integer) value).intValue());
            case 6:
                return CodedOutputStream.p0(((Long) value).longValue());
            case 7:
                return CodedOutputStream.n0(((Integer) value).intValue());
            case 8:
                return CodedOutputStream.b0(((Boolean) value).booleanValue());
            case 9:
                return CodedOutputStream.u0((InterfaceC12659b1) value);
            case 10:
                return value instanceof H0 ? CodedOutputStream.C0((H0) value) : CodedOutputStream.H0((InterfaceC12659b1) value);
            case 11:
                return value instanceof AbstractC12724x ? CodedOutputStream.h0((AbstractC12724x) value) : CodedOutputStream.W0((String) value);
            case 12:
                return value instanceof AbstractC12724x ? CodedOutputStream.h0((AbstractC12724x) value) : CodedOutputStream.d0((byte[]) value);
            case 13:
                return CodedOutputStream.Z0(((Integer) value).intValue());
            case 14:
                return CodedOutputStream.O0(((Integer) value).intValue());
            case 15:
                return CodedOutputStream.Q0(((Long) value).longValue());
            case 16:
                return CodedOutputStream.S0(((Integer) value).intValue());
            case 17:
                return CodedOutputStream.U0(((Long) value).longValue());
            case 18:
                return value instanceof D0.c ? CodedOutputStream.l0(((D0.c) value).getNumber()) : CodedOutputStream.l0(((Integer) value).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int q(final c<?> descriptor, final Object value) {
        A2.b U12 = descriptor.U1();
        int number = descriptor.getNumber();
        if (!descriptor.Z1()) {
            return o(U12, number, value);
        }
        List list = (List) value;
        int i10 = 0;
        if (!descriptor.i2()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                i10 += o(U12, number, it.next());
            }
            return i10;
        }
        if (list.isEmpty()) {
            return 0;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            i10 += p(U12, it2.next());
        }
        return CodedOutputStream.X0(number) + i10 + CodedOutputStream.Z0(i10);
    }

    public static <T extends c<T>> C12699o0<T> s() {
        return f69410e;
    }

    public boolean B(final T descriptor) {
        if (descriptor.Z1()) {
            throw new IllegalArgumentException("hasField() can only be called on non-repeated fields.");
        }
        return this.f69411a.get(descriptor) != null;
    }

    public boolean C() {
        return this.f69411a.isEmpty();
    }

    public boolean D() {
        return this.f69412b;
    }

    public boolean E() {
        for (int i10 = 0; i10 < this.f69411a.m(); i10++) {
            if (!F(this.f69411a.l(i10))) {
                return false;
            }
        }
        Iterator<Map.Entry<T, Object>> it = this.f69411a.o().iterator();
        while (it.hasNext()) {
            if (!F(it.next())) {
                return false;
            }
        }
        return true;
    }

    public Iterator<Map.Entry<T, Object>> I() {
        return this.f69413c ? new H0.c(this.f69411a.entrySet().iterator()) : this.f69411a.entrySet().iterator();
    }

    public void J() {
        if (this.f69412b) {
            return;
        }
        for (int i10 = 0; i10 < this.f69411a.m(); i10++) {
            Map.Entry<T, Object> l10 = this.f69411a.l(i10);
            if (l10.getValue() instanceof AbstractC12719v0) {
                ((AbstractC12719v0) l10.getValue()).G6();
            }
        }
        this.f69411a.s();
        this.f69412b = true;
    }

    public void K(final C12699o0<T> other) {
        for (int i10 = 0; i10 < other.f69411a.m(); i10++) {
            L(other.f69411a.l(i10));
        }
        Iterator<Map.Entry<T, Object>> it = other.f69411a.o().iterator();
        while (it.hasNext()) {
            L(it.next());
        }
    }

    public final void L(final Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        if (value instanceof H0) {
            value = ((H0) value).p();
        }
        if (key.Z1()) {
            Object u10 = u(key);
            if (u10 == null) {
                u10 = new ArrayList();
            }
            Iterator it = ((List) value).iterator();
            while (it.hasNext()) {
                ((List) u10).add(n(it.next()));
            }
            this.f69411a.put(key, u10);
            return;
        }
        if (key.V1() != A2.c.MESSAGE) {
            this.f69411a.put(key, n(value));
            return;
        }
        Object u11 = u(key);
        if (u11 == null) {
            this.f69411a.put(key, n(value));
        } else {
            this.f69411a.put(key, key.n(((InterfaceC12659b1) u11).toBuilder(), (InterfaceC12659b1) value).build());
        }
    }

    public void P(final T descriptor, Object value) {
        if (!descriptor.Z1()) {
            R(descriptor, value);
        } else {
            if (!(value instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) value);
            Iterator<E> it = arrayList.iterator();
            while (it.hasNext()) {
                R(descriptor, it.next());
            }
            value = arrayList;
        }
        if (value instanceof H0) {
            this.f69413c = true;
        }
        this.f69411a.put(descriptor, value);
    }

    public void Q(final T descriptor, final int index, final Object value) {
        if (!descriptor.Z1()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object u10 = u(descriptor);
        if (u10 == null) {
            throw new IndexOutOfBoundsException();
        }
        R(descriptor, value);
        ((List) u10).set(index, value);
    }

    public final void R(final T descriptor, final Object value) {
        if (!H(descriptor.U1(), value)) {
            throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(descriptor.getNumber()), descriptor.U1().a(), value.getClass().getName()));
        }
    }

    public void V(final CodedOutputStream output) throws IOException {
        for (int i10 = 0; i10 < this.f69411a.m(); i10++) {
            W(this.f69411a.l(i10), output);
        }
        Iterator<Map.Entry<T, Object>> it = this.f69411a.o().iterator();
        while (it.hasNext()) {
            W(it.next(), output);
        }
    }

    public final void W(final Map.Entry<T, Object> entry, final CodedOutputStream output) throws IOException {
        T key = entry.getKey();
        if (key.V1() != A2.c.MESSAGE || key.Z1() || key.i2()) {
            U(key, entry.getValue(), output);
            return;
        }
        Object value = entry.getValue();
        if (value instanceof H0) {
            value = ((H0) value).p();
        }
        output.P1(entry.getKey().getNumber(), (InterfaceC12659b1) value);
    }

    public void X(final CodedOutputStream output) throws IOException {
        for (int i10 = 0; i10 < this.f69411a.m(); i10++) {
            Map.Entry<T, Object> l10 = this.f69411a.l(i10);
            U(l10.getKey(), l10.getValue(), output);
        }
        for (Map.Entry<T, Object> entry : this.f69411a.o()) {
            U(entry.getKey(), entry.getValue(), output);
        }
    }

    public boolean equals(Object o10) {
        if (this == o10) {
            return true;
        }
        if (o10 instanceof C12699o0) {
            return this.f69411a.equals(((C12699o0) o10).f69411a);
        }
        return false;
    }

    public void h(final T descriptor, final Object value) {
        Collection collection;
        if (!descriptor.Z1()) {
            throw new IllegalArgumentException("addRepeatedField() can only be called on repeated fields.");
        }
        R(descriptor, value);
        Object u10 = u(descriptor);
        if (u10 == null) {
            collection = new ArrayList();
            this.f69411a.put(descriptor, collection);
        } else {
            collection = (List) u10;
        }
        collection.add(value);
    }

    public int hashCode() {
        return this.f69411a.hashCode();
    }

    public void i() {
        this.f69411a.clear();
        this.f69413c = false;
    }

    public void j(final T descriptor) {
        this.f69411a.remove(descriptor);
        if (this.f69411a.isEmpty()) {
            this.f69413c = false;
        }
    }

    public C12699o0<T> clone() {
        C12699o0<T> N10 = N();
        for (int i10 = 0; i10 < this.f69411a.m(); i10++) {
            Map.Entry<T, Object> l10 = this.f69411a.l(i10);
            N10.P(l10.getKey(), l10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f69411a.o()) {
            N10.P(entry.getKey(), entry.getValue());
        }
        N10.f69413c = this.f69413c;
        return N10;
    }

    public Iterator<Map.Entry<T, Object>> r() {
        return this.f69413c ? new H0.c(this.f69411a.j().iterator()) : this.f69411a.j().iterator();
    }

    public Map<T, Object> t() {
        if (!this.f69413c) {
            return this.f69411a.r() ? this.f69411a : Collections.unmodifiableMap(this.f69411a);
        }
        R1 l10 = l(this.f69411a, false);
        if (this.f69411a.r()) {
            l10.s();
        }
        return l10;
    }

    public Object u(final T descriptor) {
        Object obj = this.f69411a.get(descriptor);
        return obj instanceof H0 ? ((H0) obj).p() : obj;
    }

    public int v() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f69411a.m(); i11++) {
            i10 += w(this.f69411a.l(i11));
        }
        Iterator<Map.Entry<T, Object>> it = this.f69411a.o().iterator();
        while (it.hasNext()) {
            i10 += w(it.next());
        }
        return i10;
    }

    public final int w(final Map.Entry<T, Object> entry) {
        T key = entry.getKey();
        Object value = entry.getValue();
        return (key.V1() != A2.c.MESSAGE || key.Z1() || key.i2()) ? q(key, value) : value instanceof H0 ? CodedOutputStream.A0(entry.getKey().getNumber(), (H0) value) : CodedOutputStream.E0(entry.getKey().getNumber(), (InterfaceC12659b1) value);
    }

    public Object x(final T descriptor, final int index) {
        if (!descriptor.Z1()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object u10 = u(descriptor);
        if (u10 != null) {
            return ((List) u10).get(index);
        }
        throw new IndexOutOfBoundsException();
    }

    public int y(final T descriptor) {
        if (!descriptor.Z1()) {
            throw new IllegalArgumentException("getRepeatedField() can only be called on repeated fields.");
        }
        Object u10 = u(descriptor);
        if (u10 == null) {
            return 0;
        }
        return ((List) u10).size();
    }

    public int z() {
        int i10 = 0;
        for (int i11 = 0; i11 < this.f69411a.m(); i11++) {
            Map.Entry<T, Object> l10 = this.f69411a.l(i11);
            i10 += q(l10.getKey(), l10.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f69411a.o()) {
            i10 += q(entry.getKey(), entry.getValue());
        }
        return i10;
    }

    public C12699o0() {
        this.f69411a = R1.t(16);
    }

    public C12699o0(final boolean dummy) {
        this(R1.t(0));
        J();
    }

    public C12699o0(R1<T, Object> fields) {
        this.f69411a = fields;
        J();
    }
}
