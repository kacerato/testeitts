package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;

public abstract class Violation extends RuntimeException {
    private final Fragment fragment;

    public Violation(Fragment fragment, String str, int i10, C14026x c14026x) {
        this(fragment, (i10 & 2) != 0 ? null : str);
    }

    public final Fragment getFragment() {
        return this.fragment;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(Fragment fragment, String str) {
        super(str);
        M.p(fragment, "fragment");
        this.fragment = fragment;
    }
}
