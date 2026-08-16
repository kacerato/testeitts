package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionMethodContext;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.MethodReference;

public class f extends AbstractC4328c implements DefinitionMethodContext {

    public final MethodReference f35999b;

    public f(MethodReference methodReference, Origin origin) {
        super(origin);
        this.f35999b = methodReference;
    }

    public static a a() {
        return new a();
    }

    @Override
    public final MethodReference getMethodReference() {
        return this.f35999b;
    }

    public static class a extends AbstractC4327b<a> {

        public static final boolean f36000d = true;

        public MethodReference f36001c;

        @Override
        public AbstractC4327b a(Origin origin) {
            this.f35993a = origin;
            return b();
        }

        @Override
        public final AbstractC4327b b() {
            return this;
        }

        @Override
        public f a() {
            boolean z10 = f36000d;
            if (!z10) {
                if (!AbstractC4327b.f35992b && this.f35993a == null) {
                    throw new AssertionError();
                }
                if (!z10 && this.f36001c == null) {
                    throw new AssertionError();
                }
            }
            return new f(this.f36001c, this.f35993a);
        }

        public a a(MethodReference methodReference) {
            this.f36001c = methodReference;
            return this;
        }
    }
}
