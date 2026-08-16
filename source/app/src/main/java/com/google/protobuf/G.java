package com.google.protobuf;

import com.google.protobuf.C12656a2;
import com.google.protobuf.D0;
import com.google.protobuf.Descriptors;
import java.lang.constant.ConstantDescs;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Stack;
import java.util.concurrent.ConcurrentHashMap;

public final class G implements InterfaceC12655a1 {

    public static final String f68056a = "getDefaultInstance";

    public static final G f68057b = new G();

    public static final Set<String> f68058c = new HashSet(Arrays.asList("Class", "DefaultInstanceForType", "ParserForType", "SerializedSize", "AllFields", "DescriptorForType", "InitializationErrorString", "UnknownFields", "CachedSize"));

    public static d f68059d = new d();

    public class a implements D0.e {

        public final Descriptors.f f68060a;

        public a(final Descriptors.f val$fd) {
            this.f68060a = val$fd;
        }

        @Override
        public boolean a(int number) {
            return this.f68060a.W1().findValueByNumber(number) != null;
        }
    }

    public class b implements D0.e {

        public final Descriptors.f f68061a;

        public b(final Descriptors.f val$valueField) {
            this.f68061a = val$valueField;
        }

        @Override
        public boolean a(int number) {
            return this.f68061a.W1().findValueByNumber(number) != null;
        }
    }

    public static class c {

        public static final int[] f68062a;

        public static final int[] f68063b;

        public static final int[] f68064c;

