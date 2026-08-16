package com.android.tools.r8.internal;

import java.math.BigDecimal;

public final class C9253rR extends Number {

    public final String f52039b;

    public C9253rR(String str) {
        this.f52039b = str;
    }

    @Override
    public final double doubleValue() {
        return Double.parseDouble(this.f52039b);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9253rR)) {
            return false;
        }
        String str = this.f52039b;
        String str2 = ((C9253rR) obj).f52039b;
        return str == str2 || str.equals(str2);
    }

    @Override
    public final float floatValue() {
        return Float.parseFloat(this.f52039b);
    }

    public final int hashCode() {
        return this.f52039b.hashCode();
    }

    @Override
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.f52039b);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f52039b);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f52039b).intValue();
        }
    }

    @Override
    public final long longValue() {
        try {
            return Long.parseLong(this.f52039b);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f52039b).longValue();
        }
    }

    public final String toString() {
        return this.f52039b;
    }
}
