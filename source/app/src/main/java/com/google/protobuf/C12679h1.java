package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12719v0;
import com.google.protobuf.C12692m;
import com.google.protobuf.C12699o0;
import com.google.protobuf.H0;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

@B
public final class C12679h1<T> implements L1<T> {

    public final InterfaceC12659b1 f69156a;

    public final q2<?, ?> f69157b;

    public final boolean f69158c;

    public final AbstractC12669e0<?> f69159d;

    public C12679h1(q2<?, ?> unknownFieldSchema, AbstractC12669e0<?> extensionSchema, InterfaceC12659b1 defaultInstance) {
        this.f69157b = unknownFieldSchema;
        this.f69158c = extensionSchema.e(defaultInstance);
        this.f69159d = extensionSchema;
        this.f69156a = defaultInstance;
    }

    private <UT, UB> int c(q2<UT, UB> schema, T message) {
        return schema.i(schema.g(message));
    }

    private <UT, UB, ET extends C12699o0.c<ET>> void d(q2<UT, UB> unknownFieldSchema, AbstractC12669e0<ET> extensionSchema, T message, E1 reader, C12666d0 extensionRegistry) throws IOException {
        UB f10 = unknownFieldSchema.f(message);
        C12699o0<ET> d10 = extensionSchema.d(message);
        do {
            try {
                if (reader.q() == Integer.MAX_VALUE) {
                    return;
                }
            } finally {
                unknownFieldSchema.o(message, f10);
            }
        } while (f(reader, extensionRegistry, extensionSchema, d10, unknownFieldSchema, f10));
    }

    public static <T> C12679h1<T> e(q2<?, ?> unknownFieldSchema, AbstractC12669e0<?> extensionSchema, InterfaceC12659b1 defaultInstance) {
        return new C12679h1<>(unknownFieldSchema, extensionSchema, defaultInstance);
    }

    @Override
    public boolean I1(T message, T other) {
        if (!this.f69157b.g(message).equals(this.f69157b.g(other))) {
            return false;
        }
        if (this.f69158c) {
            return this.f69159d.c(message).equals(this.f69159d.c(other));
        }
        return true;
    }

