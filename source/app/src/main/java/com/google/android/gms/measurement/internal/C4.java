package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Objects;

public final class C4 implements l7 {

    public final C12260b5 f62579a;

    public C4(C12260b5 c12260b5) {
        Objects.requireNonNull(c12260b5);
        this.f62579a = c12260b5;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f62579a.p("auto", "_err", bundle);
        } else {
            this.f62579a.w("auto", "_err", bundle, str);
        }
    }
}
