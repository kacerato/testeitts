package com.android.tools.r8.internal;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

public abstract class AbstractC9428sV extends AbstractMap {

    public transient Set f52369b;

    public transient C9261rV f52370c;

    public abstract Set e();

    @Override
    public final Set entrySet() {
        Set set = this.f52369b;
        if (set != null) {
            return set;
        }
        Set e10 = e();
        this.f52369b = e10;
        return e10;
    }

    @Override
    public final Collection values() {
        C9261rV c9261rV = this.f52370c;
        if (c9261rV != null) {
            return c9261rV;
        }
        C9261rV c9261rV2 = new C9261rV(this);
        this.f52370c = c9261rV2;
        return c9261rV2;
    }
}
