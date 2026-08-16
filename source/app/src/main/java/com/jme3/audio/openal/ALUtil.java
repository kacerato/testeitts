package com.jme3.audio.openal;

public final class ALUtil {
    private ALUtil() {
    }

    public static void checkALError(AL al2) {
        int alGetError = al2.alGetError();
        if (alGetError == 0) {
            return;
        }
        throw new RuntimeException("OpenAL Error: " + getALErrorMessage(alGetError));
    }

    public static String getALErrorMessage(int i10) {
        if (i10 == 0) {
            return "No Error";
        }
        switch (i10) {
            case 40961:
                return "Invalid Name";
            case 40962:
                return "Invalid Enum";
            case 40963:
                return "Invalid Value";
            case 40964:
                return "Invalid Operation";
            case 40965:
                return "Out of Memory";
            default:
                return "Unknown Error Code: " + i10;
        }
    }
}
