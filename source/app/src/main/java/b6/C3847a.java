package b6;

import b3.s;

public class C3847a {
    public static String a(long etaInMiliSeconds) {
        float f10 = ((float) etaInMiliSeconds) / 1000.0f;
        if (f10 < 60.0f) {
            return ((int) f10) + " seconds";
        }
        float f11 = f10 / 60.0f;
        if (f11 < 60.0f) {
            return ((int) f11) + " minutes";
        }
        float f12 = f11 / 60.0f;
        if (f12 >= 24.0f) {
            return ((int) (f12 / 24.0f)) + " days";
        }
        int i10 = (int) f12;
        return i10 + s.f32937c + ((int) ((f12 - i10) * 60.0f)) + " hours";
    }

    public static String b(long downloadedBytesPerSecond) {
        float f10 = ((float) downloadedBytesPerSecond) / 1024.0f;
        if (f10 < 1024.0f) {
            return ((int) f10) + " KBs/s";
        }
        float f11 = f10 / 1024.0f;
        if (f11 < 1024.0f) {
            return ((int) f11) + " MBs/s";
        }
        float f12 = f11 / 1024.0f;
        if (f12 < 1024.0f) {
            return ((int) f12) + " GBs/s";
        }
        return ((int) (f12 / 1024.0f)) + " TBs/s";
    }
}
