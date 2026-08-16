package com.android.tools.r8.internal;

import com.android.tools.r8.ResourceShrinker;
import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC8608nb0 implements ResourceShrinker.ReferenceChecker {
    public AbstractC8608nb0(C4798y c4798y) {
    }

    @Override
    public final void referencedInt(int i10) {
        ((com.android.tools.r8.shaking.G4) this).f56499a.f56611s.add(i10);
    }

    @Override
    public final void referencedMethod(String str, String str2, String str3) {
    }

    @Override
    public final void referencedStaticField(String str, String str2) {
    }

    @Override
    public final void referencedString(String str) {
    }

    @Override
    public final boolean shouldProcess(String str) {
        AbstractC8552nC abstractC8552nC = C4932Bl.f39005a;
        if (str.charAt(0) != '[') {
            str = AbstractC4917Be0.a("L", str, ";");
        }
        return C4932Bl.A(str);
    }
}
