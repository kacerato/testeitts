package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import androidx.annotation.NonNull;

public class ResolvableApiException extends ApiException {
    public ResolvableApiException(@NonNull Status status) {
        super(status);
    }

    @NonNull
    public PendingIntent getResolution() {
        return getStatus().t();
    }

    public void startResolutionForResult(@NonNull Activity activity, int i10) throws IntentSender.SendIntentException {
        getStatus().y0(activity, i10);
    }
}
