package com.google.android.filament.utils;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class ImageDiff {

    public static class Result {

        public a f60390a;

        public long f60391b;

        public float[] f60392c;

        public float[] f60393d;

        public int[] f60394e;

        public Bitmap f60395f;

        public enum a {
            PASSED,
            SIZE_MISMATCH,
            PIXEL_DIFFERENCE
        }
    }

    public static class a {

        @NonNull
        public b f60396a = b.LEAF;

        @NonNull
        public c f60397b = c.RGBA;

        public int f60398c = 15;

        public float f60399d = 0.0f;

        public float f60400e = 0.0f;
    }

    public enum b {
        LEAF,
        AND,
        OR
    }

    public enum c {
        RGBA,
        BGRA
    }

    @NonNull
    public static Result a(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, @NonNull String str, @Nullable Bitmap bitmap3) {
        return nCompareJson(bitmap, bitmap2, str, bitmap3);
    }

    @NonNull
    public static Result b(@NonNull Bitmap bitmap, @NonNull Bitmap bitmap2, @NonNull a aVar, @Nullable Bitmap bitmap3) {
        return nCompareBasic(bitmap, bitmap2, aVar.f60396a.ordinal(), aVar.f60397b.ordinal(), aVar.f60398c, aVar.f60399d, aVar.f60400e, bitmap3);
    }

    private static native Result nCompareBasic(Bitmap bitmap, Bitmap bitmap2, int i10, int i11, int i12, float f10, float f11, Bitmap bitmap3);

    private static native Result nCompareJson(Bitmap bitmap, Bitmap bitmap2, String str, Bitmap bitmap3);
}
