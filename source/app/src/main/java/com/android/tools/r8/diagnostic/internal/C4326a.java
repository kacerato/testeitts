package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionClassContext;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.ClassReference;

public class C4326a extends AbstractC4328c implements DefinitionClassContext {

    public final ClassReference f35989b;

    public C4326a(ClassReference classReference, Origin origin) {
        super(origin);
        this.f35989b = classReference;
    }

    public static C0914a a() {
        return new C0914a();
    }

    @Override
    public final ClassReference getClassReference() {
        return this.f35989b;
    }

    public static class C0914a extends AbstractC4327b<C0914a> {

        public static final boolean f35990d = true;

        public ClassReference f35991c;

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
        public C4326a a() {
            boolean z10 = f35990d;
            if (!z10) {
                if (!AbstractC4327b.f35992b && this.f35993a == null) {
                    throw new AssertionError();
                }
                if (!z10 && this.f35991c == null) {
                    throw new AssertionError();
                }
            }
            return new C4326a(this.f35991c, this.f35993a);
        }

        public C0914a a(ClassReference classReference) {
            this.f35991c = classReference;
            return this;
        }
    }
}
