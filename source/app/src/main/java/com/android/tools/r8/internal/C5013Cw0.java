package com.android.tools.r8.internal;

import com.android.tools.r8.inspector.BooleanValueInspector;
import com.android.tools.r8.inspector.ByteValueInspector;
import com.android.tools.r8.inspector.CharValueInspector;
import com.android.tools.r8.inspector.DoubleValueInspector;
import com.android.tools.r8.inspector.FloatValueInspector;
import com.android.tools.r8.inspector.IntValueInspector;
import com.android.tools.r8.inspector.LongValueInspector;
import com.android.tools.r8.inspector.ShortValueInspector;
import com.android.tools.r8.inspector.StringValueInspector;
import com.android.tools.r8.references.Reference;
import com.android.tools.r8.references.TypeReference;

public final class C5013Cw0 implements BooleanValueInspector, ByteValueInspector, CharValueInspector, ShortValueInspector, IntValueInspector, LongValueInspector, FloatValueInspector, DoubleValueInspector, StringValueInspector {

    public final com.android.tools.r8.graph.R2 f39390a;

    public final com.android.tools.r8.graph.M2 f39391b;

    public C5013Cw0(com.android.tools.r8.graph.R2 r22, com.android.tools.r8.graph.M2 m22) {
        this.f39390a = r22;
        this.f39391b = m22;
    }

    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalStateException("Invalid call on ValueInspector");
        }
    }

    @Override
    public final BooleanValueInspector asBooleanValue() {
        if (this.f39391b.F0()) {
            return this;
        }
        return null;
    }

    @Override
    public final ByteValueInspector asByteValue() {
        if (this.f39391b.G0()) {
            return this;
        }
        return null;
    }

    @Override
    public final CharValueInspector asCharValue() {
        if (this.f39391b.H0()) {
            return this;
        }
        return null;
    }

    @Override
    public final DoubleValueInspector asDoubleValue() {
        if (this.f39391b.J0()) {
            return this;
        }
        return null;
    }

    @Override
    public final FloatValueInspector asFloatValue() {
        if (this.f39391b.K0()) {
            return this;
        }
        return null;
    }

    @Override
    public final IntValueInspector asIntValue() {
        if (this.f39391b.L0()) {
            return this;
        }
        return null;
    }

    @Override
    public final LongValueInspector asLongValue() {
        if (this.f39391b.M0()) {
            return this;
        }
        return null;
    }

    @Override
    public final ShortValueInspector asShortValue() {
        if (this.f39391b.R0()) {
            return this;
        }
        return null;
    }

    @Override
    public final StringValueInspector asStringValue() {
        if (isStringValue()) {
            return this;
        }
        return null;
    }

    @Override
    public final boolean getBooleanValue() {
        a(this.f39391b.F0());
        return this.f39390a.o0().W0();
    }

    @Override
    public final byte getByteValue() {
        a(this.f39391b.G0());
        return this.f39390a.p0().W0();
    }

    @Override
    public final char getCharValue() {
        a(this.f39391b.H0());
        return this.f39390a.q0().W0();
    }

    @Override
    public final double getDoubleValue() {
        a(this.f39391b.J0());
        return this.f39390a.s0().W0();
    }

    @Override
    public final float getFloatValue() {
        a(this.f39391b.K0());
        return this.f39390a.v0().W0();
    }

    @Override
    public final int getIntValue() {
        a(this.f39391b.L0());
        return this.f39390a.w0().f36754d;
    }

    @Override
    public final long getLongValue() {
        a(this.f39391b.M0());
        return this.f39390a.x0().W0();
    }

    @Override
    public final short getShortValue() {
        a(this.f39391b.R0());
        return this.f39390a.C0().W0();
    }

    @Override
    public final String getStringValue() {
        a(isStringValue());
        return ((com.android.tools.r8.graph.L2) this.f39390a.D0().W0()).toString();
    }

    @Override
    public final TypeReference getTypeReference() {
        return Reference.typeFromDescriptor(this.f39391b.V0());
    }

    @Override
    public final boolean isBooleanValue() {
        return this.f39391b.F0();
    }

    @Override
    public final boolean isByteValue() {
        return this.f39391b.G0();
    }

    @Override
    public final boolean isCharValue() {
        return this.f39391b.H0();
    }

    @Override
    public final boolean isDoubleValue() {
        return this.f39391b.J0();
    }

    @Override
    public final boolean isFloatValue() {
        return this.f39391b.K0();
    }

    @Override
    public final boolean isIntValue() {
        return this.f39391b.L0();
    }

    @Override
    public final boolean isLongValue() {
        return this.f39391b.M0();
    }

    @Override
    public final boolean isPrimitive() {
        return this.f39391b.P0();
    }

    @Override
    public final boolean isShortValue() {
        return this.f39391b.R0();
    }

    @Override
    public final boolean isStringValue() {
        return this.f39391b.I0() && this.f39390a.R0();
    }
}
