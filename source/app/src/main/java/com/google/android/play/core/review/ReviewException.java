package com.google.android.play.core.review;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Locale;
import q2.b;

public class ReviewException extends ApiException {
    public ReviewException(int i10) {
        super(new Status(i10, String.format(Locale.getDefault(), "Review Error(%d): %s", Integer.valueOf(i10), b.a(i10))));
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }
}
