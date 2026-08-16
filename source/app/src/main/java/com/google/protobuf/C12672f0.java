package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12722w0;
import com.google.protobuf.C12658b0;
import com.google.protobuf.Descriptors;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import u8.C15580b;

public final class C12672f0 extends AbstractC12669e0<Descriptors.f> {

    public static final long f69095a = l();

    public static class a {

        public static final int[] f69096a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69096a = iArr;
            try {
                iArr[A2.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69096a[A2.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69096a[A2.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69096a[A2.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69096a[A2.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69096a[A2.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69096a[A2.b.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69096a[A2.b.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69096a[A2.b.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69096a[A2.b.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69096a[A2.b.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69096a[A2.b.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69096a[A2.b.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69096a[A2.b.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69096a[A2.b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69096a[A2.b.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69096a[A2.b.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f69096a[A2.b.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    public static <T> long l() {
        return x2.Z(AbstractC12722w0.e.class.getDeclaredField(C15580b.f118629u));
    }

    @Override
    public int a(Map.Entry<?, ?> extension) {
        return ((Descriptors.f) extension.getKey()).getNumber();
    }

    @Override
    public Object b(C12666d0 extensionRegistry, InterfaceC12659b1 defaultInstance, int number) {
        return ((C12658b0) extensionRegistry).q(((Y0) defaultInstance).getDescriptorForType(), number);
    }

    @Override
    public C12699o0<Descriptors.f> c(Object message) {
        return (C12699o0) x2.Q(message, f69095a);
    }

    @Override
    public C12699o0<Descriptors.f> d(Object message) {
        C12699o0<Descriptors.f> c10 = c(message);
        if (!c10.D()) {
            return c10;
        }
        C12699o0<Descriptors.f> clone = c10.clone();
        k(message, clone);
        return clone;
    }

    @Override
    public boolean e(InterfaceC12659b1 prototype) {
        return prototype instanceof AbstractC12722w0.e;
    }

    @Override
    public void f(Object message) {
        c(message).J();
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x0026. Please report as an issue. */
    @Override
    public <UT, UB> UB g(Object obj, E1 e12, Object obj2, C12666d0 c12666d0, C12699o0<Descriptors.f> c12699o0, UB ub2, q2<UT, UB> q2Var) throws IOException {
        Object valueOf;
        Object u10;
        ArrayList arrayList;
        ArrayList arrayList2;
        C12658b0.c cVar = (C12658b0.c) obj2;
        int number = cVar.f69058a.getNumber();
        if (cVar.f69058a.Z1() && cVar.f69058a.i2()) {
            switch (a.f69096a[cVar.f69058a.U1().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    e12.x(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    e12.t(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    e12.F(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    e12.E(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    e12.o(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    e12.K(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    e12.p(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    e12.f(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    e12.L(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    e12.A(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    e12.n(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    e12.i(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    e12.a(arrayList);
                    arrayList2 = arrayList;
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                case 14:
                    ArrayList arrayList3 = new ArrayList();
                    e12.G(arrayList3);
                    arrayList2 = new ArrayList();
                    Iterator<Integer> it = arrayList3.iterator();
                    while (it.hasNext()) {
                        int intValue = it.next().intValue();
                        Descriptors.e findValueByNumber = cVar.f69058a.W1().findValueByNumber(intValue);
                        if (findValueByNumber != null) {
                            arrayList2.add(findValueByNumber);
                        } else {
                            ub2 = (UB) N1.Q(obj, number, intValue, ub2, q2Var);
                        }
                    }
                    c12699o0.P(cVar.f69058a, arrayList2);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + ((Object) cVar.f69058a.U1()));
            }
        } else {
            if (cVar.f69058a.U1() != A2.b.ENUM) {
                switch (a.f69096a[cVar.f69058a.U1().ordinal()]) {
                    case 1:
                        valueOf = Double.valueOf(e12.readDouble());
                        break;
                    case 2:
                        valueOf = Float.valueOf(e12.readFloat());
                        break;
                    case 3:
                        valueOf = Long.valueOf(e12.y());
                        break;
                    case 4:
                        valueOf = Long.valueOf(e12.j());
                        break;
                    case 5:
                        valueOf = Integer.valueOf(e12.J());
                        break;
                    case 6:
                        valueOf = Long.valueOf(e12.z());
                        break;
                    case 7:
                        valueOf = Integer.valueOf(e12.N());
                        break;
                    case 8:
                        valueOf = Boolean.valueOf(e12.C());
                        break;
                    case 9:
                        valueOf = Integer.valueOf(e12.c());
                        break;
                    case 10:
                        valueOf = Integer.valueOf(e12.S());
                        break;
                    case 11:
                        valueOf = Long.valueOf(e12.b());
                        break;
                    case 12:
                        valueOf = Integer.valueOf(e12.e());
                        break;
                    case 13:
                        valueOf = Long.valueOf(e12.P());
                        break;
                    case 14:
                        throw new IllegalStateException("Shouldn't reach here.");
                    case 15:
                        valueOf = e12.h();
                        break;
                    case 16:
                        valueOf = e12.Q();
                        break;
                    case 17:
                        valueOf = e12.H(cVar.f69059b.getClass(), c12666d0);
                        break;
                    case 18:
                        valueOf = e12.M(cVar.f69059b.getClass(), c12666d0);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            } else {
                int J10 = e12.J();
                valueOf = cVar.f69058a.W1().findValueByNumber(J10);
                if (valueOf == null) {
                    return (UB) N1.Q(obj, number, J10, ub2, q2Var);
                }
            }
            if (cVar.f69058a.Z1()) {
                c12699o0.h(cVar.f69058a, valueOf);
            } else {
                int i10 = a.f69096a[cVar.f69058a.U1().ordinal()];
                if ((i10 == 17 || i10 == 18) && (u10 = c12699o0.u(cVar.f69058a)) != null) {
                    valueOf = D0.v(u10, valueOf);
                }
                c12699o0.P(cVar.f69058a, valueOf);
            }
        }
        return ub2;
    }

    @Override
    public void h(E1 reader, Object extension, C12666d0 extensionRegistry, C12699o0<Descriptors.f> extensions) throws IOException {
        C12658b0.c cVar = (C12658b0.c) extension;
        if (!C12666d0.f()) {
            extensions.P(cVar.f69058a, new H0(cVar.f69059b, extensionRegistry, reader.h()));
        } else {
            extensions.P(cVar.f69058a, reader.M(cVar.f69059b.getClass(), extensionRegistry));
        }
    }

    @Override
    public void i(AbstractC12724x data, Object extension, C12666d0 extensionRegistry, C12699o0<Descriptors.f> extensions) throws IOException {
        C12658b0.c cVar = (C12658b0.c) extension;
        Y0 buildPartial = cVar.f69059b.newBuilderForType().buildPartial();
        if (!C12666d0.f()) {
            extensions.P(cVar.f69058a, new H0(cVar.f69059b, extensionRegistry, data));
            return;
        }
        AbstractC12695n V10 = AbstractC12695n.V(ByteBuffer.wrap(data.b0()), true);
        C12732z1.a().f(buildPartial, V10, extensionRegistry);
        extensions.P(cVar.f69058a, buildPartial);
        if (V10.q() != Integer.MAX_VALUE) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    @Override
    public void j(C2 writer, Map.Entry<?, ?> extension) throws IOException {
        Descriptors.f fVar = (Descriptors.f) extension.getKey();
        if (!fVar.Z1()) {
            switch (a.f69096a[fVar.U1().ordinal()]) {
                case 1:
                    writer.G(fVar.getNumber(), ((Double) extension.getValue()).doubleValue());
                    return;
                case 2:
                    writer.P(fVar.getNumber(), ((Float) extension.getValue()).floatValue());
                    return;
                case 3:
                    writer.L(fVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 4:
                    writer.f(fVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 5:
                    writer.i(fVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 6:
                    writer.o(fVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 7:
                    writer.c(fVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 8:
                    writer.q(fVar.getNumber(), ((Boolean) extension.getValue()).booleanValue());
                    return;
                case 9:
                    writer.m(fVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 10:
                    writer.r(fVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 11:
                    writer.C(fVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 12:
                    writer.S(fVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 13:
                    writer.l(fVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 14:
                    writer.i(fVar.getNumber(), ((Descriptors.e) extension.getValue()).getNumber());
                    return;
                case 15:
                    writer.h(fVar.getNumber(), (AbstractC12724x) extension.getValue());
                    return;
                case 16:
                    writer.e(fVar.getNumber(), (String) extension.getValue());
                    return;
                case 17:
                    writer.O(fVar.getNumber(), extension.getValue());
                    return;
                case 18:
                    writer.K(fVar.getNumber(), extension.getValue());
                    return;
                default:
                    return;
            }
        }
        switch (a.f69096a[fVar.U1().ordinal()]) {
            case 1:
                N1.Y(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 2:
                N1.g0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 3:
                N1.m0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 4:
                N1.F0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 5:
                N1.k0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 6:
                N1.e0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 7:
                N1.c0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 8:
                N1.U(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 9:
                N1.D0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 10:
                N1.s0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 11:
                N1.u0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 12:
                N1.w0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 13:
                N1.y0(fVar.getNumber(), (List) extension.getValue(), writer, fVar.i2());
                return;
            case 14:
                List list = (List) extension.getValue();
                ArrayList arrayList = new ArrayList();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(Integer.valueOf(((Descriptors.e) it.next()).getNumber()));
                }
                N1.k0(fVar.getNumber(), arrayList, writer, fVar.i2());
                return;
            case 15:
                N1.W(fVar.getNumber(), (List) extension.getValue(), writer);
                return;
            case 16:
                N1.B0(fVar.getNumber(), (List) extension.getValue(), writer);
                return;
            case 17:
                N1.h0(fVar.getNumber(), (List) extension.getValue(), writer);
                return;
            case 18:
                N1.p0(fVar.getNumber(), (List) extension.getValue(), writer);
                return;
            default:
                return;
        }
    }

    @Override
    public void k(Object message, C12699o0<Descriptors.f> extensions) {
        x2.t0(message, f69095a, extensions);
    }
}
