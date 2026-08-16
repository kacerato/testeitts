package com.android.tools.r8.errors;

import com.android.tools.r8.graph.L2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;

public final class b {

    public M2 f36093a;

    public L2 f36094b;

    public Origin f36095c;

    public Position f36096d;

    public final AssumeValuesMissingStaticFieldDiagnostic a() {
        return new AssumeValuesMissingStaticFieldDiagnostic(this.f36093a, this.f36094b, this.f36095c, this.f36096d);
    }
}
