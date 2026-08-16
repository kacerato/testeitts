package androidx.fragment.app.strictmode;

import Lf.o;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.strictmode.FragmentStrictMode;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.C14026x;
import kotlin.jvm.internal.M;
import pf.S;
import pf.o0;
import pf.z0;

public final class FragmentStrictMode {
    private static final String TAG = "FragmentStrictMode";
    public static final FragmentStrictMode INSTANCE = new FragmentStrictMode();
    private static Policy defaultPolicy = Policy.LAX;

    public enum Flag {
        PENALTY_LOG,
        PENALTY_DEATH,
        DETECT_FRAGMENT_REUSE,
        DETECT_FRAGMENT_TAG_USAGE,
        DETECT_RETAIN_INSTANCE_USAGE,
        DETECT_SET_USER_VISIBLE_HINT,
        DETECT_TARGET_FRAGMENT_USAGE,
        DETECT_WRONG_FRAGMENT_CONTAINER
    }

    public interface OnViolationListener {
        void onViolation(Violation violation);
    }

    public static final class Policy {
        public static final Companion Companion = new Companion(null);
        public static final Policy LAX = new Policy(z0.k(), null, o0.z());
        private final Set<Flag> flags;
        private final OnViolationListener listener;
        private final Map<String, Set<Class<? extends Violation>>> mAllowedViolations;

        public static final class Companion {
            public Companion(C14026x c14026x) {
                this();
            }

            private Companion() {
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public Policy(Set<? extends Flag> flags, OnViolationListener onViolationListener, Map<String, ? extends Set<Class<? extends Violation>>> allowedViolations) {
            M.p(flags, "flags");
            M.p(allowedViolations, "allowedViolations");
            this.flags = flags;
            this.listener = onViolationListener;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry<String, ? extends Set<Class<? extends Violation>>> entry : allowedViolations.entrySet()) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            this.mAllowedViolations = linkedHashMap;
        }

        public final Set<Flag> getFlags$fragment_release() {
            return this.flags;
        }

        public final OnViolationListener getListener$fragment_release() {
            return this.listener;
        }

        public final Map<String, Set<Class<? extends Violation>>> getMAllowedViolations$fragment_release() {
            return this.mAllowedViolations;
        }

        public static final class Builder {
            private OnViolationListener listener;
            private final Set<Flag> flags = new LinkedHashSet();
            private final Map<String, Set<Class<? extends Violation>>> mAllowedViolations = new LinkedHashMap();

            public final Builder allowViolation(Class<? extends Fragment> fragmentClass, Class<? extends Violation> violationClass) {
                M.p(fragmentClass, "fragmentClass");
                M.p(violationClass, "violationClass");
                String fragmentClassString = fragmentClass.getName();
                M.o(fragmentClassString, "fragmentClassString");
                return allowViolation(fragmentClassString, violationClass);
            }

            public final Policy build() {
                if (this.listener == null && !this.flags.contains(Flag.PENALTY_DEATH)) {
                    penaltyLog();
                }
                return new Policy(this.flags, this.listener, this.mAllowedViolations);
            }

            public final Builder detectFragmentReuse() {
                this.flags.add(Flag.DETECT_FRAGMENT_REUSE);
                return this;
            }

            public final Builder detectFragmentTagUsage() {
                this.flags.add(Flag.DETECT_FRAGMENT_TAG_USAGE);
                return this;
            }

            public final Builder detectRetainInstanceUsage() {
                this.flags.add(Flag.DETECT_RETAIN_INSTANCE_USAGE);
                return this;
            }

            public final Builder detectSetUserVisibleHint() {
                this.flags.add(Flag.DETECT_SET_USER_VISIBLE_HINT);
                return this;
            }

            public final Builder detectTargetFragmentUsage() {
                this.flags.add(Flag.DETECT_TARGET_FRAGMENT_USAGE);
                return this;
            }

            public final Builder detectWrongFragmentContainer() {
                this.flags.add(Flag.DETECT_WRONG_FRAGMENT_CONTAINER);
                return this;
            }

            public final Builder penaltyDeath() {
                this.flags.add(Flag.PENALTY_DEATH);
                return this;
            }

            public final Builder penaltyListener(OnViolationListener listener) {
                M.p(listener, "listener");
                this.listener = listener;
                return this;
            }

