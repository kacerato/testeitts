package com.android.tools.r8.internal;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public abstract class S0 implements FY {

    public transient Collection f44052b;

    public transient Set f44053c;

    public transient LY f44054d;

    public transient Map f44055e;

    @Override
    public Map b() {
        Map map = this.f44055e;
        if (map != null) {
            return map;
        }
        Map c10 = c();
        this.f44055e = c10;
        return c10;
    }

    public abstract Map c();

    public abstract Set d();

    public abstract LY e();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof FY) {
            return b().equals(((FY) obj).b());
        }
        return false;
    }

    public LY f() {
        LY ly = this.f44054d;
        if (ly != null) {
            return ly;
        }
        LY e10 = e();
        this.f44054d = e10;
        return e10;
    }

    public final int hashCode() {
        return b().hashCode();
    }

    @Override
    public Set keySet() {
        Set set = this.f44053c;
        if (set != null) {
            return set;
        }
        Set d10 = d();
        this.f44053c = d10;
        return d10;
    }

    public final String toString() {
        return b().toString();
    }
}
