package com.android.tools.r8.internal;

import java.util.Map;

public final class ES implements Map.Entry {

    public ES f39864b;

    public ES f39865c;

    public ES f39866d;

    public ES f39867e;

    public ES f39868f;

    public final Object f39869g;

    public final boolean f39870h;

    public Object f39871i;

    public int f39872j;

    public ES(boolean z10) {
        this.f39869g = null;
        this.f39870h = z10;
        this.f39868f = this;
        this.f39867e = this;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f39869g;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f39871i;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public final Object getKey() {
        return this.f39869g;
    }

    @Override
    public final Object getValue() {
        return this.f39871i;
    }

    @Override
    public final int hashCode() {
        Object obj = this.f39869g;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f39871i;
        return hashCode ^ (obj2 != null ? obj2.hashCode() : 0);
    }

    @Override
    public final Object setValue(Object obj) {
        if (obj == null && !this.f39870h) {
            throw new NullPointerException("value == null");
        }
        Object obj2 = this.f39871i;
        this.f39871i = obj;
        return obj2;
    }

    public final String toString() {
        return this.f39869g + "=" + this.f39871i;
    }

    public ES(boolean z10, ES es, Object obj, ES es2, ES es3) {
        this.f39864b = es;
        this.f39869g = obj;
        this.f39870h = z10;
        this.f39872j = 1;
        this.f39867e = es2;
        this.f39868f = es3;
        es3.f39867e = this;
        es2.f39868f = this;
    }
}
