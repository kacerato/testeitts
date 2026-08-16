package com.android.tools.r8.internal;

import java.math.BigInteger;
import java.util.Objects;

public final class C7906jL extends AbstractC6907dL {

    public final Object f49214b;

    public C7906jL(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f49214b = bool;
    }

    @Override
    public final boolean a() {
        Object obj = this.f49214b;
        if (obj instanceof Boolean) {
            return ((Boolean) obj).booleanValue();
        }
        return Boolean.parseBoolean(h());
    }

    @Override
    public final int b() {
        return this.f49214b instanceof Number ? i().intValue() : Integer.parseInt(h());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C7906jL.class != obj.getClass()) {
            return false;
        }
        C7906jL c7906jL = (C7906jL) obj;
        if (this.f49214b == null) {
            return c7906jL.f49214b == null;
        }
        if (a(this) && a(c7906jL)) {
            return i().longValue() == c7906jL.i().longValue();
        }
        Object obj2 = this.f49214b;
        if (!(obj2 instanceof Number) || !(c7906jL.f49214b instanceof Number)) {
            return obj2.equals(c7906jL.f49214b);
        }
        double doubleValue = i().doubleValue();
        double doubleValue2 = c7906jL.i().doubleValue();
        return doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2));
    }

    @Override
    public final long g() {
        return this.f49214b instanceof Number ? i().longValue() : Long.parseLong(h());
    }

    @Override
    public final String h() {
        Object obj = this.f49214b;
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof Number) {
            return i().toString();
        }
        if (obj instanceof Boolean) {
            return ((Boolean) obj).toString();
        }
        throw new AssertionError((Object) ("Unexpected value type: " + ((Object) this.f49214b.getClass())));
    }

    public final int hashCode() {
        long doubleToLongBits;
        if (this.f49214b == null) {
            return 31;
        }
        if (a(this)) {
            doubleToLongBits = i().longValue();
        } else {
            Object obj = this.f49214b;
            if (!(obj instanceof Number)) {
                return obj.hashCode();
            }
            doubleToLongBits = Double.doubleToLongBits(i().doubleValue());
        }
        return (int) ((doubleToLongBits >>> 32) ^ doubleToLongBits);
    }

    public final Number i() {
        Object obj = this.f49214b;
        if (obj instanceof Number) {
            return (Number) obj;
        }
        if (obj instanceof String) {
            return new C9253rR((String) obj);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public C7906jL(Number number) {
        Objects.requireNonNull(number);
        this.f49214b = number;
    }

    public static boolean a(C7906jL c7906jL) {
        Object obj = c7906jL.f49214b;
        if (!(obj instanceof Number)) {
            return false;
        }
        Number number = (Number) obj;
        return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
    }

    public C7906jL(String str) {
        Objects.requireNonNull(str);
        this.f49214b = str;
    }
}
