package com.android.tools.r8.internal;

import java.util.function.Consumer;
import java.util.function.Supplier;

public final class C7780id implements Supplier {

    public static final boolean f48994g = true;

    public AbstractC7945jd f48995b;

    public AbstractC6014Ud f48996c;

    public com.android.tools.r8.graph.M2 f48997d;

    public com.android.tools.r8.graph.E0 f48998e = null;

    public volatile boolean f48999f = false;

    public C7780id(AbstractC7945jd abstractC7945jd, AbstractC6014Ud abstractC6014Ud, com.android.tools.r8.graph.M2 m22) {
        this.f48995b = abstractC7945jd;
        this.f48996c = abstractC6014Ud;
        this.f48997d = m22;
    }

    @Override
    public final com.android.tools.r8.graph.E0 get() {
        if (this.f48999f) {
            return this.f48998e;
        }
        synchronized (this) {
            try {
                if (!this.f48999f) {
                    if (!f48994g && (this.f48995b == null || this.f48996c == null || this.f48997d == null)) {
                        throw new AssertionError();
                    }
                    this.f48996c.a(this.f48997d, new Consumer() {
                        @Override
                        public final void accept(Object obj) {
                            C7780id.this.a((com.android.tools.r8.graph.E0) obj);
                        }
                    });
                    this.f48995b = null;
                    this.f48996c = null;
                    this.f48997d = null;
                    this.f48999f = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        boolean z10 = f48994g;
        if (!z10 && !this.f48999f) {
            throw new AssertionError();
        }
        if (z10 || (this.f48995b == null && this.f48996c == null && this.f48997d == null)) {
            return this.f48998e;
        }
        throw new AssertionError();
    }

    public final void a(com.android.tools.r8.graph.E0 e02) {
        boolean z10 = f48994g;
        if (!z10 && e02 == null) {
            throw new AssertionError();
        }
        if (!z10 && !this.f48995b.c().a(e02)) {
            throw new AssertionError();
        }
        if (!z10 && this.f48999f) {
            throw new AssertionError();
        }
        if (e02.f36245e == this.f48997d) {
            com.android.tools.r8.graph.E0 e03 = this.f48998e;
            if (e03 == null) {
                this.f48998e = e02;
                return;
            } else {
                this.f48998e = null;
                this.f48998e = this.f48995b.a(e03, e02);
                return;
            }
        }
        throw new C5325If("Class content provided for type descriptor " + this.f48997d.j0() + " actually defines class " + e02.f36245e.j0());
    }
}
