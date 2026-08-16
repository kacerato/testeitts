package com.android.tools.r8.internal;

import java.util.Map;

public abstract class AbstractC9386sC extends JC {
    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = k().get(entry.getKey());
            if (obj2 != null && obj2.equals(entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public final boolean g() {
        return k().l();
    }

    @Override
    public int hashCode() {
        return k().hashCode();
    }

    @Override
    public boolean i() {
        AbstractC8552nC k10 = k();
        k10.getClass();
        return k10 instanceof C6133We0;
    }

    public abstract AbstractC8552nC k();

    @Override
    public final int size() {
        return k().size();
    }
}
