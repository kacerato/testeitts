package com.jme3.audio.openal;

import java.nio.IntBuffer;

public interface ALC {
    public static final int ALC_ALL_ATTRIBUTES = 4099;
    public static final int ALC_ALL_DEVICES_SPECIFIER = 4115;
    public static final int ALC_ATTRIBUTES_SIZE = 4098;
    public static final int ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER = 785;
    public static final int ALC_CAPTURE_DEVICE_SPECIFIER = 784;
    public static final int ALC_CAPTURE_SAMPLES = 786;
    public static final int ALC_CONNECTED = 787;
    public static final int ALC_DEFAULT_ALL_DEVICES_SPECIFIER = 4114;
    public static final int ALC_DEFAULT_DEVICE_SPECIFIER = 4100;
    public static final int ALC_DEVICE_SPECIFIER = 4101;
    public static final int ALC_EXTENSIONS = 4102;
    public static final int ALC_INVALID_CONTEXT = 40962;
    public static final int ALC_INVALID_DEVICE = 40961;
    public static final int ALC_INVALID_ENUM = 40963;
    public static final int ALC_INVALID_VALUE = 40964;
    public static final int ALC_MAJOR_VERSION = 4096;
    public static final int ALC_MINOR_VERSION = 4097;
    public static final int ALC_NO_ERROR = 0;
    public static final int ALC_OUT_OF_MEMORY = 40965;

    void alcDevicePauseSOFT();

    void alcDeviceResumeSOFT();

    void alcGetInteger(int i10, IntBuffer intBuffer, int i11);

    String alcGetString(int i10);

    boolean alcIsExtensionPresent(String str);

    void createALC();

    void destroyALC();

    boolean isCreated();
}
