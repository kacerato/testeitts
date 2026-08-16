package com.google.android.material.timepicker;

import androidx.annotation.IntRange;
import androidx.annotation.StringRes;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public interface h {

    @Retention(RetentionPolicy.SOURCE)
    public @interface a {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface b {
    }

    void a(int i10);

    void b(int i10, int i11, @IntRange(from = 0) int i12);

    void c(String[] strArr, @StringRes int i10);

    void d(float f10);
}
