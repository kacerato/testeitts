package com.android.tools.r8.errors;

import com.android.tools.r8.Diagnostic;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.Position;
import java.util.function.IntFunction;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class StartupClassesOverflowDiagnostic implements Diagnostic {

    private final int f36082b;

    public StartupClassesOverflowDiagnostic(int i10) {
        this.f36082b = i10;
    }

    public static String a(int i10) {
        return "classes" + i10 + ".dex";
    }

    @Override
    public String getDiagnosticMessage() {
        return "Unable to include all startup classes in classes.dex. Startup classes were distributed in: classes.dex, " + ((String) IntStream.range(2, this.f36082b + 1).mapToObj(new IntFunction() {
            @Override
            public final Object apply(int i10) {
                String a10;
                a10 = StartupClassesOverflowDiagnostic.a(i10);
                return a10;
            }
        }).collect(Collectors.joining(", "))) + ".";
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