        static {
            int[] iArr = new int[Descriptors.f.c.values().length];
            f68064c = iArr;
            try {
                iArr[Descriptors.f.c.BOOL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68064c[Descriptors.f.c.BYTES.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68064c[Descriptors.f.c.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f68064c[Descriptors.f.c.ENUM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f68064c[Descriptors.f.c.FIXED32.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f68064c[Descriptors.f.c.FIXED64.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f68064c[Descriptors.f.c.FLOAT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f68064c[Descriptors.f.c.GROUP.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f68064c[Descriptors.f.c.INT32.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f68064c[Descriptors.f.c.INT64.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f68064c[Descriptors.f.c.MESSAGE.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f68064c[Descriptors.f.c.SFIXED32.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                f68064c[Descriptors.f.c.SFIXED64.ordinal()] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                f68064c[Descriptors.f.c.SINT32.ordinal()] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                f68064c[Descriptors.f.c.SINT64.ordinal()] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                f68064c[Descriptors.f.c.STRING.ordinal()] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                f68064c[Descriptors.f.c.UINT32.ordinal()] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                f68064c[Descriptors.f.c.UINT64.ordinal()] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            int[] iArr2 = new int[G0.values().length];
            f68063b = iArr2;
            try {
                iArr2[G0.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                f68063b[G0.BYTE_STRING.ordinal()] = 2;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                f68063b[G0.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                f68063b[G0.FLOAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                f68063b[G0.ENUM.ordinal()] = 5;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                f68063b[G0.INT.ordinal()] = 6;
            } catch (NoSuchFieldError unused24) {
            }
            try {
                f68063b[G0.LONG.ordinal()] = 7;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f68063b[G0.STRING.ordinal()] = 8;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f68063b[G0.MESSAGE.ordinal()] = 9;
            } catch (NoSuchFieldError unused27) {
            }
            int[] iArr3 = new int[Descriptors.g.b.values().length];
            f68062a = iArr3;
            try {
                iArr3[Descriptors.g.b.PROTO2.ordinal()] = 1;
            } catch (NoSuchFieldError unused28) {
            }
            try {
                f68062a[Descriptors.g.b.PROTO3.ordinal()] = 2;
            } catch (NoSuchFieldError unused29) {
            }
        }
    }

    public static Field e(Class<?> messageType, int index) {
        return m(messageType, "bitField" + index + ConstantDescs.DEFAULT_NAME);
    }

    public static C12684j0 f(Class<?> messageType, Descriptors.f fd2, e oneofState, boolean enforceUtf8, D0.e enumVerifier) {
        C12714t1 a10 = oneofState.a(messageType, fd2.o());
        EnumC12702p0 q10 = q(fd2);
        return C12684j0.g(fd2.getNumber(), q10, a10, s(messageType, fd2, q10), enforceUtf8, enumVerifier);
    }

    public static Field g(Class<?> messageType, Descriptors.f fd2) {
        return m(messageType, n(fd2));
    }

    public static Z0 h(Class<?> messageType, Descriptors.b messageDescriptor) {
        int i10 = c.f68062a[messageDescriptor.a().z().ordinal()];
        if (i10 == 1) {
            return i(messageType, messageDescriptor);
        }
        if (i10 == 2) {
            return j(messageType, messageDescriptor);
        }
        throw new IllegalArgumentException("Unsupported syntax: " + ((Object) messageDescriptor.a().z()));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static C12656a2 i(Class<?> messageType, Descriptors.b messageDescriptor) {
        List<Descriptors.f> s10 = messageDescriptor.s();
        C12656a2.a f10 = C12656a2.f(s10.size());
        f10.c(o(messageType));
        f10.f(EnumC12729y1.PROTO2);
        f10.e(messageDescriptor.w().X2());
        a aVar = null;
        e eVar = new e(aVar);
        Field field = null;
        int i10 = 0;
        int i11 = 0;
        int i12 = 1;
        while (i10 < s10.size()) {
            Descriptors.f fVar = s10.get(i10);
            boolean w12 = fVar.a().v().w1();
            Descriptors.f.b v10 = fVar.v();
            Descriptors.f.b bVar = Descriptors.f.b.ENUM;
            D0.e aVar2 = v10 == bVar ? new a(fVar) : aVar;
            if (fVar.o() != null) {
                f10.d(f(messageType, fVar, eVar, w12, aVar2));
            } else {
                Field l10 = l(messageType, fVar);
                int number = fVar.getNumber();
                EnumC12702p0 q10 = q(fVar);
                if (fVar.G()) {
                    Descriptors.f k10 = fVar.x().k(2);
                    if (k10.v() == bVar) {
                        aVar2 = new b(k10);
                    }
                    f10.d(C12684j0.e(l10, number, N1.E(messageType, fVar.c()), aVar2));
                } else if (!fVar.Z1()) {
                    if (field == null) {
                        field = e(messageType, i11);
                    }
                    if (fVar.J()) {
                        f10.d(C12684j0.k(l10, number, q10, field, i12, w12, aVar2));
                    } else {
                        f10.d(C12684j0.j(l10, number, q10, field, i12, w12, aVar2));
                    }
                } else if (aVar2 != null) {
                    if (fVar.i2()) {
                        f10.d(C12684j0.i(l10, number, q10, aVar2, g(messageType, fVar)));
                    } else {
                        f10.d(C12684j0.d(l10, number, q10, aVar2));
                    }
                } else if (fVar.v() == Descriptors.f.b.MESSAGE) {
                    f10.d(C12684j0.m(l10, number, q10, u(messageType, fVar)));
                } else if (fVar.i2()) {
                    f10.d(C12684j0.h(l10, number, q10, g(messageType, fVar)));
                } else {
                    f10.d(C12684j0.c(l10, number, q10, w12));
                }
                i10++;
                aVar = null;
            }
            i12 <<= 1;
            if (i12 == 0) {
                i11++;
                i12 = 1;
                field = null;
            }
            i10++;
            aVar = null;
        }
        ArrayList arrayList = new ArrayList();
        for (int i13 = 0; i13 < s10.size(); i13++) {
            Descriptors.f fVar2 = s10.get(i13);
            if (fVar2.J() || (fVar2.v() == Descriptors.f.b.MESSAGE && w(fVar2.x()))) {
                arrayList.add(Integer.valueOf(fVar2.getNumber()));
            }
        }
        int[] iArr = new int[arrayList.size()];
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            iArr[i14] = ((Integer) arrayList.get(i14)).intValue();
        }
        f10.b(iArr);
        return f10.a();
    }

    public static C12656a2 j(Class<?> messageType, Descriptors.b messageDescriptor) {
        List<Descriptors.f> s10 = messageDescriptor.s();
        C12656a2.a f10 = C12656a2.f(s10.size());
        f10.c(o(messageType));
        f10.f(EnumC12729y1.PROTO3);
        e eVar = new e(null);
        for (int i10 = 0; i10 < s10.size(); i10++) {
            Descriptors.f fVar = s10.get(i10);
            if (fVar.o() != null && !fVar.o().t()) {
                f10.d(f(messageType, fVar, eVar, true, null));
            } else if (fVar.G()) {
                f10.d(C12684j0.e(l(messageType, fVar), fVar.getNumber(), N1.E(messageType, fVar.c()), null));
            } else if (fVar.Z1() && fVar.v() == Descriptors.f.b.MESSAGE) {
                f10.d(C12684j0.m(l(messageType, fVar), fVar.getNumber(), q(fVar), u(messageType, fVar)));
            } else if (fVar.i2()) {
                f10.d(C12684j0.h(l(messageType, fVar), fVar.getNumber(), q(fVar), g(messageType, fVar)));
            } else {
                f10.d(C12684j0.c(l(messageType, fVar), fVar.getNumber(), q(fVar), true));
            }
        }
        return f10.a();
    }

    public static Descriptors.b k(Class<?> messageType) {
        return o(messageType).getDescriptorForType();
    }

    public static Field l(Class<?> messageType, Descriptors.f fd2) {
        return m(messageType, p(fd2));
    }

    public static Field m(Class<?> messageType, String fieldName) {
        try {
            return messageType.getDeclaredField(fieldName);
        } catch (Exception unused) {
            throw new IllegalArgumentException("Unable to find field " + fieldName + " in message class " + messageType.getName());
        }
    }

    public static String n(Descriptors.f fd2) {
        return y(fd2.c()) + "MemoizedSerializedSize";
    }

    public static Y0 o(Class<?> messageType) {
        try {
            return (Y0) messageType.getDeclaredMethod(f68056a, null).invoke(null, null);
        } catch (Exception e10) {
            throw new IllegalArgumentException("Unable to get default instance for message class " + messageType.getName(), e10);
        }
    }

    public static String p(Descriptors.f fd2) {
        String c10 = fd2.A() == Descriptors.f.c.GROUP ? fd2.x().c() : fd2.c();
        return y(c10) + (f68058c.contains(z(c10)) ? "__" : ConstantDescs.DEFAULT_NAME);
    }

    public static EnumC12702p0 q(Descriptors.f fd2) {
        switch (c.f68064c[fd2.A().ordinal()]) {
            case 1:
                return !fd2.Z1() ? EnumC12702p0.BOOL : fd2.i2() ? EnumC12702p0.BOOL_LIST_PACKED : EnumC12702p0.BOOL_LIST;
            case 2:
                return fd2.Z1() ? EnumC12702p0.BYTES_LIST : EnumC12702p0.BYTES;
            case 3:
                return !fd2.Z1() ? EnumC12702p0.DOUBLE : fd2.i2() ? EnumC12702p0.DOUBLE_LIST_PACKED : EnumC12702p0.DOUBLE_LIST;
            case 4:
                return !fd2.Z1() ? EnumC12702p0.ENUM : fd2.i2() ? EnumC12702p0.ENUM_LIST_PACKED : EnumC12702p0.ENUM_LIST;
            case 5:
                return !fd2.Z1() ? EnumC12702p0.FIXED32 : fd2.i2() ? EnumC12702p0.FIXED32_LIST_PACKED : EnumC12702p0.FIXED32_LIST;
            case 6:
                return !fd2.Z1() ? EnumC12702p0.FIXED64 : fd2.i2() ? EnumC12702p0.FIXED64_LIST_PACKED : EnumC12702p0.FIXED64_LIST;
            case 7:
                return !fd2.Z1() ? EnumC12702p0.FLOAT : fd2.i2() ? EnumC12702p0.FLOAT_LIST_PACKED : EnumC12702p0.FLOAT_LIST;
            case 8:
                return fd2.Z1() ? EnumC12702p0.GROUP_LIST : EnumC12702p0.GROUP;
            case 9:
                return !fd2.Z1() ? EnumC12702p0.INT32 : fd2.i2() ? EnumC12702p0.INT32_LIST_PACKED : EnumC12702p0.INT32_LIST;
            case 10:
                return !fd2.Z1() ? EnumC12702p0.INT64 : fd2.i2() ? EnumC12702p0.INT64_LIST_PACKED : EnumC12702p0.INT64_LIST;
            case 11:
                return fd2.G() ? EnumC12702p0.MAP : fd2.Z1() ? EnumC12702p0.MESSAGE_LIST : EnumC12702p0.MESSAGE;
            case 12:
                return !fd2.Z1() ? EnumC12702p0.SFIXED32 : fd2.i2() ? EnumC12702p0.SFIXED32_LIST_PACKED : EnumC12702p0.SFIXED32_LIST;
            case 13:
                return !fd2.Z1() ? EnumC12702p0.SFIXED64 : fd2.i2() ? EnumC12702p0.SFIXED64_LIST_PACKED : EnumC12702p0.SFIXED64_LIST;
            case 14:
                return !fd2.Z1() ? EnumC12702p0.SINT32 : fd2.i2() ? EnumC12702p0.SINT32_LIST_PACKED : EnumC12702p0.SINT32_LIST;
            case 15:
                return !fd2.Z1() ? EnumC12702p0.SINT64 : fd2.i2() ? EnumC12702p0.SINT64_LIST_PACKED : EnumC12702p0.SINT64_LIST;
            case 16:
                return fd2.Z1() ? EnumC12702p0.STRING_LIST : EnumC12702p0.STRING;
            case 17:
                return !fd2.Z1() ? EnumC12702p0.UINT32 : fd2.i2() ? EnumC12702p0.UINT32_LIST_PACKED : EnumC12702p0.UINT32_LIST;
            case 18:
                return !fd2.Z1() ? EnumC12702p0.UINT64 : fd2.i2() ? EnumC12702p0.UINT64_LIST_PACKED : EnumC12702p0.UINT64_LIST;
            default:
                throw new IllegalArgumentException("Unsupported field type: " + ((Object) fd2.A()));
        }
    }

    public static G r() {
        return f68057b;
    }

    public static Class<?> s(Class<?> messageType, Descriptors.f fd2, EnumC12702p0 type) {
        switch (c.f68063b[type.c().ordinal()]) {
            case 1:
                return Boolean.class;
            case 2:
                return AbstractC12724x.class;
            case 3:
                return Double.class;
            case 4:
                return Float.class;
            case 5:
            case 6:
                return Integer.class;
            case 7:
                return Long.class;
            case 8:
                return String.class;
            case 9:
                return t(messageType, fd2);
            default:
                throw new IllegalArgumentException("Invalid type for oneof: " + ((Object) type));
        }
    }

    public static Class<?> t(Class<?> messageType, Descriptors.f fd2) {
        try {
            return messageType.getDeclaredMethod(v(fd2.A() == Descriptors.f.c.GROUP ? fd2.x().c() : fd2.c()), null).getReturnType();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static Class<?> u(Class<?> messageType, Descriptors.f fd2) {
        try {
            return messageType.getDeclaredMethod(v(fd2.A() == Descriptors.f.c.GROUP ? fd2.x().c() : fd2.c()), Integer.TYPE).getReturnType();
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public static String v(String snakeCase) {
        String y10 = y(snakeCase);
        return "get" + Character.toUpperCase(y10.charAt(0)) + y10.substring(1, y10.length());
    }

    public static boolean w(Descriptors.b descriptor) {
        return f68059d.c(descriptor);
    }

    public static String x(String snakeCase, boolean capFirst) {
        StringBuilder sb2 = new StringBuilder(snakeCase.length() + 1);
        for (int i10 = 0; i10 < snakeCase.length(); i10++) {
            char charAt = snakeCase.charAt(i10);
            if (charAt != '_') {
                if (Character.isDigit(charAt)) {
                    sb2.append(charAt);
                } else {
                    if (capFirst) {
                        sb2.append(Character.toUpperCase(charAt));
                        capFirst = false;
                    } else if (i10 == 0) {
                        sb2.append(Character.toLowerCase(charAt));
                    } else {
                        sb2.append(charAt);
                    }
                }
            }
            capFirst = true;
        }
        return sb2.toString();
    }

    public static String y(String snakeCase) {
        return x(snakeCase, false);
    }

    public static String z(String snakeCase) {
        return x(snakeCase, true);
    }

    @Override
    public Z0 a(Class<?> messageType) {
        if (AbstractC12722w0.class.isAssignableFrom(messageType)) {
            return h(messageType, k(messageType));
        }
        throw new IllegalArgumentException("Unsupported message type: " + messageType.getName());
    }

    @Override
    public boolean b(Class<?> messageType) {
        return AbstractC12722w0.class.isAssignableFrom(messageType);
    }

    public static class d {

        public final Map<Descriptors.b, Boolean> f68065a = new ConcurrentHashMap();

        public int f68066b = 0;

        public final Stack<a> f68067c = new Stack<>();

        public final Map<Descriptors.b, a> f68068d = new HashMap();

        public static class a {

            public final Descriptors.b f68069a;

            public final int f68070b;

            public int f68071c;

            public b f68072d = null;

            public a(Descriptors.b descriptor, int index) {
                this.f68069a = descriptor;
                this.f68070b = index;
                this.f68071c = index;
            }
        }

        public final void a(b component) {
            boolean z10;
            b bVar;
            Iterator<Descriptors.b> it = component.f68073a.iterator();
            loop0: while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                }
                Descriptors.b next = it.next();
                z10 = true;
                if (next.y()) {
                    break;
                }
                for (Descriptors.f fVar : next.s()) {
                    if (fVar.J() || (fVar.v() == Descriptors.f.b.MESSAGE && (bVar = this.f68068d.get(fVar.x()).f68072d) != component && bVar.f68074b)) {
                        break loop0;
                    }
                }
            }
            component.f68074b = z10;
            Iterator<Descriptors.b> it2 = component.f68073a.iterator();
            while (it2.hasNext()) {
                this.f68065a.put(it2.next(), Boolean.valueOf(component.f68074b));
            }
        }

        public final a b(Descriptors.b descriptor) {
            a pop;
            int i10 = this.f68066b;
            this.f68066b = i10 + 1;
            a aVar = new a(descriptor, i10);
            this.f68067c.push(aVar);
            this.f68068d.put(descriptor, aVar);
            for (Descriptors.f fVar : descriptor.s()) {
                if (fVar.v() == Descriptors.f.b.MESSAGE) {
                    a aVar2 = this.f68068d.get(fVar.x());
                    if (aVar2 == null) {
                        aVar.f68071c = Math.min(aVar.f68071c, b(fVar.x()).f68071c);
                    } else if (aVar2.f68072d == null) {
                        aVar.f68071c = Math.min(aVar.f68071c, aVar2.f68071c);
                    }
                }
            }
            if (aVar.f68070b == aVar.f68071c) {
                b bVar = new b(null);
                do {
                    pop = this.f68067c.pop();
                    pop.f68072d = bVar;
                    bVar.f68073a.add(pop.f68069a);
                } while (pop != aVar);
                a(bVar);
            }
            return aVar;
        }

        public boolean c(Descriptors.b descriptor) {
            Boolean bool = this.f68065a.get(descriptor);
            if (bool != null) {
                return bool.booleanValue();
            }
            synchronized (this) {
                try {
                    Boolean bool2 = this.f68065a.get(descriptor);
                    if (bool2 != null) {
                        return bool2.booleanValue();
                    }
                    return b(descriptor).f68072d.f68074b;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        public static class b {

            public final List<Descriptors.b> f68073a;

            public boolean f68074b;

            public b() {
                this.f68073a = new ArrayList();
                this.f68074b = false;
            }

            public b(a aVar) {
                this();
            }
        }
    }

    public static final class e {

        public C12714t1[] f68075a;

        public e() {
            this.f68075a = new C12714t1[2];
        }

        public static C12714t1 b(Class<?> messageType, Descriptors.k desc) {
            String y10 = G.y(desc.c());
            return new C12714t1(desc.r(), G.m(messageType, y10 + "Case_"), G.m(messageType, y10 + ConstantDescs.DEFAULT_NAME));
        }

        public C12714t1 a(Class<?> messageType, Descriptors.k desc) {
            int r10 = desc.r();
            C12714t1[] c12714t1Arr = this.f68075a;
            if (r10 >= c12714t1Arr.length) {
                this.f68075a = (C12714t1[]) Arrays.copyOf(c12714t1Arr, r10 * 2);
            }
            C12714t1 c12714t1 = this.f68075a[r10];
            if (c12714t1 != null) {
                return c12714t1;
            }
            C12714t1 b10 = b(messageType, desc);
            this.f68075a[r10] = b10;
            return b10;
        }

        public e(a aVar) {
            this();
        }
    }
}
