package com.android.dex;

public final class DexFormat {
    public static final int API_CURRENT = 26;
    public static final int API_DEFAULT_INTERFACE_METHODS = 24;
    public static final int API_INVOKE_POLYMORPHIC = 26;
    public static final int API_NO_EXTENDED_OPCODES = 13;
    public static final String DEX_IN_JAR_NAME = "classes.dex";
    public static final int ENDIAN_TAG = 305419896;
    public static final String MAGIC_PREFIX = "dex\n";
    public static final String MAGIC_SUFFIX = "\u0000";
    public static final int MAX_MEMBER_IDX = 65535;
    public static final int MAX_TYPE_IDX = 65535;
    public static final String VERSION_CURRENT = "038";
    public static final String VERSION_FOR_API_13 = "035";
    public static final String VERSION_FOR_API_24 = "037";
    public static final String VERSION_FOR_API_26 = "038";

    private DexFormat() {
    }

    public static String apiToMagic(int i10) {
        String str = "038";
        if (i10 < 26 && i10 < 26) {
            str = i10 >= 24 ? VERSION_FOR_API_24 : VERSION_FOR_API_13;
        }
        return MAGIC_PREFIX + str + MAGIC_SUFFIX;
    }

    public static boolean isSupportedDexMagic(byte[] bArr) {
        return magicToApi(bArr) > 0;
    }

    public static int magicToApi(byte[] bArr) {
        if (bArr.length == 8 && bArr[0] == 100 && bArr[1] == 101 && bArr[2] == 120 && bArr[3] == 10 && bArr[7] == 0) {
            String str = "" + ((char) bArr[4]) + ((char) bArr[5]) + ((char) bArr[6]);
            if (str.equals(VERSION_FOR_API_13)) {
                return 13;
            }
            if (str.equals(VERSION_FOR_API_24)) {
                return 24;
            }
            if (str.equals("038") || str.equals("038")) {
                return 26;
            }
        }
        return -1;
    }
}
