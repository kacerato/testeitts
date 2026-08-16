package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;

public abstract class AbstractC9317rp0 {

    public static final boolean f52152a = true;

    public static String a(C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22, C10340xw0 c10340xw0, com.android.tools.r8.graph.M2 m22) {
        if (c10340xw0.j()) {
            return null;
        }
        if (c10340xw0.L()) {
            return c10340xw0.f53886c.K().u2().toString();
        }
        Number a10 = a(c4724u1, c10340xw0);
        if (a10 == null) {
            return null;
        }
        if (c10340xw0.u().x()) {
            if (m22 == c4724u1.f37849E1) {
                return String.valueOf(a10.intValue() != 0);
            }
            if (m22 == c4724u1.f37856F1) {
                return String.valueOf((int) a10.byteValue());
            }
            if (m22 == c4724u1.f37898L1) {
                return String.valueOf((int) a10.shortValue());
            }
            if (m22 == c4724u1.f37863G1) {
                return String.valueOf((char) a10.intValue());
            }
            if (m22 == c4724u1.f37884J1) {
                return String.valueOf(a10.intValue());
            }
            if (m22 == c4724u1.f37891K1) {
                return String.valueOf(a10.longValue());
            }
            if (m22 == c4724u1.f37877I1) {
                return String.valueOf(a10.floatValue());
            }
            if (m22 == c4724u1.f37870H1) {
                return String.valueOf(a10.doubleValue());
            }
        } else {
            AbstractC8999pu0 u10 = c10340xw0.u();
            u10.getClass();
            if ((u10 instanceof C6301Zd0) && !a22.b(c4724u1) && m22 != c4724u1.f37926P1) {
                if (f52152a || a10.intValue() == 0) {
                    return "null";
                }
                throw new AssertionError();
            }
        }
        return null;
    }

    public static Number a(C4724u1 c4724u1, C10340xw0 c10340xw0) {
        Number a10;
        if (c10340xw0.j()) {
            return null;
        }
        if (c10340xw0.f53886c.w1()) {
            C9126qh J10 = c10340xw0.f53886c.J();
            if (J10.s2() == EnumC5477Kw0.f41827e) {
                return Long.valueOf(J10.v2());
            }
            EnumC5477Kw0 s22 = J10.s2();
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41826d;
            if (s22 == enumC5477Kw0) {
                if (C9126qh.f51850m || J10.s2() == enumC5477Kw0) {
                    return Float.valueOf(Float.intBitsToFloat((int) J10.f51851l));
                }
                throw new AssertionError();
            }
            EnumC5477Kw0 s23 = J10.s2();
            EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41828f;
            if (s23 == enumC5477Kw02) {
                if (C9126qh.f51850m || J10.s2() == enumC5477Kw02) {
                    return Double.valueOf(Double.longBitsToDouble(J10.f51851l));
                }
                throw new AssertionError();
            }
            if (f52152a || J10.s2() == EnumC5477Kw0.f41825c || J10.s2() == EnumC5477Kw0.f41824b) {
                return Integer.valueOf(J10.u2());
            }
            throw new AssertionError();
        }
        if (c10340xw0.f53886c.d2()) {
            C10022w10 z02 = c10340xw0.f53886c.z0();
            if (!f52152a && z02.f54321f.size() != 1) {
                throw new AssertionError();
            }
            if (!z02.u2() || (a10 = a(c4724u1, (C10340xw0) z02.f54321f.get(0))) == null) {
                return null;
            }
            com.android.tools.r8.graph.M2 a11 = z02.f53402l.a(c4724u1);
            if (a11 == c4724u1.f37849E1) {
                return Integer.valueOf(a10.intValue() == 0 ? 0 : 1);
            }
            if (a11 == c4724u1.f37856F1) {
                return Byte.valueOf(a10.byteValue());
            }
            if (a11 == c4724u1.f37898L1) {
                return Short.valueOf(a10.shortValue());
            }
            if (a11 == c4724u1.f37863G1) {
                return Integer.valueOf(a10.intValue() & 65535);
            }
            if (a11 == c4724u1.f37884J1) {
                return Integer.valueOf(a10.intValue());
            }
            if (a11 == c4724u1.f37891K1) {
                return Long.valueOf(a10.longValue());
            }
            if (a11 == c4724u1.f37877I1) {
                return Float.valueOf(a10.floatValue());
            }
            if (a11 == c4724u1.f37870H1) {
                return Double.valueOf(a10.doubleValue());
            }
        }
        return null;
    }
}
