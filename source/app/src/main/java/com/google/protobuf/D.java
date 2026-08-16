package com.google.protobuf;

import android.content.Context;
import com.google.protobuf.A2;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.R0;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@B
public final class D implements E1 {

    public static final int f67913g = 3;

    public static final int f67914h = 7;

    public static final int f67915i = 0;

    public final C f67916c;

    public int f67917d;

    public int f67918e;

    public int f67919f = 0;

    public static class a {

        public static final int[] f67920a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f67920a = iArr;
            try {
                iArr[A2.b.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f67920a[A2.b.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f67920a[A2.b.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f67920a[A2.b.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f67920a[A2.b.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f67920a[A2.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f67920a[A2.b.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f67920a[A2.b.INT32.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f67920a[A2.b.INT64.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f67920a[A2.b.MESSAGE.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f67920a[A2.b.SFIXED32.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f67920a[A2.b.SFIXED64.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f67920a[A2.b.SINT32.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f67920a[A2.b.SINT64.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f67920a[A2.b.STRING.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f67920a[A2.b.UINT32.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f67920a[A2.b.UINT64.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
        }
    }

    public D(C input) {
        C c10 = (C) D0.e(input, Context.INPUT_SERVICE);
        this.f67916c = c10;
        c10.f67834d = this;
    }

    public static D U(C input) {
        D d10 = input.f67834d;
        return d10 != null ? d10 : new D(input);
    }

    private Object X(A2.b fieldType, Class<?> messageType, C12666d0 extensionRegistry) throws IOException {
        switch (a.f67920a[fieldType.ordinal()]) {
            case 1:
                return Boolean.valueOf(C());
            case 2:
                return h();
            case 3:
                return Double.valueOf(readDouble());
            case 4:
                return Integer.valueOf(d());
            case 5:
                return Integer.valueOf(N());
            case 6:
                return Long.valueOf(z());
            case 7:
                return Float.valueOf(readFloat());
            case 8:
                return Integer.valueOf(J());
            case 9:
                return Long.valueOf(y());
            case 10:
                return M(messageType, extensionRegistry);
            case 11:
                return Integer.valueOf(S());
            case 12:
                return Long.valueOf(b());
            case 13:
                return Integer.valueOf(e());
            case 14:
                return Long.valueOf(P());
            case 15:
                return T();
            case 16:
                return Integer.valueOf(c());
            case 17:
                return Long.valueOf(j());
            default:
                throw new IllegalArgumentException("unsupported field type.");
        }
    }

    private <T> T Y(L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        T a10 = schema.a();
        V(a10, schema, extensionRegistry);
        schema.M1(a10);
        return a10;
    }

    private <T> T Z(L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        T a10 = schema.a();
        W(a10, schema, extensionRegistry);
        schema.M1(a10);
        return a10;
    }

    private void b0(int expectedPosition) throws IOException {
        if (this.f67916c.i() != expectedPosition) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    private void c0(int requiredWireType) throws IOException {
        if (A2.b(this.f67917d) != requiredWireType) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
    }

    private void d0(int bytes) throws IOException {
        if ((bytes & 3) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    private void e0(int bytes) throws IOException {
        if ((bytes & 7) != 0) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override
    public void A(List<Integer> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 == 2) {
                int a02 = this.f67916c.a0();
                d0(a02);
                int i10 = this.f67916c.i() + a02;
                do {
                    target.add(Integer.valueOf(this.f67916c.T()));
                } while (this.f67916c.i() < i10);
                return;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(Integer.valueOf(this.f67916c.T()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C0 c02 = (C0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 == 2) {
            int a03 = this.f67916c.a0();
            d0(a03);
            int i11 = this.f67916c.i() + a03;
            do {
                c02.Cc(this.f67916c.T());
            } while (this.f67916c.i() < i11);
            return;
        }
        if (b11 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            c02.Cc(this.f67916c.T());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    @Deprecated
    public <T> void B(List<T> target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        int Z10;
        if (A2.b(this.f67917d) != 3) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i10 = this.f67917d;
        do {
            target.add(Y(schema, extensionRegistry));
            if (this.f67916c.j() || this.f67919f != 0) {
                return;
            } else {
                Z10 = this.f67916c.Z();
            }
        } while (Z10 == i10);
        this.f67919f = Z10;
    }

    @Override
    public boolean C() throws IOException {
        c0(0);
        return this.f67916c.v();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public <T> void D(List<T> target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        int Z10;
        if (A2.b(this.f67917d) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int i10 = this.f67917d;
        do {
            target.add(Z(schema, extensionRegistry));
            if (this.f67916c.j() || this.f67919f != 0) {
                return;
            } else {
                Z10 = this.f67916c.Z();
            }
        } while (Z10 == i10);
        this.f67919f = Z10;
    }

    @Override
    public void E(List<Long> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof O0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Long.valueOf(this.f67916c.b0()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Long.valueOf(this.f67916c.b0()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        O0 o02 = (O0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                o02.x7(this.f67916c.b0());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            o02.x7(this.f67916c.b0());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public void F(List<Long> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof O0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Long.valueOf(this.f67916c.H()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Long.valueOf(this.f67916c.H()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        O0 o02 = (O0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                o02.x7(this.f67916c.H());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            o02.x7(this.f67916c.H());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public void G(List<Integer> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Integer.valueOf(this.f67916c.A()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f67916c.A()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C0 c02 = (C0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                c02.Cc(this.f67916c.A());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            c02.Cc(this.f67916c.A());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    @Deprecated
    public <T> T H(Class<T> cls, C12666d0 c12666d0) throws IOException {
        c0(3);
        return (T) Y(C12732z1.a().i(cls), c12666d0);
    }

    @Override
    public void I(List<String> target) throws IOException {
        a0(target, true);
    }

    @Override
    public int J() throws IOException {
        c0(0);
        return this.f67916c.G();
    }

    @Override
    public void K(List<Long> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof O0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 1) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int a02 = this.f67916c.a0();
                e0(a02);
                int i10 = this.f67916c.i() + a02;
                do {
                    target.add(Long.valueOf(this.f67916c.C()));
                } while (this.f67916c.i() < i10);
                return;
            }
            do {
                target.add(Long.valueOf(this.f67916c.C()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        O0 o02 = (O0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 1) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int a03 = this.f67916c.a0();
            e0(a03);
            int i11 = this.f67916c.i() + a03;
            do {
                o02.x7(this.f67916c.C());
            } while (this.f67916c.i() < i11);
            return;
        }
        do {
            o02.x7(this.f67916c.C());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public void L(List<Integer> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Integer.valueOf(this.f67916c.a0()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f67916c.a0()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C0 c02 = (C0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                c02.Cc(this.f67916c.a0());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            c02.Cc(this.f67916c.a0());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public <T> T M(Class<T> cls, C12666d0 c12666d0) throws IOException {
        c0(2);
        return (T) Z(C12732z1.a().i(cls), c12666d0);
    }

    @Override
    public int N() throws IOException {
        c0(5);
        return this.f67916c.B();
    }

    @Override
    @Deprecated
    public <T> void O(List<T> target, Class<T> targetType, C12666d0 extensionRegistry) throws IOException {
        B(target, C12732z1.a().i(targetType), extensionRegistry);
    }

    @Override
    public long P() throws IOException {
        c0(0);
        return this.f67916c.W();
    }

    @Override
    public String Q() throws IOException {
        c0(2);
        return this.f67916c.X();
    }

    @Override
    public <T> T R(L1<T> l12, C12666d0 c12666d0) throws IOException {
        c0(2);
        return (T) Z(l12, c12666d0);
    }

    @Override
    public int S() throws IOException {
        c0(5);
        return this.f67916c.T();
    }

    @Override
    public String T() throws IOException {
        c0(2);
        return this.f67916c.Y();
    }

    public final <T> void V(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        int i10 = this.f67918e;
        this.f67918e = A2.c(A2.a(this.f67917d), 4);
        try {
            schema.P1(target, this, extensionRegistry);
            if (this.f67917d == this.f67918e) {
            } else {
                throw InvalidProtocolBufferException.parseFailure();
            }
        } finally {
            this.f67918e = i10;
        }
    }

    public final <T> void W(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        int a02 = this.f67916c.a0();
        C c10 = this.f67916c;
        if (c10.f67831a >= c10.f67832b) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int u10 = c10.u(a02);
        this.f67916c.f67831a++;
        schema.P1(target, this, extensionRegistry);
        this.f67916c.a(0);
        r5.f67831a--;
        this.f67916c.t(u10);
    }

    @Override
    public void a(List<Long> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof O0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Long.valueOf(this.f67916c.W()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Long.valueOf(this.f67916c.W()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        O0 o02 = (O0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                o02.x7(this.f67916c.W());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            o02.x7(this.f67916c.W());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    public void a0(List<String> target, boolean requireUtf8) throws IOException {
        int Z10;
        int Z11;
        if (A2.b(this.f67917d) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        if (!(target instanceof K0) || requireUtf8) {
            do {
                target.add(requireUtf8 ? T() : Q());
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        K0 k02 = (K0) target;
        do {
            k02.b3(h());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public long b() throws IOException {
        c0(1);
        return this.f67916c.U();
    }

    @Override
    public int c() throws IOException {
        c0(0);
        return this.f67916c.a0();
    }

    @Override
    public int d() throws IOException {
        c0(0);
        return this.f67916c.A();
    }

    @Override
    public int e() throws IOException {
        c0(0);
        return this.f67916c.V();
    }

    @Override
    public void f(List<Boolean> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C12712t)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Boolean.valueOf(this.f67916c.v()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Boolean.valueOf(this.f67916c.v()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C12712t c12712t = (C12712t) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                c12712t.l4(this.f67916c.v());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            c12712t.l4(this.f67916c.v());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x005e, code lost:
    
        r8.put(r2, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0061, code lost:
    
        r7.f67916c.t(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
    
        return;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <K, V> void g(Map<K, V> target, R0.b<K, V> metadata, C12666d0 extensionRegistry) throws IOException {
        c0(2);
        int u10 = this.f67916c.u(this.f67916c.a0());
        Object obj = metadata.f68862b;
        Object obj2 = metadata.f68864d;
        while (true) {
            try {
                int q10 = q();
                if (q10 == Integer.MAX_VALUE || this.f67916c.j()) {
                    break;
                }
                if (q10 == 1) {
                    obj = X(metadata.f68861a, null, null);
                } else if (q10 != 2) {
                    try {
                        if (!v()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                            break;
                        }
                    } catch (InvalidProtocolBufferException.InvalidWireTypeException unused) {
                        if (!v()) {
                            throw new InvalidProtocolBufferException("Unable to parse map entry.");
                        }
                    }
                } else {
                    obj2 = X(metadata.f68863c, metadata.f68864d.getClass(), extensionRegistry);
                }
            } catch (Throwable th2) {
                this.f67916c.t(u10);
                throw th2;
            }
        }
    }

    @Override
    public int getTag() {
        return this.f67917d;
    }

    @Override
    public AbstractC12724x h() throws IOException {
        c0(2);
        return this.f67916c.y();
    }

    @Override
    public void i(List<Integer> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Integer.valueOf(this.f67916c.V()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f67916c.V()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C0 c02 = (C0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                c02.Cc(this.f67916c.V());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            c02.Cc(this.f67916c.V());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public long j() throws IOException {
        c0(0);
        return this.f67916c.b0();
    }

    @Override
    public <T> void k(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        c0(3);
        V(target, schema, extensionRegistry);
    }

    @Override
    @Deprecated
    public <T> T l(L1<T> l12, C12666d0 c12666d0) throws IOException {
        c0(3);
        return (T) Y(l12, c12666d0);
    }

    @Override
    public <T> void m(List<T> target, Class<T> targetType, C12666d0 extensionRegistry) throws IOException {
        D(target, C12732z1.a().i(targetType), extensionRegistry);
    }

    @Override
    public void n(List<Long> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof O0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 1) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int a02 = this.f67916c.a0();
                e0(a02);
                int i10 = this.f67916c.i() + a02;
                do {
                    target.add(Long.valueOf(this.f67916c.U()));
                } while (this.f67916c.i() < i10);
                return;
            }
            do {
                target.add(Long.valueOf(this.f67916c.U()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        O0 o02 = (O0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 1) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int a03 = this.f67916c.a0();
            e0(a03);
            int i11 = this.f67916c.i() + a03;
            do {
                o02.x7(this.f67916c.U());
            } while (this.f67916c.i() < i11);
            return;
        }
        do {
            o02.x7(this.f67916c.U());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public void o(List<Integer> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 0) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int i10 = this.f67916c.i() + this.f67916c.a0();
                do {
                    target.add(Integer.valueOf(this.f67916c.G()));
                } while (this.f67916c.i() < i10);
                b0(i10);
                return;
            }
            do {
                target.add(Integer.valueOf(this.f67916c.G()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C0 c02 = (C0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 0) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int i11 = this.f67916c.i() + this.f67916c.a0();
            do {
                c02.Cc(this.f67916c.G());
            } while (this.f67916c.i() < i11);
            b0(i11);
            return;
        }
        do {
            c02.Cc(this.f67916c.G());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public void p(List<Integer> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 == 2) {
                int a02 = this.f67916c.a0();
                d0(a02);
                int i10 = this.f67916c.i() + a02;
                do {
                    target.add(Integer.valueOf(this.f67916c.B()));
                } while (this.f67916c.i() < i10);
                return;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(Integer.valueOf(this.f67916c.B()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C0 c02 = (C0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 == 2) {
            int a03 = this.f67916c.a0();
            d0(a03);
            int i11 = this.f67916c.i() + a03;
            do {
                c02.Cc(this.f67916c.B());
            } while (this.f67916c.i() < i11);
            return;
        }
        if (b11 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            c02.Cc(this.f67916c.B());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public int q() throws IOException {
        int i10 = this.f67919f;
        if (i10 != 0) {
            this.f67917d = i10;
            this.f67919f = 0;
        } else {
            this.f67917d = this.f67916c.Z();
        }
        int i11 = this.f67917d;
        if (i11 == 0 || i11 == this.f67918e) {
            return Integer.MAX_VALUE;
        }
        return A2.a(i11);
    }

    @Override
    public void r(List<String> target) throws IOException {
        a0(target, false);
    }

    @Override
    public double readDouble() throws IOException {
        c0(1);
        return this.f67916c.z();
    }

    @Override
    public float readFloat() throws IOException {
        c0(5);
        return this.f67916c.D();
    }

    @Override
    public <T> void s(T target, L1<T> schema, C12666d0 extensionRegistry) throws IOException {
        c0(2);
        W(target, schema, extensionRegistry);
    }

    @Override
    public void t(List<Float> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof C12705q0)) {
            int b10 = A2.b(this.f67917d);
            if (b10 == 2) {
                int a02 = this.f67916c.a0();
                d0(a02);
                int i10 = this.f67916c.i() + a02;
                do {
                    target.add(Float.valueOf(this.f67916c.D()));
                } while (this.f67916c.i() < i10);
                return;
            }
            if (b10 != 5) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            do {
                target.add(Float.valueOf(this.f67916c.D()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        C12705q0 c12705q0 = (C12705q0) target;
        int b11 = A2.b(this.f67917d);
        if (b11 == 2) {
            int a03 = this.f67916c.a0();
            d0(a03);
            int i11 = this.f67916c.i() + a03;
            do {
                c12705q0.k9(this.f67916c.D());
            } while (this.f67916c.i() < i11);
            return;
        }
        if (b11 != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            c12705q0.k9(this.f67916c.D());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public boolean u() {
        return this.f67916c.g0();
    }

    @Override
    public boolean v() throws IOException {
        int i10;
        if (this.f67916c.j() || (i10 = this.f67917d) == this.f67918e) {
            return false;
        }
        return this.f67916c.h0(i10);
    }

    @Override
    public void w(List<AbstractC12724x> target) throws IOException {
        int Z10;
        if (A2.b(this.f67917d) != 2) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        do {
            target.add(h());
            if (this.f67916c.j()) {
                return;
            } else {
                Z10 = this.f67916c.Z();
            }
        } while (Z10 == this.f67917d);
        this.f67919f = Z10;
    }

    @Override
    public void x(List<Double> target) throws IOException {
        int Z10;
        int Z11;
        if (!(target instanceof J)) {
            int b10 = A2.b(this.f67917d);
            if (b10 != 1) {
                if (b10 != 2) {
                    throw InvalidProtocolBufferException.invalidWireType();
                }
                int a02 = this.f67916c.a0();
                e0(a02);
                int i10 = this.f67916c.i() + a02;
                do {
                    target.add(Double.valueOf(this.f67916c.z()));
                } while (this.f67916c.i() < i10);
                return;
            }
            do {
                target.add(Double.valueOf(this.f67916c.z()));
                if (this.f67916c.j()) {
                    return;
                } else {
                    Z10 = this.f67916c.Z();
                }
            } while (Z10 == this.f67917d);
            this.f67919f = Z10;
            return;
        }
        J j10 = (J) target;
        int b11 = A2.b(this.f67917d);
        if (b11 != 1) {
            if (b11 != 2) {
                throw InvalidProtocolBufferException.invalidWireType();
            }
            int a03 = this.f67916c.a0();
            e0(a03);
            int i11 = this.f67916c.i() + a03;
            do {
                j10.G7(this.f67916c.z());
            } while (this.f67916c.i() < i11);
            return;
        }
        do {
            j10.G7(this.f67916c.z());
            if (this.f67916c.j()) {
                return;
            } else {
                Z11 = this.f67916c.Z();
            }
        } while (Z11 == this.f67917d);
        this.f67919f = Z11;
    }

    @Override
    public long y() throws IOException {
        c0(0);
        return this.f67916c.H();
    }

    @Override
    public long z() throws IOException {
        c0(1);
        return this.f67916c.C();
    }
}
