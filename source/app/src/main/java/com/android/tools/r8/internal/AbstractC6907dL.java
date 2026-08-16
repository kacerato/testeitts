package com.android.tools.r8.internal;

import java.io.IOException;
import java.io.StringWriter;

public abstract class AbstractC6907dL {
    public boolean a() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public int b() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final C6574bL c() {
        if (this instanceof C6574bL) {
            return (C6574bL) this;
        }
        throw new IllegalStateException("Not a JSON Array: " + ((Object) this));
    }

    public final C7407gL d() {
        if (this instanceof C7407gL) {
            return (C7407gL) this;
        }
        throw new IllegalStateException("Not a JSON Object: " + ((Object) this));
    }

    public long g() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public String h() {
        throw new UnsupportedOperationException(getClass().getSimpleName());
    }

    public final String toString() {
        try {
            StringWriter stringWriter = new StringWriter();
            C9075qL c9075qL = new C9075qL(stringWriter);
            c9075qL.f51761e = true;
            C6164Wt0 c6164Wt0 = AbstractC8164ku0.f49809a;
            C5934St0.a(c9075qL, this);
            return stringWriter.toString();
        } catch (IOException e10) {
            throw new AssertionError(e10);
        }
    }
}