    @Override
    public void J1(T message, C2 writer) throws IOException {
        Iterator<Map.Entry<?, Object>> I10 = this.f69159d.c(message).I();
        while (I10.hasNext()) {
            Map.Entry<?, Object> next = I10.next();
            C12699o0.c cVar = (C12699o0.c) next.getKey();
            if (cVar.V1() != A2.c.MESSAGE || cVar.Z1() || cVar.i2()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (next instanceof H0.b) {
                writer.b(cVar.getNumber(), ((H0.b) next).b().n());
            } else {
                writer.b(cVar.getNumber(), next.getValue());
            }
        }
        g(this.f69157b, message, writer);
    }

    @Override
    public final boolean K1(T message) {
        return this.f69159d.c(message).E();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00cb A[EDGE_INSN: B:24:0x00cb->B:25:0x00cb BREAK  A[LOOP:1: B:10:0x006d->B:18:0x006d], SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void L1(T message, byte[] data, int position, int limit, C12692m.b registers) throws IOException {
        AbstractC12719v0 abstractC12719v0 = (AbstractC12719v0) message;
        s2 s2Var = abstractC12719v0.f69595c;
        if (s2Var == s2.c()) {
            s2Var = s2.o();
            abstractC12719v0.f69595c = s2Var;
        }
        C12699o0<AbstractC12719v0.g> n72 = ((AbstractC12719v0.e) message).n7();
        AbstractC12719v0.h hVar = null;
        while (position < limit) {
            int I10 = C12692m.I(data, position, registers);
            int i10 = registers.f69354a;
            if (i10 == A2.f67804q) {
                int i11 = 0;
                AbstractC12724x abstractC12724x = null;
                while (I10 < limit) {
                    I10 = C12692m.I(data, I10, registers);
                    int i12 = registers.f69354a;
                    int a10 = A2.a(i12);
                    int b10 = A2.b(i12);
                    if (a10 != 2) {
                        if (a10 == 3) {
                            if (hVar != null) {
                                I10 = C12692m.p(C12732z1.a().i(hVar.c().getClass()), data, I10, limit, registers);
                                n72.P(hVar.f69613d, registers.f69356c);
                            } else if (b10 == 2) {
                                I10 = C12692m.b(data, I10, registers);
                                abstractC12724x = (AbstractC12724x) registers.f69356c;
                            }
                        }
                        if (i12 != A2.f67805r) {
                            break;
                        } else {
                            I10 = C12692m.P(i12, data, I10, limit, registers);
                        }
                    } else if (b10 == 0) {
                        I10 = C12692m.I(data, I10, registers);
                        i11 = registers.f69354a;
                        hVar = (AbstractC12719v0.h) this.f69159d.b(registers.f69357d, this.f69156a, i11);
                    } else if (i12 != A2.f67805r) {
                    }
                }
                if (abstractC12724x != null) {
                    s2Var.r(A2.c(i11, 2), abstractC12724x);
                }
                position = I10;
            } else if (A2.b(i10) == 2) {
                AbstractC12719v0.h hVar2 = (AbstractC12719v0.h) this.f69159d.b(registers.f69357d, this.f69156a, A2.a(i10));
                if (hVar2 != null) {
                    position = C12692m.p(C12732z1.a().i(hVar2.c().getClass()), data, I10, limit, registers);
                    n72.P(hVar2.f69613d, registers.f69356c);
                } else {
                    position = C12692m.G(i10, data, I10, limit, s2Var, registers);
                }
                hVar = hVar2;
            } else {
                position = C12692m.P(i10, data, I10, limit, registers);
            }
        }
        if (position != limit) {
            throw InvalidProtocolBufferException.parseFailure();
        }
    }

    @Override
    public void M1(T message) {
        this.f69157b.j(message);
        this.f69159d.f(message);
    }

    @Override
    public int N1(T message) {
        int c10 = c(this.f69157b, message);
        return this.f69158c ? c10 + this.f69159d.c(message).v() : c10;
    }

    @Override
    public int O1(T message) {
        int hashCode = this.f69157b.g(message).hashCode();
        return this.f69158c ? (hashCode * 53) + this.f69159d.c(message).hashCode() : hashCode;
    }

    @Override
    public void P1(T message, E1 reader, C12666d0 extensionRegistry) throws IOException {
        d(this.f69157b, this.f69159d, message, reader, extensionRegistry);
    }

    @Override
    public T a() {
        InterfaceC12659b1 interfaceC12659b1 = this.f69156a;
        return interfaceC12659b1 instanceof AbstractC12719v0 ? (T) ((AbstractC12719v0) interfaceC12659b1).O6() : (T) interfaceC12659b1.newBuilderForType().buildPartial();
    }

    @Override
    public void b(T message, T other) {
        N1.J(this.f69157b, message, other);
        if (this.f69158c) {
            N1.H(this.f69159d, message, other);
        }
    }

    public final <UT, UB, ET extends C12699o0.c<ET>> boolean f(E1 reader, C12666d0 extensionRegistry, AbstractC12669e0<ET> extensionSchema, C12699o0<ET> extensions, q2<UT, UB> unknownFieldSchema, UB unknownFields) throws IOException {
        int tag = reader.getTag();
        if (tag != A2.f67804q) {
            if (A2.b(tag) != 2) {
                return reader.v();
            }
            Object b10 = extensionSchema.b(extensionRegistry, this.f69156a, A2.a(tag));
            if (b10 == null) {
                return unknownFieldSchema.m(unknownFields, reader);
            }
            extensionSchema.h(reader, b10, extensionRegistry, extensions);
            return true;
        }
        Object obj = null;
        int i10 = 0;
        AbstractC12724x abstractC12724x = null;
        while (reader.q() != Integer.MAX_VALUE) {
            int tag2 = reader.getTag();
            if (tag2 == A2.f67806s) {
                i10 = reader.c();
                obj = extensionSchema.b(extensionRegistry, this.f69156a, i10);
            } else if (tag2 == A2.f67807t) {
                if (obj != null) {
                    extensionSchema.h(reader, obj, extensionRegistry, extensions);
                } else {
                    abstractC12724x = reader.h();
                }
            } else if (!reader.v()) {
                break;
            }
        }
        if (reader.getTag() != A2.f67805r) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
        if (abstractC12724x != null) {
            if (obj != null) {
                extensionSchema.i(abstractC12724x, obj, extensionRegistry, extensions);
            } else {
                unknownFieldSchema.d(unknownFields, i10, abstractC12724x);
            }
        }
        return true;
    }

    public final <UT, UB> void g(q2<UT, UB> unknownFieldSchema, T message, C2 writer) throws IOException {
        unknownFieldSchema.s(unknownFieldSchema.g(message), writer);
    }
}
