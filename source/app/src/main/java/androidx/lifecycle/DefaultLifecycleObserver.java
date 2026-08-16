package androidx.lifecycle;

public interface DefaultLifecycleObserver extends FullLifecycleObserver {
    @Override
    default void onCreate(LifecycleOwner lifecycleOwner) {
    }

    @Override
    default void onDestroy(LifecycleOwner lifecycleOwner) {
    }

    @Override
    default void onPause(LifecycleOwner lifecycleOwner) {
    }

    @Override
    default void onResume(LifecycleOwner lifecycleOwner) {
    }

    @Override
    default void onStart(LifecycleOwner lifecycleOwner) {
    }

    @Override
    default void onStop(LifecycleOwner lifecycleOwner) {
    }
}