            public final Builder penaltyLog() {
                this.flags.add(Flag.PENALTY_LOG);
                return this;
            }

            public final Builder allowViolation(String fragmentClass, Class<? extends Violation> violationClass) {
                M.p(fragmentClass, "fragmentClass");
                M.p(violationClass, "violationClass");
                Set<Class<? extends Violation>> set = this.mAllowedViolations.get(fragmentClass);
                if (set == null) {
                    set = new LinkedHashSet<>();
                }
                set.add(violationClass);
                this.mAllowedViolations.put(fragmentClass, set);
                return this;
            }
        }
    }

    private FragmentStrictMode() {
    }

    private final Policy getNearestPolicy(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
                M.o(parentFragmentManager, "declaringFragment.parentFragmentManager");
                if (parentFragmentManager.getStrictModePolicy() != null) {
                    Policy strictModePolicy = parentFragmentManager.getStrictModePolicy();
                    M.m(strictModePolicy);
                    return strictModePolicy;
                }
            }
            fragment = fragment.getParentFragment();
        }
        return defaultPolicy;
    }

    private final void handlePolicyViolation(final Policy policy, final Violation violation) {
        Fragment fragment = violation.getFragment();
        final String name = fragment.getClass().getName();
        if (policy.getFlags$fragment_release().contains(Flag.PENALTY_LOG)) {
            Log.d(TAG, "Policy violation in " + name, violation);
        }
        if (policy.getListener$fragment_release() != null) {
            runOnHostThread(fragment, new Runnable() {
                @Override
                public final void run() {
                    FragmentStrictMode.m681handlePolicyViolation$lambda0(FragmentStrictMode.Policy.this, violation);
                }
            });
        }
        if (policy.getFlags$fragment_release().contains(Flag.PENALTY_DEATH)) {
            runOnHostThread(fragment, new Runnable() {
                @Override
                public final void run() {
                    FragmentStrictMode.m682handlePolicyViolation$lambda1(String.this, violation);
                }
            });
        }
    }

    public static final void m681handlePolicyViolation$lambda0(Policy policy, Violation violation) {
        M.p(policy, "$policy");
        M.p(violation, "$violation");
        policy.getListener$fragment_release().onViolation(violation);
    }

    public static final void m682handlePolicyViolation$lambda1(String str, Violation violation) {
        M.p(violation, "$violation");
        Log.e(TAG, "Policy violation with PENALTY_DEATH in " + str, violation);
        throw violation;
    }

    private final void logIfDebuggingEnabled(Violation violation) {
        if (FragmentManager.isLoggingEnabled(3)) {
            Log.d(FragmentManager.TAG, "StrictMode violation in " + violation.getFragment().getClass().getName(), violation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onFragmentReuse(Fragment fragment, String previousFragmentId) {
        M.p(fragment, "fragment");
        M.p(previousFragmentId, "previousFragmentId");
        FragmentReuseViolation fragmentReuseViolation = new FragmentReuseViolation(fragment, previousFragmentId);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(fragmentReuseViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_FRAGMENT_REUSE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), fragmentReuseViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, fragmentReuseViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onFragmentTagUsage(Fragment fragment, ViewGroup viewGroup) {
        M.p(fragment, "fragment");
        FragmentTagUsageViolation fragmentTagUsageViolation = new FragmentTagUsageViolation(fragment, viewGroup);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(fragmentTagUsageViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_FRAGMENT_TAG_USAGE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), fragmentTagUsageViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, fragmentTagUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onGetRetainInstanceUsage(Fragment fragment) {
        M.p(fragment, "fragment");
        GetRetainInstanceUsageViolation getRetainInstanceUsageViolation = new GetRetainInstanceUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(getRetainInstanceUsageViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_RETAIN_INSTANCE_USAGE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), getRetainInstanceUsageViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, getRetainInstanceUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onGetTargetFragmentRequestCodeUsage(Fragment fragment) {
        M.p(fragment, "fragment");
        GetTargetFragmentRequestCodeUsageViolation getTargetFragmentRequestCodeUsageViolation = new GetTargetFragmentRequestCodeUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(getTargetFragmentRequestCodeUsageViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_TARGET_FRAGMENT_USAGE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), getTargetFragmentRequestCodeUsageViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, getTargetFragmentRequestCodeUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onGetTargetFragmentUsage(Fragment fragment) {
        M.p(fragment, "fragment");
        GetTargetFragmentUsageViolation getTargetFragmentUsageViolation = new GetTargetFragmentUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(getTargetFragmentUsageViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_TARGET_FRAGMENT_USAGE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), getTargetFragmentUsageViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, getTargetFragmentUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onSetRetainInstanceUsage(Fragment fragment) {
        M.p(fragment, "fragment");
        SetRetainInstanceUsageViolation setRetainInstanceUsageViolation = new SetRetainInstanceUsageViolation(fragment);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(setRetainInstanceUsageViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_RETAIN_INSTANCE_USAGE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), setRetainInstanceUsageViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, setRetainInstanceUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onSetTargetFragmentUsage(Fragment violatingFragment, Fragment targetFragment, int i10) {
        M.p(violatingFragment, "violatingFragment");
        M.p(targetFragment, "targetFragment");
        SetTargetFragmentUsageViolation setTargetFragmentUsageViolation = new SetTargetFragmentUsageViolation(violatingFragment, targetFragment, i10);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(setTargetFragmentUsageViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(violatingFragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_TARGET_FRAGMENT_USAGE) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, violatingFragment.getClass(), setTargetFragmentUsageViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, setTargetFragmentUsageViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onSetUserVisibleHint(Fragment fragment, boolean z10) {
        M.p(fragment, "fragment");
        SetUserVisibleHintViolation setUserVisibleHintViolation = new SetUserVisibleHintViolation(fragment, z10);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(setUserVisibleHintViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_SET_USER_VISIBLE_HINT) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), setUserVisibleHintViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, setUserVisibleHintViolation);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @o
    public static final void onWrongFragmentContainer(Fragment fragment, ViewGroup container) {
        M.p(fragment, "fragment");
        M.p(container, "container");
        WrongFragmentContainerViolation wrongFragmentContainerViolation = new WrongFragmentContainerViolation(fragment, container);
        FragmentStrictMode fragmentStrictMode = INSTANCE;
        fragmentStrictMode.logIfDebuggingEnabled(wrongFragmentContainerViolation);
        Policy nearestPolicy = fragmentStrictMode.getNearestPolicy(fragment);
        if (nearestPolicy.getFlags$fragment_release().contains(Flag.DETECT_WRONG_FRAGMENT_CONTAINER) && fragmentStrictMode.shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), wrongFragmentContainerViolation.getClass())) {
            fragmentStrictMode.handlePolicyViolation(nearestPolicy, wrongFragmentContainerViolation);
        }
    }

    private final void runOnHostThread(Fragment fragment, Runnable runnable) {
        if (!fragment.isAdded()) {
            runnable.run();
            return;
        }
        Handler handler = fragment.getParentFragmentManager().getHost().getHandler();
        M.o(handler, "fragment.parentFragmentManager.host.handler");
        if (M.g(handler.getLooper(), Looper.myLooper())) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    private final boolean shouldHandlePolicyViolation(Policy policy, Class<? extends Fragment> cls, Class<? extends Violation> cls2) {
        Set<Class<? extends Violation>> set = policy.getMAllowedViolations$fragment_release().get(cls.getName());
        if (set == null) {
            return true;
        }
        if (M.g(cls2.getSuperclass(), Violation.class) || !S.a2(set, cls2.getSuperclass())) {
            return !set.contains(cls2);
        }
        return false;
    }

    public final Policy getDefaultPolicy() {
        return defaultPolicy;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void onPolicyViolation(Violation violation) {
        M.p(violation, "violation");
        logIfDebuggingEnabled(violation);
        Fragment fragment = violation.getFragment();
        Policy nearestPolicy = getNearestPolicy(fragment);
        if (shouldHandlePolicyViolation(nearestPolicy, fragment.getClass(), violation.getClass())) {
            handlePolicyViolation(nearestPolicy, violation);
        }
    }

    public final void setDefaultPolicy(Policy policy) {
        M.p(policy, "<set-?>");
        defaultPolicy = policy;
    }
}
