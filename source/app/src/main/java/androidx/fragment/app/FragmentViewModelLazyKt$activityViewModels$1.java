package androidx.fragment.app;

import androidx.lifecycle.ViewModelStore;
import kotlin.jvm.internal.M;
import kotlin.jvm.internal.O;

public final class FragmentViewModelLazyKt$activityViewModels$1 extends O implements Mf.a<ViewModelStore> {
    final Fragment $this_activityViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentViewModelLazyKt$activityViewModels$1(Fragment fragment) {
        super(0);
        this.$this_activityViewModels = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public final ViewModelStore invoke() {
        FragmentActivity requireActivity = this.$this_activityViewModels.requireActivity();
        M.h(requireActivity, "requireActivity()");
        ViewModelStore viewModelStore = requireActivity.getViewModelStore();
        M.h(viewModelStore, "requireActivity().viewModelStore");
        return viewModelStore;
    }
}
