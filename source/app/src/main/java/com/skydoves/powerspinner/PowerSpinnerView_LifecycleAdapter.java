package com.skydoves.powerspinner;

import androidx.lifecycle.GeneratedAdapter;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MethodCallsLogger;

public class PowerSpinnerView_LifecycleAdapter implements GeneratedAdapter {

    public final PowerSpinnerView f83611a;

    public PowerSpinnerView_LifecycleAdapter(PowerSpinnerView powerSpinnerView) {
        this.f83611a = powerSpinnerView;
    }

    @Override
    public void callMethods(LifecycleOwner lifecycleOwner, Lifecycle.Event event, boolean z10, MethodCallsLogger methodCallsLogger) {
        boolean z11 = methodCallsLogger != null;
        if (!z10 && event == Lifecycle.Event.ON_DESTROY) {
            if (!z11 || methodCallsLogger.approveCall("onDestroy", 1)) {
                this.f83611a.onDestroy();
            }
        }
    }
}
