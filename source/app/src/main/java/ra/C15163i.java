package ra;

import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNodeConnection;
import ga.D;
import ga.H;
import java.util.List;
import java.util.Objects;

public final class C15163i {

    public static class a {

        public static final int[] f108765a;

        static {
            int[] iArr = new int[H.values().length];
            f108765a = iArr;
            try {
                iArr[H.BIG_NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f108765a[H.NUMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f108765a[H.NUMBER01.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f108765a[H.BOOLEAN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f108765a[H.TEXT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static Object a(Object value, H itemType) {
        return (itemType == null || itemType == H.DYNAMIC) ? value : ga.m.c(value, itemType);
    }

    public static boolean b(Object a10, Object b10, H preferredType) {
        if ((preferredType == null || preferredType == H.DYNAMIC) && ((preferredType = ga.m.k(a10)) == null || preferredType == H.DYNAMIC)) {
            preferredType = ga.m.k(b10);
        }
        if (preferredType == null || preferredType == H.DYNAMIC) {
            return Objects.equals(a10, b10) || Objects.equals(ga.m.i0(a10), ga.m.i0(b10));
        }
        int i10 = a.f108765a[preferredType.ordinal()];
        if (i10 == 1) {
            return ga.m.M(a10).compareTo(ga.m.M(b10)) == 0;
        }
        if (i10 == 2 || i10 == 3) {
            return Math.abs(ga.m.V(a10) - ga.m.V(b10)) <= 1.0E-4f;
        }
        if (i10 == 4) {
            return ga.m.O(a10) == ga.m.O(b10);
        }
        if (i10 == 5) {
            return Objects.equals(ga.m.i0(a10), ga.m.i0(b10));
        }
        Object c10 = ga.m.c(a10, preferredType);
        Object c11 = ga.m.c(b10, preferredType);
        if (Objects.equals(c10, c11)) {
            return true;
        }
        return Objects.equals(ga.m.i0(c10), ga.m.i0(c11));
    }

    public static List<Object> c(ga.l listValue) {
        if (listValue == null) {
            listValue = ga.l.b(H.DYNAMIC);
        }
        return listValue.f();
    }

    public static H d(NoCodeNode node, int inputIndex, D resolver) {
        H b10;
        NoCodeData a10 = resolver != null ? resolver.a() : null;
        if (a10 == null || node == null) {
            return H.DYNAMIC;
        }
        NoCodeNodeConnection Q10 = a10.Q(node.B(), inputIndex);
        if (Q10 == null) {
            return H.DYNAMIC;
        }
        Object V10 = a10.V(Q10.fromNodeId);
        return ((V10 instanceof ga.k) && (b10 = ((ga.k) V10).b(Q10.fromSlot, resolver)) != null) ? b10 : H.DYNAMIC;
    }

    public static H e(H currentType, Object value) {
        if (currentType != null && currentType != H.DYNAMIC) {
            return currentType;
        }
        H k10 = ga.m.k(value);
        return k10 != null ? k10 : H.DYNAMIC;
    }

    public static H f(ga.l listValue, Object fallbackItem) {
        return e(listValue != null ? listValue.d() : H.DYNAMIC, fallbackItem);
    }

    public static int g(Object value) {
        return Math.round(ga.m.V(value));
    }
}
