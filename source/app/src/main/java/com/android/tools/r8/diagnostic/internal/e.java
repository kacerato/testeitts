package com.android.tools.r8.diagnostic.internal;

import com.android.tools.r8.diagnostic.DefinitionFieldContext;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.references.FieldReference;

public class e extends AbstractC4328c implements DefinitionFieldContext {

    public final FieldReference f35996b;

    public e(FieldReference fieldReference, Origin origin) {
        super(origin);
        this.f35996b = fieldReference;
    }

    public static a a() {
        return new a();
    }

    @Override
    public final FieldReference getFieldReference() {
        return this.f35996b;
    }

    public static class a extends AbstractC4327b<a> {

        public static final boolean f35997d = true;

        public FieldReference f35998c;

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
        public e a() {
            boolean z10 = f35997d;
            if (!z10) {
                if (!AbstractC4327b.f35992b && this.f35993a == null) {
                    throw new AssertionError();
                }
                if (!z10 && this.f35998c == null) {
                    throw new AssertionError();
                }
            }
            return new e(this.f35998c, this.f35993a);
        }

        public a a(FieldReference fieldReference) {
            this.f35998c = fieldReference;
            return this;
        }
    }
}
