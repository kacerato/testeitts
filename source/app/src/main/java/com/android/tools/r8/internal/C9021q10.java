package com.android.tools.r8.internal;

import java.util.function.BiFunction;
import java.util.function.Function;

public final class C9021q10 {

    public static final boolean f51694e = true;

    public AbstractC6450ae0 f51695a;

    public AbstractC6450ae0 f51696b;

    public AbstractC6450ae0 f51697c;

    public AbstractC6450ae0 f51698d;

    public static AbstractC6450ae0 a(C8854p10 c8854p10, Function function) {
        C9021q10 c9021q10 = new C9021q10();
        AbstractC6450ae0 abstractC6450ae0 = (AbstractC6450ae0) function.apply(c9021q10);
        if (c8854p10 == C8854p10.h()) {
            c9021q10.f51695a = abstractC6450ae0;
            return abstractC6450ae0;
        }
        if (c8854p10 == C8854p10.c()) {
            c9021q10.f51696b = abstractC6450ae0;
            return abstractC6450ae0;
        }
        if (c8854p10 == C8854p10.b()) {
            c9021q10.f51697c = abstractC6450ae0;
            return abstractC6450ae0;
        }
        if (!f51694e && c8854p10 != C8854p10.a()) {
            throw new AssertionError();
        }
        c9021q10.f51698d = abstractC6450ae0;
        return abstractC6450ae0;
    }

    public final AbstractC6450ae0 a(C8854p10 c8854p10, BiFunction biFunction) {
        AbstractC6450ae0 abstractC6450ae0;
        AbstractC6450ae0 abstractC6450ae02;
        if (c8854p10 == C8854p10.h()) {
            abstractC6450ae0 = this.f51695a;
        } else if (c8854p10 == C8854p10.c()) {
            abstractC6450ae0 = this.f51696b;
        } else if (c8854p10 == C8854p10.b()) {
            abstractC6450ae0 = this.f51697c;
        } else {
            if (!f51694e && c8854p10 != C8854p10.a()) {
                throw new AssertionError();
            }
            abstractC6450ae0 = this.f51698d;
        }
        if (abstractC6450ae0 != null) {
            return abstractC6450ae0;
        }
        synchronized (this) {
            try {
                if (c8854p10 == C8854p10.h()) {
                    abstractC6450ae02 = this.f51695a;
                } else if (c8854p10 == C8854p10.c()) {
                    abstractC6450ae02 = this.f51696b;
                } else if (c8854p10 == C8854p10.b()) {
                    abstractC6450ae02 = this.f51697c;
                } else {
                    if (!f51694e && c8854p10 != C8854p10.a()) {
                        throw new AssertionError();
                    }
                    abstractC6450ae02 = this.f51698d;
                }
                if (abstractC6450ae02 != null) {
                    return abstractC6450ae02;
                }
                AbstractC6450ae0 abstractC6450ae03 = (AbstractC6450ae0) biFunction.apply(c8854p10, this);
                boolean z10 = f51694e;
                if (!z10 && abstractC6450ae03 == null) {
                    throw new AssertionError();
                }
                if (c8854p10 == C8854p10.h()) {
                    this.f51695a = abstractC6450ae03;
                } else if (c8854p10 == C8854p10.c()) {
                    this.f51696b = abstractC6450ae03;
                } else if (c8854p10 == C8854p10.b()) {
                    this.f51697c = abstractC6450ae03;
                } else {
                    if (!z10 && c8854p10 != C8854p10.a()) {
                        throw new AssertionError();
                    }
                    this.f51698d = abstractC6450ae03;
                }
                return abstractC6450ae03;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
