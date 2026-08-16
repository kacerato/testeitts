package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.internal.C7561hF;
import com.android.tools.r8.internal.XE;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.function.BinaryOperator;
import java.util.function.Function;

public class StartupClassesNonStartupFractionDiagnostic implements Diagnostic {

    private final int f36078b;

    private final int f36079c;

    private final int f36080d;

    private final C7561hF f36081e;

    public StartupClassesNonStartupFractionDiagnostic(int i10, int i11, int i12, C7561hF c7561hF) {
        this.f36078b = i10;
        this.f36079c = i11;
        this.f36080d = i12;
        this.f36081e = c7561hF;
    }

    public static Integer a(XE xe2) {
        return Integer.valueOf(xe2.a() > 10 ? xe2.getIntValue() : 0);
    }

    @Override
    public String getDiagnosticMessage() {
        return String.format("Startup DEX files contains %d classes and %d methods of which %d (%d%%) are non-startup methods. Distribution of classes by their number of startup methods:\n0: %d classes\n1: %d classes\n2-3: %d classes\n4-5: %d classes\n6-10: %d classes\n11+: %d classes\n", Integer.valueOf(this.f36078b), Integer.valueOf(this.f36079c + this.f36080d), Integer.valueOf(this.f36080d), Long.valueOf(Math.round((this.f36080d / (this.f36079c + r0)) * 100.0d)), Integer.valueOf(this.f36081e.get(0)), Integer.valueOf(this.f36081e.get(1)), Integer.valueOf(this.f36081e.get(3) + this.f36081e.get(2)), Integer.valueOf(this.f36081e.get(5) + this.f36081e.get(4)), Integer.valueOf(this.f36081e.get(10) + this.f36081e.get(9) + this.f36081e.get(8) + this.f36081e.get(7) + this.f36081e.get(6)), this.f36081e.h().stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                Integer a10;
                a10 = StartupClassesNonStartupFractionDiagnostic.a((XE) obj);
                return a10;
            }
        }).reduce(0, new BinaryOperator() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return Integer.valueOf(Integer.sum(((Integer) obj).intValue(), ((Integer) obj2).intValue()));
            }
        }));
    }

    @Override
    public Origin getOrigin() {
        return Origin.unknown();
    }

    @Override
    public Position getPosition() {
        return Position.UNKNOWN;
    }
}
