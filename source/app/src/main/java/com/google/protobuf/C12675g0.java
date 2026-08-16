package com.google.protobuf;

import com.google.protobuf.A2;
import com.google.protobuf.AbstractC12719v0;
import com.google.protobuf.InterfaceC12659b1;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@B
public final class C12675g0 extends AbstractC12669e0<AbstractC12719v0.g> {

    public static class a {

        public static final int[] f69125a;

        static {
            int[] iArr = new int[A2.b.values().length];
            f69125a = iArr;
            try {
                iArr[A2.b.DOUBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f69125a[A2.b.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f69125a[A2.b.INT64.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f69125a[A2.b.UINT64.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f69125a[A2.b.INT32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f69125a[A2.b.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f69125a[A2.b.FIXED32.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f69125a[A2.b.BOOL.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f69125a[A2.b.UINT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f69125a[A2.b.SFIXED32.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f69125a[A2.b.SFIXED64.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f69125a[A2.b.SINT32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f69125a[A2.b.SINT64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f69125a[A2.b.ENUM.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f69125a[A2.b.BYTES.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f69125a[A2.b.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f69125a[A2.b.GROUP.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f69125a[A2.b.MESSAGE.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
        }
    }

    @Override
    public int a(Map.Entry<?, ?> extension) {
        return ((AbstractC12719v0.g) extension.getKey()).getNumber();
    }

    @Override
    public Object b(C12666d0 extensionRegistry, InterfaceC12659b1 defaultInstance, int number) {
        return extensionRegistry.c(defaultInstance, number);
    }

    @Override
    public C12699o0<AbstractC12719v0.g> c(Object message) {
        return ((AbstractC12719v0.e) message).f69600i;
    }

    @Override
    public C12699o0<AbstractC12719v0.g> d(Object message) {
        return ((AbstractC12719v0.e) message).n7();
    }

    @Override
    public boolean e(InterfaceC12659b1 prototype) {
        return prototype instanceof AbstractC12719v0.e;
    }

    @Override
    public void f(Object message) {
        c(message).J();
    }

    @Override
    public <UT, UB> UB g(Object obj, E1 e12, Object obj2, C12666d0 c12666d0, C12699o0<AbstractC12719v0.g> c12699o0, UB ub2, q2<UT, UB> q2Var) throws IOException {
        Object valueOf;
        Object u10;
        ArrayList arrayList;
        AbstractC12719v0.h hVar = (AbstractC12719v0.h) obj2;
        int d10 = hVar.d();
        if (hVar.f69613d.Z1() && hVar.f69613d.i2()) {
            switch (a.f69125a[hVar.b().ordinal()]) {
                case 1:
                    arrayList = new ArrayList();
                    e12.x(arrayList);
                    break;
                case 2:
                    arrayList = new ArrayList();
                    e12.t(arrayList);
                    break;
                case 3:
                    arrayList = new ArrayList();
                    e12.F(arrayList);
                    break;
                case 4:
                    arrayList = new ArrayList();
                    e12.E(arrayList);
                    break;
                case 5:
                    arrayList = new ArrayList();
                    e12.o(arrayList);
                    break;
                case 6:
                    arrayList = new ArrayList();
                    e12.K(arrayList);
                    break;
                case 7:
                    arrayList = new ArrayList();
                    e12.p(arrayList);
                    break;
                case 8:
                    arrayList = new ArrayList();
                    e12.f(arrayList);
                    break;
                case 9:
                    arrayList = new ArrayList();
                    e12.L(arrayList);
                    break;
                case 10:
                    arrayList = new ArrayList();
                    e12.A(arrayList);
                    break;
                case 11:
                    arrayList = new ArrayList();
                    e12.n(arrayList);
                    break;
                case 12:
                    arrayList = new ArrayList();
                    e12.i(arrayList);
                    break;
                case 13:
                    arrayList = new ArrayList();
                    e12.a(arrayList);
                    break;
                case 14:
                    arrayList = new ArrayList();
                    e12.G(arrayList);
                    ub2 = (UB) N1.B(obj, d10, arrayList, hVar.f69613d.W1(), ub2, q2Var);
                    break;
                default:
                    throw new IllegalStateException("Type cannot be packed: " + ((Object) hVar.f69613d.U1()));
            }
            c12699o0.P(hVar.f69613d, arrayList);
        } else {
            if (hVar.b() != A2.b.ENUM) {
                switch (a.f69125a[hVar.b().ordinal()]) {
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
                        if (!hVar.f()) {
                            Object u11 = c12699o0.u(hVar.f69613d);
                            if (u11 instanceof AbstractC12719v0) {
                                L1 j10 = C12732z1.a().j(u11);
                                if (!((AbstractC12719v0) u11).F6()) {
                                    Object a10 = j10.a();
                                    j10.b(a10, u11);
                                    c12699o0.P(hVar.f69613d, a10);
                                    u11 = a10;
                                }
                                e12.k(u11, j10, c12666d0);
                                return ub2;
                            }
                        }
                        valueOf = e12.H(hVar.c().getClass(), c12666d0);
                        break;
                    case 18:
                        if (!hVar.f()) {
                            Object u12 = c12699o0.u(hVar.f69613d);
                            if (u12 instanceof AbstractC12719v0) {
                                L1 j11 = C12732z1.a().j(u12);
                                if (!((AbstractC12719v0) u12).F6()) {
                                    Object a11 = j11.a();
                                    j11.b(a11, u12);
                                    c12699o0.P(hVar.f69613d, a11);
                                    u12 = a11;
                                }
                                e12.s(u12, j11, c12666d0);
                                return ub2;
                            }
                        }
                        valueOf = e12.M(hVar.c().getClass(), c12666d0);
                        break;
                    default:
                        valueOf = null;
                        break;
                }
            } else {
                int J10 = e12.J();
                if (hVar.f69613d.W1().findValueByNumber(J10) == null) {
                    return (UB) N1.Q(obj, d10, J10, ub2, q2Var);
                }
                valueOf = Integer.valueOf(J10);
            }
            if (hVar.f()) {
                c12699o0.h(hVar.f69613d, valueOf);
            } else {
                int i10 = a.f69125a[hVar.b().ordinal()];
                if ((i10 == 17 || i10 == 18) && (u10 = c12699o0.u(hVar.f69613d)) != null) {
                    valueOf = D0.v(u10, valueOf);
                }
                c12699o0.P(hVar.f69613d, valueOf);
            }
        }
        return ub2;
    }

    @Override
    public void h(E1 reader, Object extensionObject, C12666d0 extensionRegistry, C12699o0<AbstractC12719v0.g> extensions) throws IOException {
        AbstractC12719v0.h hVar = (AbstractC12719v0.h) extensionObject;
        extensions.P(hVar.f69613d, reader.M(hVar.c().getClass(), extensionRegistry));
    }

    @Override
    public void i(AbstractC12724x data, Object extensionObject, C12666d0 extensionRegistry, C12699o0<AbstractC12719v0.g> extensions) throws IOException {
        AbstractC12719v0.h hVar = (AbstractC12719v0.h) extensionObject;
        InterfaceC12659b1.a newBuilderForType = hVar.c().newBuilderForType();
        C N10 = data.N();
        newBuilderForType.mergeFrom(N10, extensionRegistry);
        extensions.P(hVar.f69613d, newBuilderForType.buildPartial());
        N10.a(0);
    }

    @Override
    public void j(C2 writer, Map.Entry<?, ?> extension) throws IOException {
        AbstractC12719v0.g gVar = (AbstractC12719v0.g) extension.getKey();
        if (!gVar.Z1()) {
            switch (a.f69125a[gVar.U1().ordinal()]) {
                case 1:
                    writer.G(gVar.getNumber(), ((Double) extension.getValue()).doubleValue());
                    return;
                case 2:
                    writer.P(gVar.getNumber(), ((Float) extension.getValue()).floatValue());
                    return;
                case 3:
                    writer.L(gVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 4:
                    writer.f(gVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 5:
                    writer.i(gVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 6:
                    writer.o(gVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 7:
                    writer.c(gVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 8:
                    writer.q(gVar.getNumber(), ((Boolean) extension.getValue()).booleanValue());
                    return;
                case 9:
                    writer.m(gVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 10:
                    writer.r(gVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 11:
                    writer.C(gVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 12:
                    writer.S(gVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 13:
                    writer.l(gVar.getNumber(), ((Long) extension.getValue()).longValue());
                    return;
                case 14:
                    writer.i(gVar.getNumber(), ((Integer) extension.getValue()).intValue());
                    return;
                case 15:
                    writer.h(gVar.getNumber(), (AbstractC12724x) extension.getValue());
                    return;
                case 16:
                    writer.e(gVar.getNumber(), (String) extension.getValue());
                    return;
                case 17:
                    writer.B(gVar.getNumber(), extension.getValue(), C12732z1.a().i(extension.getValue().getClass()));
                    return;
                case 18:
                    writer.I(gVar.getNumber(), extension.getValue(), C12732z1.a().i(extension.getValue().getClass()));
                    return;
                default:
                    return;
            }
        }
        switch (a.f69125a[gVar.U1().ordinal()]) {
            case 1:
                N1.Y(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 2:
                N1.g0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 3:
                N1.m0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 4:
                N1.F0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 5:
                N1.k0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 6:
                N1.e0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 7:
                N1.c0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 8:
                N1.U(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 9:
                N1.D0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 10:
                N1.s0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 11:
                N1.u0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 12:
                N1.w0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 13:
                N1.y0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 14:
                N1.k0(gVar.getNumber(), (List) extension.getValue(), writer, gVar.i2());
                return;
            case 15:
                N1.W(gVar.getNumber(), (List) extension.getValue(), writer);
                return;
            case 16:
                N1.B0(gVar.getNumber(), (List) extension.getValue(), writer);
                return;
            case 17:
                List list = (List) extension.getValue();
                if (list == null || list.isEmpty()) {
                    return;
                }
                N1.i0(gVar.getNumber(), (List) extension.getValue(), writer, C12732z1.a().i(list.get(0).getClass()));
                return;
            case 18:
                List list2 = (List) extension.getValue();
                if (list2 == null || list2.isEmpty()) {
                    return;
                }
                N1.q0(gVar.getNumber(), (List) extension.getValue(), writer, C12732z1.a().i(list2.get(0).getClass()));
                return;
            default:
                return;
        }
    }

    @Override
    public void k(Object message, C12699o0<AbstractC12719v0.g> extensions) {
        ((AbstractC12719v0.e) message).f69600i = extensions;
    }
}
