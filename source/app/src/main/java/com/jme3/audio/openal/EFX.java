package com.jme3.audio.openal;

import java.nio.IntBuffer;

public interface EFX {
    public static final int ALC_EFX_MAJOR_VERSION = 131073;
    public static final int ALC_EFX_MINOR_VERSION = 131074;
    public static final String ALC_EXT_EFX_NAME = "ALC_EXT_EFX";
    public static final int ALC_MAX_AUXILIARY_SENDS = 131075;
    public static final int AL_AUXILIARY_SEND_FILTER = 131078;
    public static final int AL_BANDPASS_GAIN = 1;
    public static final int AL_BANDPASS_GAINHF = 3;
    public static final int AL_BANDPASS_GAINLF = 2;
    public static final int AL_DIRECT_FILTER = 131077;
    public static final int AL_DIRECT_FILTER_GAINHF_AUTO = 131082;
    public static final int AL_EFFECTSLOT_EFFECT = 1;
    public static final int AL_EFFECT_REVERB = 1;
    public static final int AL_EFFECT_TYPE = 32769;
    public static final int AL_FILTER_BANDPASS = 3;
    public static final int AL_FILTER_HIGHPASS = 2;
    public static final int AL_FILTER_LOWPASS = 1;
    public static final int AL_FILTER_NULL = 0;
    public static final int AL_FILTER_TYPE = 32769;
    public static final int AL_HIGHPASS_GAIN = 1;
    public static final int AL_HIGHPASS_GAINLF = 2;
    public static final int AL_LOWPASS_GAIN = 1;
    public static final int AL_LOWPASS_GAINHF = 2;
    public static final int AL_REVERB_AIR_ABSORPTION_GAINHF = 11;
    public static final int AL_REVERB_DECAY_HFLIMIT = 13;
    public static final int AL_REVERB_DECAY_HFRATIO = 6;
    public static final int AL_REVERB_DECAY_TIME = 5;
    public static final int AL_REVERB_DENSITY = 1;
    public static final int AL_REVERB_DIFFUSION = 2;
    public static final int AL_REVERB_GAIN = 3;
    public static final int AL_REVERB_GAINHF = 4;
    public static final int AL_REVERB_LATE_REVERB_DELAY = 10;
    public static final int AL_REVERB_LATE_REVERB_GAIN = 9;
    public static final int AL_REVERB_REFLECTIONS_DELAY = 8;
    public static final int AL_REVERB_REFLECTIONS_GAIN = 7;
    public static final int AL_REVERB_ROOM_ROLLOFF_FACTOR = 12;

    void alAuxiliaryEffectSloti(int i10, int i11, int i12);

    void alDeleteAuxiliaryEffectSlots(int i10, IntBuffer intBuffer);

    void alDeleteEffects(int i10, IntBuffer intBuffer);

    void alDeleteFilters(int i10, IntBuffer intBuffer);

    void alEffectf(int i10, int i11, float f10);

    void alEffecti(int i10, int i11, int i12);

    void alFilterf(int i10, int i11, float f10);

    void alFilteri(int i10, int i11, int i12);

    void alGenAuxiliaryEffectSlots(int i10, IntBuffer intBuffer);

    void alGenEffects(int i10, IntBuffer intBuffer);

    void alGenFilters(int i10, IntBuffer intBuffer);
}
