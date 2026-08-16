package androidx.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ReportFragment;

public class ProcessLifecycleOwner implements LifecycleOwner {
    static final long TIMEOUT_MS = 700;
    private static final ProcessLifecycleOwner sInstance = new ProcessLifecycleOwner();
    private Handler mHandler;
    private int mStartedCounter = 0;
    private int mResumedCounter = 0;
    private boolean mPauseSent = true;
    private boolean mStopSent = true;
    private final LifecycleRegistry mRegistry = new LifecycleRegistry(this);
    private Runnable mDelayedPauseRunnable = new Runnable() {
        @Override
        public void run() {
            ProcessLifecycleOwner.this.dispatchPauseIfNeeded();
            ProcessLifecycleOwner.this.dispatchStopIfNeeded();
        }
    };
    ReportFragment.ActivityInitializationListener mInitializationListener = new ReportFragment.ActivityInitializationListener() {
        @Override
        public void onCreate() {
        }

        @Override
        public void onResume() {
            ProcessLifecycleOwner.this.activityResumed();
        }

        @Override
        public void onStart() {
            ProcessLifecycleOwner.this.activityStarted();
        }
    };

    private ProcessLifecycleOwner() {
    }

    public static LifecycleOwner get() {
        return sInstance;
    }

    public static void init(Context context) {
        sInstance.attach(context);
    }

    public void activityPaused() {
        int i10 = this.mResumedCounter - 1;
        this.mResumedCounter = i10;
        if (i10 == 0) {
            this.mHandler.postDelayed(this.mDelayedPauseRunnable, TIMEOUT_MS);
        }
    }

    public void activityResumed() {
        int i10 = this.mResumedCounter + 1;
        this.mResumedCounter = i10;
        if (i10 == 1) {
            if (!this.mPauseSent) {
                this.mHandler.removeCallbacks(this.mDelayedPauseRunnable);
            } else {
                this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME);
                this.mPauseSent = false;
            }
        }
    }

    public void activityStarted() {
        int i10 = this.mStartedCounter + 1;
        this.mStartedCounter = i10;
        if (i10 == 1 && this.mStopSent) {
            this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START);
            this.mStopSent = false;
        }
    }

    public void activityStopped() {
        this.mStartedCounter--;
        dispatchStopIfNeeded();
    }

    public void attach(Context context) {
        this.mHandler = new Handler();
        this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE);
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() {
            @Override
            public void onActivityCreated(Activity activity, Bundle bundle) {
                if (Build.VERSION.SDK_INT < 29) {
                    ReportFragment.get(activity).setProcessListener(ProcessLifecycleOwner.this.mInitializationListener);
                }
            }

            @Override
            public void onActivityPaused(Activity activity) {
                ProcessLifecycleOwner.this.activityPaused();
            }

            public void onActivityPreCreated(Activity activity, Bundle bundle) {
                activity.registerActivityLifecycleCallbacks(new EmptyActivityLifecycleCallbacks() {
                    public void onActivityPostResumed(Activity activity2) {
                        ProcessLifecycleOwner.this.activityResumed();
                    }

                    public void onActivityPostStarted(Activity activity2) {
                        ProcessLifecycleOwner.this.activityStarted();
                    }
                });
            }

            @Override
            public void onActivityStopped(Activity activity) {
                ProcessLifecycleOwner.this.activityStopped();
            }
        });
    }

    public void dispatchPauseIfNeeded() {
        if (this.mResumedCounter == 0) {
            this.mPauseSent = true;
            this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE);
        }
    }

    public void dispatchStopIfNeeded() {
        if (this.mStartedCounter == 0 && this.mPauseSent) {
            this.mRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP);
            this.mStopSent = true;
        }
    }

    @Override
    public Lifecycle getLifecycle() {
        return this.mRegistry;
    }
}
