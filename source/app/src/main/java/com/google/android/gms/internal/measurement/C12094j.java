package com.google.android.gms.internal.measurement;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.util.Iterator;
import java.util.List;
import kotlin.time.C14038j;

public final class C12094j implements InterfaceC12157q {

    public final Double f62330b;

    public C12094j(Double d10) {
        if (d10 == null) {
            this.f62330b = Double.valueOf(Double.NaN);
        } else {
            this.f62330b = d10;
        }
    }

    @Override
    public final String P1() {
        Double d10 = this.f62330b;
        if (Double.isNaN(d10.doubleValue())) {
            return "NaN";
        }
        if (Double.isInfinite(d10.doubleValue())) {
            return d10.doubleValue() > 0.0d ? C14038j.f95883k : "-Infinity";
        }
        BigDecimal a10 = C12085i.a(BigDecimal.valueOf(d10.doubleValue()));
        DecimalFormat decimalFormat = new DecimalFormat("0E0");
        decimalFormat.setRoundingMode(RoundingMode.HALF_UP);
        decimalFormat.setMinimumFractionDigits((a10.scale() > 0 ? a10.precision() : a10.scale()) - 1);
        String format = decimalFormat.format(a10);
        int indexOf = format.indexOf("E");
        if (indexOf <= 0) {
            return format;
        }
        int parseInt = Integer.parseInt(format.substring(indexOf + 1));
        return ((parseInt >= 0 || parseInt <= -7) && (parseInt < 0 || parseInt >= 21)) ? format.replace("E-", "e-").replace("E", "e+") : a10.toPlainString();
    }

    @Override
    public final Double Q1() {
        return this.f62330b;
    }

    @Override
    public final Boolean R1() {
        Double d10 = this.f62330b;
        boolean z10 = false;
        if (!Double.isNaN(d10.doubleValue()) && d10.doubleValue() != 0.0d) {
            z10 = true;
        }
        return Boolean.valueOf(z10);
    }

    @Override
    public final Iterator a() {
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C12094j) {
            return this.f62330b.equals(((C12094j) obj).f62330b);
        }
        return false;
    }

    @Override
    public final InterfaceC12157q g() {
        return new C12094j(this.f62330b);
    }

    @Override
    public final InterfaceC12157q h(String str, C12079h2 c12079h2, List list) {
        if ("toString".equals(str)) {
            return new C12192u(P1());
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", P1(), str));
    }

    public final int hashCode() {
        return this.f62330b.hashCode();
    }

    public final String toString() {
        return P1();
    }
}
