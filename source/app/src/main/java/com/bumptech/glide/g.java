package com.bumptech.glide;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import java.io.File;
import java.net.URL;

public interface g<T> {
    @NonNull
    @CheckResult
    T d(@Nullable Drawable drawable);

    @NonNull
    @CheckResult
    T e(@Nullable Object obj);

    @NonNull
    @CheckResult
    T j(@Nullable Uri uri);

    @NonNull
    @CheckResult
    T l(@Nullable Bitmap bitmap);

    @NonNull
    @CheckResult
    T load(@Nullable File file);

    @CheckResult
    @Deprecated
    T load(@Nullable URL url);

    @NonNull
    @CheckResult
    T load(@Nullable byte[] bArr);

    @NonNull
    @CheckResult
    T n(@Nullable @DrawableRes @RawRes Integer num);

    @NonNull
    @CheckResult
    T o(@Nullable String str);
}
