package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public abstract class TargetFragmentUsageViolation extends Violation {
    public TargetFragmentUsageViolation(Fragment fragment, String str, int i10, C14026x c14026x) {
        this(fragment, (i10 & 2) != 0 ? null : str);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TargetFragmentUsageViolation(Fragment fragment, String str) {
        super(fragment, str);
        M.p(fragment, "fragment");
    }
}
