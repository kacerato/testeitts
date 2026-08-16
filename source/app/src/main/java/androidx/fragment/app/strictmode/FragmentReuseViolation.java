package androidx.fragment.app.strictmode;

import androidx.fragment.app.Fragment;
import kotlin.jvm.internal.M;

public final class FragmentReuseViolation extends Violation {
    private final String previousFragmentId;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentReuseViolation(Fragment fragment, String previousFragmentId) {
        super(fragment, "Attempting to reuse fragment " + ((Object) fragment) + " with previous ID " + previousFragmentId);
        M.p(fragment, "fragment");
        M.p(previousFragmentId, "previousFragmentId");
        this.previousFragmentId = previousFragmentId;
    }

    public final String getPreviousFragmentId() {
        return this.previousFragmentId;
    }
}
