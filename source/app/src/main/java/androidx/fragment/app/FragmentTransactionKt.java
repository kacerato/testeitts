package androidx.fragment.app;

import android.os.Bundle;
import kotlin.jvm.internal.M;
import org.eclipse.jdt.core.Signature;

public final class FragmentTransactionKt {
    public static final <F extends Fragment> FragmentTransaction add(FragmentTransaction add, int i10, String str, Bundle bundle) {
        M.q(add, "$this$add");
        M.y(4, Signature.SIG_FLOAT);
        FragmentTransaction add2 = add.add(i10, Fragment.class, bundle, str);
        M.h(add2, "add(containerViewId, F::class.java, args, tag)");
        return add2;
    }

    public static FragmentTransaction add$default(FragmentTransaction add, int i10, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            bundle = null;
        }
        M.q(add, "$this$add");
        M.y(4, Signature.SIG_FLOAT);
        FragmentTransaction add2 = add.add(i10, Fragment.class, bundle, str);
        M.h(add2, "add(containerViewId, F::class.java, args, tag)");
        return add2;
    }

    public static final <F extends Fragment> FragmentTransaction replace(FragmentTransaction replace, int i10, String str, Bundle bundle) {
        M.q(replace, "$this$replace");
        M.y(4, Signature.SIG_FLOAT);
        FragmentTransaction replace2 = replace.replace(i10, Fragment.class, bundle, str);
        M.h(replace2, "replace(containerViewId, F::class.java, args, tag)");
        return replace2;
    }

    public static FragmentTransaction replace$default(FragmentTransaction replace, int i10, String str, Bundle bundle, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            str = null;
        }
        if ((i11 & 4) != 0) {
            bundle = null;
        }
        M.q(replace, "$this$replace");
        M.y(4, Signature.SIG_FLOAT);
        FragmentTransaction replace2 = replace.replace(i10, Fragment.class, bundle, str);
        M.h(replace2, "replace(containerViewId, F::class.java, args, tag)");
        return replace2;
    }

    public static final <F extends Fragment> FragmentTransaction add(FragmentTransaction add, String tag, Bundle bundle) {
        M.q(add, "$this$add");
        M.q(tag, "tag");
        M.y(4, Signature.SIG_FLOAT);
        FragmentTransaction add2 = add.add(Fragment.class, bundle, tag);
        M.h(add2, "add(F::class.java, args, tag)");
        return add2;
    }

    public static FragmentTransaction add$default(FragmentTransaction add, String tag, Bundle bundle, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            bundle = null;
        }
        M.q(add, "$this$add");
        M.q(tag, "tag");
        M.y(4, Signature.SIG_FLOAT);
        FragmentTransaction add2 = add.add(Fragment.class, bundle, tag);
        M.h(add2, "add(F::class.java, args, tag)");
        return add2;
    }
}
