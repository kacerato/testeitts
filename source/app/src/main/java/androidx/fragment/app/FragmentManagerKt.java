package androidx.fragment.app;

import Mf.l;
import kotlin.jvm.internal.M;
import nf.InterfaceC14427o;
import nf.P0;

public final class FragmentManagerKt {
    public static final void commit(FragmentManager commit, boolean z10, l<? super FragmentTransaction, P0> body) {
        M.q(commit, "$this$commit");
        M.q(body, "body");
        FragmentTransaction beginTransaction = commit.beginTransaction();
        M.h(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static void commit$default(FragmentManager commit, boolean z10, l body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        M.q(commit, "$this$commit");
        M.q(body, "body");
        FragmentTransaction beginTransaction = commit.beginTransaction();
        M.h(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static final void commitNow(FragmentManager commitNow, boolean z10, l<? super FragmentTransaction, P0> body) {
        M.q(commitNow, "$this$commitNow");
        M.q(body, "body");
        FragmentTransaction beginTransaction = commitNow.beginTransaction();
        M.h(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    public static void commitNow$default(FragmentManager commitNow, boolean z10, l body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        M.q(commitNow, "$this$commitNow");
        M.q(body, "body");
        FragmentTransaction beginTransaction = commitNow.beginTransaction();
        M.h(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            beginTransaction.commitNowAllowingStateLoss();
        } else {
            beginTransaction.commitNow();
        }
    }

    @InterfaceC14427o(message = "Use commit { .. } or commitNow { .. } extensions")
    public static final void transaction(FragmentManager transaction, boolean z10, boolean z11, l<? super FragmentTransaction, P0> body) {
        M.q(transaction, "$this$transaction");
        M.q(body, "body");
        FragmentTransaction beginTransaction = transaction.beginTransaction();
        M.h(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            if (z11) {
                beginTransaction.commitNowAllowingStateLoss();
                return;
            } else {
                beginTransaction.commitNow();
                return;
            }
        }
        if (z11) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    public static void transaction$default(FragmentManager transaction, boolean z10, boolean z11, l body, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        if ((i10 & 2) != 0) {
            z11 = false;
        }
        M.q(transaction, "$this$transaction");
        M.q(body, "body");
        FragmentTransaction beginTransaction = transaction.beginTransaction();
        M.h(beginTransaction, "beginTransaction()");
        body.invoke(beginTransaction);
        if (z10) {
            if (z11) {
                beginTransaction.commitNowAllowingStateLoss();
                return;
            } else {
                beginTransaction.commitNow();
                return;
            }
        }
        if (z11) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }
}
