package com.google.android.filament.utils;

import com.google.android.filament.Engine;

public class DeviceUtils {
    public static String a(Engine engine) {
        return nGetGpuDriverInfo(engine.getNativeObject());
    }

    private static native String nGetGpuDriverInfo(long j10);
}
