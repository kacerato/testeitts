package com.itsmagic.engine.Engines.Sound.Imported;

import com.google.gson.annotations.Expose;

public class ImportedAudioHeader {

    public static final int f81438a = 3;

    @Expose
    public float durationSeconds;

    @Expose
    public int pcmFrames;

    @Expose
    public int pcmSampleRate;

    @Expose
    public long sourceFrames;

    @Expose
    public long sourceLastModified;

    @Expose
    public long sourceLength;

    @Expose
    public int version = 3;

    @Expose
    public String encoding = "pcm_s16le_mono";

    @Expose
    public boolean trimSilenceFromBeginEnd = true;
}
