package com.jme3.audio.openal;

import com.jme3.audio.AudioBuffer;
import com.jme3.audio.AudioData;
import com.jme3.audio.AudioParam;
import com.jme3.audio.AudioRenderer;
import com.jme3.audio.AudioSource;
import com.jme3.audio.AudioStream;
import com.jme3.audio.BandPassFilter;
import com.jme3.audio.Environment;
import com.jme3.audio.Filter;
import com.jme3.audio.HighPassFilter;
import com.jme3.audio.Listener;
import com.jme3.audio.ListenerParam;
import com.jme3.audio.LowPassFilter;
import com.jme3.math.Vector3f;
import com.jme3.util.BufferUtils;
import com.jme3.util.NativeObjectManager;
import com.jme3.util.TempVars;
import java.lang.Thread;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ALAudioRenderer implements AudioRenderer, Runnable {
    static final boolean $assertionsDisabled = false;
    private static final int BUFFER_SIZE = 35280;
    private static final int MAX_NUM_CHANNELS = 64;
    private static final int STREAMING_BUFFER_COUNT = 5;
    private static final String THREAD_NAME = "jME3 Audio Decoder";
    private static final float UPDATE_RATE = 0.05f;
    private static final Logger logger = Logger.getLogger(ALAudioRenderer.class.getName());

    private final AL f81562al;
    private final ALC alc;
    private AudioSource[] channelSources;
    private int[] channels;
    private final EFX efx;
    private Environment environment;
    private Listener listener;
    private final NativeObjectManager objManager = new NativeObjectManager();

    private IntBuffer f81564ib = BufferUtils.createIntBuffer(1);

    private final FloatBuffer f81563fb = BufferUtils.createVector3Buffer(2);
    private final ByteBuffer nativeBuf = BufferUtils.createByteBuffer(BUFFER_SIZE);
    private final byte[] arrayBuf = new byte[BUFFER_SIZE];
    private int nextChannelIndex = 0;
    private final ArrayDeque<Integer> freeChannels = new ArrayDeque<>();
    private int reverbFx = -1;
    private int reverbFxSlot = -1;
    private boolean audioDisabled = false;
    private boolean supportEfx = false;
    private boolean supportPauseDevice = false;
    private boolean supportDisconnect = false;
    private final Thread decoderThread = new Thread(this, THREAD_NAME);
    private final Object threadLock = new Object();

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$jme3$audio$AudioParam;
        static final int[] $SwitchMap$com$jme3$audio$ListenerParam;

        static {
            int[] iArr = new int[ListenerParam.values().length];
            $SwitchMap$com$jme3$audio$ListenerParam = iArr;
            try {
                iArr[ListenerParam.Position.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jme3$audio$ListenerParam[ListenerParam.Rotation.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$jme3$audio$ListenerParam[ListenerParam.Velocity.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$jme3$audio$ListenerParam[ListenerParam.Volume.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[AudioParam.values().length];
            $SwitchMap$com$jme3$audio$AudioParam = iArr2;
            try {
                iArr2[AudioParam.Position.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.Velocity.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.MaxDistance.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.RefDistance.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.IsPositional.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.Direction.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.InnerAngle.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.OuterAngle.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.IsDirectional.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.DryFilter.ordinal()] = 10;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.ReverbFilter.ordinal()] = 11;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.ReverbEnabled.ordinal()] = 12;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.Looping.ordinal()] = 13;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.Volume.ordinal()] = 14;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                $SwitchMap$com$jme3$audio$AudioParam[AudioParam.Pitch.ordinal()] = 15;
            } catch (NoSuchFieldError unused19) {
            }
        }
    }

    public ALAudioRenderer(AL al2, ALC alc, EFX efx) {
        this.f81562al = al2;
        this.alc = alc;
        this.efx = efx;
    }

    private void applyListenerPosition(Listener listener) {
        Vector3f location = listener.getLocation();
        this.f81562al.alListener3f(4100, location.f81611x, location.f81612y, location.f81613z);
    }

    private void applyListenerRotation(Listener listener) {
        TempVars tempVars = TempVars.get();
        Vector3f direction = listener.getDirection(tempVars.vect1);
        Vector3f up = listener.getUp(tempVars.vect2);
        this.f81563fb.rewind();
        this.f81563fb.put(direction.f81611x).put(direction.f81612y).put(direction.f81613z);
        this.f81563fb.put(up.f81611x).put(up.f81612y).put(up.f81613z);
        this.f81563fb.flip();
        this.f81562al.alListener(4111, this.f81563fb);
        tempVars.release();
    }

    private void applyListenerVelocity(Listener listener) {
        Vector3f velocity = listener.getVelocity();
        this.f81562al.alListener3f(4102, velocity.f81611x, velocity.f81612y, velocity.f81613z);
    }

    private void applyListenerVolume(Listener listener) {
        this.f81562al.alListenerf(4106, listener.getVolume());
    }

    private void applySourceDirectionalState(int i10, AudioSource audioSource) {
        if (!audioSource.isDirectional()) {
            this.f81562al.alSourcef(i10, 4097, 360.0f);
            this.f81562al.alSourcef(i10, 4098, 360.0f);
            this.f81562al.alSourcef(i10, AL.AL_CONE_OUTER_GAIN, 1.0f);
        } else {
            Vector3f direction = audioSource.getDirection();
            this.f81562al.alSource3f(i10, 4101, direction.f81611x, direction.f81612y, direction.f81613z);
            this.f81562al.alSourcef(i10, 4097, audioSource.getInnerAngle());
            this.f81562al.alSourcef(i10, 4098, audioSource.getOuterAngle());
            this.f81562al.alSourcef(i10, AL.AL_CONE_OUTER_GAIN, 0.0f);
        }
    }

    private void applySourceDryFilter(int i10, AudioSource audioSource) {
        int i11;
        if (this.supportEfx) {
            if (audioSource.getDryFilter() != null) {
                Filter dryFilter = audioSource.getDryFilter();
                if (dryFilter.isUpdateNeeded()) {
                    updateFilter(dryFilter);
                }
                i11 = dryFilter.getId();
            } else {
                i11 = 0;
            }
            this.f81562al.alSourcei(i10, EFX.AL_DIRECT_FILTER, i11);
        }
    }

    private void applySourceLooping(int i10, AudioSource audioSource, boolean z10) {
        this.f81562al.alSourcei(i10, 4103, audioSource.getAudioData() instanceof AudioStream ? 0 : (z10 || !audioSource.isLooping()) ? 0 : 1);
    }

    private void applySourcePositionalState(int i10, AudioSource audioSource) {
        if (!audioSource.isPositional()) {
            this.f81562al.alSource3f(i10, 4100, 0.0f, 0.0f, 0.0f);
            this.f81562al.alSource3f(i10, 4102, 0.0f, 0.0f, 0.0f);
            this.f81562al.alSourcei(i10, 514, 1);
            if (this.supportEfx) {
                this.f81562al.alSource3i(i10, EFX.AL_AUXILIARY_SEND_FILTER, 0, 0, 0);
                return;
            }
            return;
        }
        Vector3f position = audioSource.getPosition();
        Vector3f velocity = audioSource.getVelocity();
        this.f81562al.alSource3f(i10, 4100, position.f81611x, position.f81612y, position.f81613z);
        this.f81562al.alSource3f(i10, 4102, velocity.f81611x, velocity.f81612y, velocity.f81613z);
        this.f81562al.alSourcef(i10, AL.AL_REFERENCE_DISTANCE, audioSource.getRefDistance());
        this.f81562al.alSourcef(i10, AL.AL_MAX_DISTANCE, audioSource.getMaxDistance());
        this.f81562al.alSourcei(i10, 514, 0);
        if (this.supportEfx) {
            if (audioSource.isReverbEnabled()) {
                applySourceReverbFilter(i10, audioSource);
            } else {
                this.f81562al.alSource3i(i10, EFX.AL_AUXILIARY_SEND_FILTER, 0, 0, 0);
            }
        }
    }

    private void applySourceReverbFilter(int i10, AudioSource audioSource) {
        int i11;
        if (this.supportEfx) {
            if (!audioSource.isReverbEnabled() || audioSource.getReverbFilter() == null) {
                i11 = 0;
            } else {
                Filter reverbFilter = audioSource.getReverbFilter();
                if (reverbFilter.isUpdateNeeded()) {
                    updateFilter(reverbFilter);
                }
                i11 = reverbFilter.getId();
            }
            this.f81562al.alSource3i(i10, EFX.AL_AUXILIARY_SEND_FILTER, this.reverbFxSlot, 0, i11);
        }
    }

    private void attachAudioToSource(int i10, AudioData audioData, boolean z10) {
        if (audioData instanceof AudioBuffer) {
            attachBufferToSource(i10, (AudioBuffer) audioData);
        } else {
            if (!(audioData instanceof AudioStream)) {
                throw new UnsupportedOperationException();
            }
            attachStreamToSource(i10, (AudioStream) audioData, z10);
        }
    }

    private void attachBufferToSource(int i10, AudioBuffer audioBuffer) {
        this.f81562al.alSourcei(i10, 4105, audioBuffer.getId());
    }

    private void attachStreamToSource(int i10, AudioStream audioStream, boolean z10) {
        if (audioStream.isEOF()) {
            audioStream.setTime(0.0f);
        }
        boolean z11 = false;
        for (int i11 : audioStream.getIds()) {
            boolean fillBuffer = fillBuffer(audioStream, i11);
            if (!fillBuffer && !audioStream.isEOF()) {
                throw new AssertionError();
            }
            if (!fillBuffer && z10) {
                audioStream.setTime(0.0f);
                fillBuffer = fillBuffer(audioStream, i11);
                if (!fillBuffer) {
                    throw new IllegalStateException("Looping streaming source was rewound but could not be filled");
                }
            }
            if (fillBuffer) {
                this.f81564ib.clear().limit(1);
                this.f81564ib.put(i11).flip();
                this.f81562al.alSourceQueueBuffers(i10, 1, this.f81564ib);
                z11 = true;
            }
        }
        if (!z11) {
            throw new IllegalStateException("No valid data could be read from stream");
        }
    }

    private void checkDead() {
        if (this.decoderThread.getState() == Thread.State.TERMINATED) {
            throw new IllegalStateException("Decoding thread is terminated");
        }
    }

    private void checkDevice() {
        if (isDeviceDisconnected()) {
            logger.log(Level.WARNING, "Audio device disconnected! Attempting to restart audio renderer...");
            restartAudioRenderer();
        }
    }

    private void clearChannel(int i10) {
        AudioSource audioSource = this.channelSources[i10];
        if (audioSource != null) {
            int i11 = this.channels[i10];
            this.f81562al.alSourceStop(i11);
            this.f81562al.alSourcei(i11, 4105, 0);
            if (this.supportEfx) {
                if (audioSource.getDryFilter() != null) {
                    this.f81562al.alSourcei(i11, EFX.AL_DIRECT_FILTER, 0);
                }
                if (audioSource.isPositional() && audioSource.isReverbEnabled()) {
                    this.f81562al.alSource3i(i11, EFX.AL_AUXILIARY_SEND_FILTER, 0, 0, 0);
                }
            }
            this.channelSources[i10] = null;
        }
    }

    private AudioSource.Status convertStatus(int i10) {
        switch (i10) {
            case 4113:
            case 4116:
                return AudioSource.Status.Stopped;
            case 4114:
                return AudioSource.Status.Playing;
            case 4115:
                return AudioSource.Status.Paused;
            default:
                throw new UnsupportedOperationException("Unrecognized OpenAL state: " + i10);
        }
    }

    private void destroyOpenAL() {
        if (this.audioDisabled) {
            return;
        }
        int i10 = 0;
        while (true) {
            AudioSource[] audioSourceArr = this.channelSources;
            if (i10 >= audioSourceArr.length) {
                break;
            }
            if (audioSourceArr[i10] != null) {
                clearChannel(i10);
            }
            i10++;
        }
        this.f81564ib.clear();
        this.f81564ib.put(this.channels);
        this.f81564ib.flip();
        this.f81562al.alDeleteSources(this.channels.length, this.f81564ib);
        this.objManager.deleteAllObjects(this);
        if (this.supportEfx) {
            if (this.reverbFx != -1) {
                this.f81564ib.clear().limit(1);
                this.f81564ib.put(0, this.reverbFx);
                this.efx.alDeleteEffects(1, this.f81564ib);
                this.reverbFx = -1;
            }
            if (this.reverbFxSlot != -1) {
                this.f81564ib.clear().limit(1);
                this.f81564ib.put(0, this.reverbFxSlot);
                this.efx.alDeleteAuxiliaryEffectSlots(1, this.f81564ib);
                this.reverbFxSlot = -1;
            }
        }
        this.channels = null;
        this.channelSources = null;
        this.freeChannels.clear();
        this.nextChannelIndex = 0;
        this.alc.destroyALC();
        logger.info("OpenAL context destroyed.");
    }

    private void enumerateAvailableChannels() {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (int i11 = 0; i11 < 64; i11++) {
            int alGenSources = this.f81562al.alGenSources();
            if (this.f81562al.alGetError() != 0) {
                break;
            }
            arrayList.add(Integer.valueOf(alGenSources));
        }
        this.channels = new int[arrayList.size()];
        while (true) {
            int[] iArr = this.channels;
            if (i10 >= iArr.length) {
                this.f81564ib = BufferUtils.createIntBuffer(iArr.length);
                this.channelSources = new AudioSource[this.channels.length];
                return;
            } else {
                iArr[i10] = ((Integer) arrayList.get(i10)).intValue();
                i10++;
            }
        }
    }

    private boolean fillBuffer(AudioStream audioStream, int i10) {
        int readSamples;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.arrayBuf;
            if (i11 >= bArr.length || (readSamples = audioStream.readSamples(bArr, i11, bArr.length - i11)) <= 0) {
                break;
            }
            i11 += readSamples;
        }
        if (i11 == 0) {
            return false;
        }
        this.nativeBuf.clear();
        this.nativeBuf.put(this.arrayBuf, 0, i11);
        this.nativeBuf.flip();
        this.f81562al.alBufferData(i10, getOpenALFormat(audioStream), this.nativeBuf, i11, audioStream.getSampleRate());
        return true;
    }

    private boolean fillStreamingSource(int i10, AudioStream audioStream, boolean z10) {
        int alGetSourcei = this.f81562al.alGetSourcei(i10, 4118);
        int i11 = 0;
        int i12 = 0;
        boolean z11 = false;
        while (i11 < alGetSourcei) {
            this.f81564ib.clear().limit(1);
            this.f81562al.alSourceUnqueueBuffers(i10, 1, this.f81564ib);
            int i13 = this.f81564ib.get(0);
            i12 += BUFFER_SIZE;
            boolean fillBuffer = fillBuffer(audioStream, i13);
            if (!fillBuffer && !audioStream.isEOF()) {
                throw new AssertionError();
            }
            if (!fillBuffer && z10) {
                audioStream.setTime(0.0f);
                fillBuffer = fillBuffer(audioStream, i13);
                if (!fillBuffer) {
                    throw new IllegalStateException("Looping streaming source was rewound but could not be filled");
                }
            }
            if (!fillBuffer) {
                break;
            }
            this.f81564ib.clear().limit(1);
            this.f81564ib.put(0, i13);
            this.f81562al.alSourceQueueBuffers(i10, 1, this.f81564ib);
            i11++;
            z11 = true;
        }
        audioStream.setUnqueuedBufferBytes(audioStream.getUnqueuedBufferBytes() + i12);
        return z11;
    }

    private void freeChannel(int i10) {
        int i11 = this.nextChannelIndex;
        if (i10 == i11 - 1) {
            this.nextChannelIndex = i11 - 1;
        } else {
            this.freeChannels.add(Integer.valueOf(i10));
        }
    }

    private int getOpenALFormat(AudioData audioData) {
        int channels = audioData.getChannels();
        int bitsPerSample = audioData.getBitsPerSample();
        if (channels == 1) {
            if (bitsPerSample == 8) {
                return 4352;
            }
            if (bitsPerSample == 16) {
                return 4353;
            }
        } else if (channels == 2) {
            if (bitsPerSample == 8) {
                return 4354;
            }
            if (bitsPerSample == 16) {
                return AL.AL_FORMAT_STEREO16;
            }
        }
        throw new UnsupportedOperationException("Unsupported audio format: " + channels + " channels, " + bitsPerSample + " bits per sample.");
    }

    private void initEfx() {
        boolean alcIsExtensionPresent = this.alc.alcIsExtensionPresent(EFX.ALC_EXT_EFX_NAME);
        this.supportEfx = alcIsExtensionPresent;
        if (!alcIsExtensionPresent) {
            logger.log(Level.WARNING, "OpenAL EFX not available! Audio effects won't work.");
            return;
        }
        this.f81564ib.clear().limit(1);
        this.alc.alcGetInteger(EFX.ALC_EFX_MAJOR_VERSION, this.f81564ib, 1);
        int i10 = this.f81564ib.get(0);
        this.f81564ib.clear().limit(1);
        this.alc.alcGetInteger(EFX.ALC_EFX_MINOR_VERSION, this.f81564ib, 1);
        int i11 = this.f81564ib.get(0);
        Logger logger2 = logger;
        Level level = Level.INFO;
        logger2.log(level, "Audio effect extension version: {0}.{1}", new Object[]{Integer.valueOf(i10), Integer.valueOf(i11)});
        this.f81564ib.clear().limit(1);
        this.alc.alcGetInteger(EFX.ALC_MAX_AUXILIARY_SENDS, this.f81564ib, 1);
        logger2.log(level, "Audio max auxiliary sends: {0}", Integer.valueOf(this.f81564ib.get(0)));
        this.f81564ib.clear().limit(1);
        this.efx.alGenAuxiliaryEffectSlots(1, this.f81564ib);
        this.reverbFxSlot = this.f81564ib.get(0);
        this.f81564ib.clear().limit(1);
        this.efx.alGenEffects(1, this.f81564ib);
        int i12 = this.f81564ib.get(0);
        this.reverbFx = i12;
        this.efx.alEffecti(i12, 32769, 1);
        this.efx.alAuxiliaryEffectSloti(this.reverbFxSlot, 1, this.reverbFx);
    }

    private void initOpenAL() {
        try {
            if (!this.alc.isCreated()) {
                this.alc.createALC();
            }
            enumerateAvailableChannels();
            printAudioRendererInfo();
            boolean alcIsExtensionPresent = this.alc.alcIsExtensionPresent("ALC_SOFT_pause_device");
            this.supportPauseDevice = alcIsExtensionPresent;
            if (!alcIsExtensionPresent) {
                logger.log(Level.WARNING, "Pausing audio device not supported (ALC_SOFT_pause_device).");
            }
            boolean alcIsExtensionPresent2 = this.alc.alcIsExtensionPresent("ALC_EXT_disconnect");
            this.supportDisconnect = alcIsExtensionPresent2;
            if (!alcIsExtensionPresent2) {
                logger.log(Level.INFO, "Device disconnect detection not supported (ALC_EXT_disconnect).");
            }
            initEfx();
        } catch (Exception e10) {
            logger.log(Level.SEVERE, "Failed to load audio library (OpenAL). Audio will be disabled.", (Throwable) e10);
            this.audioDisabled = true;
        }
    }

    private boolean isDeviceDisconnected() {
        if (this.audioDisabled || !this.supportDisconnect) {
            return false;
        }
        this.f81564ib.clear().limit(1);
        this.alc.alcGetInteger(ALC.ALC_CONNECTED, this.f81564ib, 1);
        return this.f81564ib.get(0) == 0;
    }

    private int newChannel() {
        if (!this.freeChannels.isEmpty()) {
            return this.freeChannels.removeFirst().intValue();
        }
        int i10 = this.nextChannelIndex;
        if (i10 >= this.channels.length) {
            return -1;
        }
        this.nextChannelIndex = i10 + 1;
        return i10;
    }

    private void printAudioRendererInfo() {
        logger.log(Level.INFO, "Audio Renderer Information\n * Device: {0}\n * Vendor: {1}\n * Renderer: {2}\n * Version: {3}\n * Supported channels: {4}\n * ALC extensions: {5}\n * AL extensions: {6}", new Object[]{this.alc.alcGetString(4101), this.f81562al.alGetString(AL.AL_VENDOR), this.f81562al.alGetString(AL.AL_RENDERER), this.f81562al.alGetString(AL.AL_VERSION), Integer.valueOf(this.channels.length), this.alc.alcGetString(4102), this.f81562al.alGetString(AL.AL_EXTENSIONS)});
    }

    private void restartAudioRenderer() {
        Listener listener = this.listener;
        Environment environment = this.environment;
        destroyOpenAL();
        initOpenAL();
        if (this.audioDisabled) {
            logger.severe("Audio remained disabled after attempting restart.");
            return;
        }
        if (listener != null) {
            setListener(listener);
        }
        if (environment != null) {
            setEnvironment(environment);
        }
        logger.warning("Audio renderer restarted. Application may need to re-play active sounds.");
    }

    private void setListenerParams(Listener listener) {
        applyListenerPosition(listener);
        applyListenerRotation(listener);
        applyListenerVelocity(listener);
        applyListenerVolume(listener);
    }

    private void setSourceParams(int i10, AudioSource audioSource, boolean z10) {
        this.f81562al.alSourcef(i10, 4106, audioSource.getVolume());
        this.f81562al.alSourcef(i10, 4099, audioSource.getPitch());
        this.f81562al.alSourcef(i10, AL.AL_SEC_OFFSET, audioSource.getTimeOffset());
        applySourceLooping(i10, audioSource, z10);
        applySourcePositionalState(i10, audioSource);
        applySourceDirectionalState(i10, audioSource);
        applySourceDryFilter(i10, audioSource);
    }

    private void updateAudioBuffer(AudioBuffer audioBuffer) {
        int id2 = audioBuffer.getId();
        if (audioBuffer.getId() == -1) {
            this.f81564ib.clear().limit(1);
            this.f81562al.alGenBuffers(1, this.f81564ib);
            id2 = this.f81564ib.get(0);
            audioBuffer.setId(id2);
            this.objManager.registerObject(audioBuffer);
        }
        ByteBuffer data = audioBuffer.getData();
        data.clear();
        int openALFormat = getOpenALFormat(audioBuffer);
        int sampleRate = audioBuffer.getSampleRate();
        this.f81562al.alBufferData(id2, openALFormat, data, data.capacity(), sampleRate);
        audioBuffer.clearUpdateNeeded();
    }

    private void updateAudioData(AudioData audioData) {
        if (audioData instanceof AudioBuffer) {
            updateAudioBuffer((AudioBuffer) audioData);
        } else if (audioData instanceof AudioStream) {
            updateAudioStream((AudioStream) audioData);
        }
    }

    private void updateAudioStream(AudioStream audioStream) {
        if (audioStream.getIds() != null) {
            deleteAudioData(audioStream);
        }
        int[] iArr = new int[5];
        this.f81564ib.clear().limit(5);
        this.f81562al.alGenBuffers(5, this.f81564ib);
        this.f81564ib.rewind();
        this.f81564ib.get(iArr);
        audioStream.setIds(iArr);
        audioStream.clearUpdateNeeded();
    }

    private void updateFilter(Filter filter) {
        int id2 = filter.getId();
        if (id2 == -1) {
            this.f81564ib.clear().limit(1);
            this.efx.alGenFilters(1, this.f81564ib);
            id2 = this.f81564ib.get(0);
            filter.setId(id2);
            this.objManager.registerObject(filter);
        }
        if (filter instanceof LowPassFilter) {
            LowPassFilter lowPassFilter = (LowPassFilter) filter;
            this.efx.alFilteri(id2, 32769, 1);
            this.efx.alFilterf(id2, 1, lowPassFilter.getVolume());
            this.efx.alFilterf(id2, 2, lowPassFilter.getHighFreqVolume());
        } else if (filter instanceof HighPassFilter) {
            HighPassFilter highPassFilter = (HighPassFilter) filter;
            this.efx.alFilteri(id2, 32769, 2);
            this.efx.alFilterf(id2, 1, highPassFilter.getVolume());
            this.efx.alFilterf(id2, 2, highPassFilter.getLowFreqVolume());
        } else {
            if (!(filter instanceof BandPassFilter)) {
                throw new UnsupportedOperationException("Unsupported filter type: " + filter.getClass().getName());
            }
            BandPassFilter bandPassFilter = (BandPassFilter) filter;
            this.efx.alFilteri(id2, 32769, 3);
            this.efx.alFilterf(id2, 1, bandPassFilter.getVolume());
            this.efx.alFilterf(id2, 3, bandPassFilter.getHighFreqVolume());
            this.efx.alFilterf(id2, 2, bandPassFilter.getLowFreqVolume());
        }
        filter.clearUpdateNeeded();
    }

    @Override
    public void cleanup() {
        if (this.decoderThread.isAlive()) {
            this.decoderThread.interrupt();
            try {
                this.decoderThread.join();
            } catch (InterruptedException e10) {
                Thread.currentThread().interrupt();
                logger.log(Level.WARNING, "Interrupted while waiting for audio thread to finish.", (Throwable) e10);
            }
        }
        destroyOpenAL();
    }

    @Override
    public void deleteAudioData(AudioData audioData) {
        AudioStream audioStream;
        int[] ids;
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                if (audioData instanceof AudioBuffer) {
                    AudioBuffer audioBuffer = (AudioBuffer) audioData;
                    int id2 = audioBuffer.getId();
                    if (id2 != -1) {
                        this.f81564ib.put(0, id2);
                        this.f81564ib.clear().limit(1);
                        this.f81562al.alDeleteBuffers(1, this.f81564ib);
                        audioBuffer.resetObject();
                    }
                } else if ((audioData instanceof AudioStream) && (ids = (audioStream = (AudioStream) audioData).getIds()) != null) {
                    this.f81564ib.clear();
                    this.f81564ib.put(ids).flip();
                    this.f81562al.alDeleteBuffers(ids.length, this.f81564ib);
                    audioStream.resetObject();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void deleteFilter(Filter filter) {
        int id2 = filter.getId();
        if (id2 != -1) {
            this.f81564ib.clear().limit(1);
            this.f81564ib.put(id2).flip();
            this.efx.alDeleteFilters(1, this.f81564ib);
            filter.resetObject();
        }
    }

    @Override
    public float getSourcePlaybackTime(AudioSource audioSource) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return 0.0f;
                }
                if (audioSource.getChannel() < 0) {
                    return 0.0f;
                }
                int i10 = this.channels[audioSource.getChannel()];
                AudioData audioData = audioSource.getAudioData();
                if (audioData == null) {
                    return 0.0f;
                }
                int unqueuedBufferBytes = (audioData instanceof AudioStream ? ((AudioStream) audioData).getUnqueuedBufferBytes() : 0) + this.f81562al.alGetSourcei(i10, AL.AL_BYTE_OFFSET);
                int sampleRate = ((audioData.getSampleRate() * audioData.getChannels()) * audioData.getBitsPerSample()) / 8;
                if (sampleRate > 0) {
                    return unqueuedBufferBytes / sampleRate;
                }
                logger.warning("Invalid bytesPerSecond calculated for source. Cannot get playback time.");
                return 0.0f;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void initialize() {
        if (this.decoderThread.isAlive()) {
            throw new IllegalStateException("Initialize already called");
        }
        initOpenAL();
        if (this.audioDisabled) {
            logger.warning("Audio Disabled. Cannot start decoder thread.");
            return;
        }
        this.decoderThread.setDaemon(true);
        this.decoderThread.setPriority(6);
        this.decoderThread.start();
    }

    @Override
    public void pauseAll() {
        if (!this.supportPauseDevice) {
            throw new UnsupportedOperationException("Pausing the audio device is not supported by the current OpenAL driver (requires ALC_SOFT_pause_device).");
        }
        this.alc.alcDevicePauseSOFT();
        logger.info("Audio device paused.");
    }

    @Override
    public void pauseSource(AudioSource audioSource) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                if (audioSource.getAudioData() == null) {
                    logger.log(Level.WARNING, "pauseSource called on source with null AudioData: {0}", audioSource);
                    return;
                }
                if (audioSource.getStatus() == AudioSource.Status.Playing) {
                    this.f81562al.alSourcePause(this.channels[audioSource.getChannel()]);
                    audioSource.setStatus(AudioSource.Status.Paused);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void playSource(AudioSource audioSource) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                AudioSource.Status status = audioSource.getStatus();
                AudioSource.Status status2 = AudioSource.Status.Playing;
                if (status == status2) {
                    return;
                }
                if (audioSource.getStatus() == AudioSource.Status.Stopped) {
                    AudioData audioData = audioSource.getAudioData();
                    if (audioData == null) {
                        logger.log(Level.WARNING, "playSource called on source with null AudioData: {0}", audioSource);
                        return;
                    }
                    int newChannel = newChannel();
                    if (newChannel == -1) {
                        logger.log(Level.WARNING, "No channel available to play instance of {0}", audioSource);
                        return;
                    }
                    int i10 = this.channels[newChannel];
                    clearChannel(newChannel);
                    audioSource.setChannel(newChannel);
                    if (audioData.isUpdateNeeded()) {
                        updateAudioData(audioData);
                    }
                    this.channelSources[newChannel] = audioSource;
                    setSourceParams(i10, audioSource, false);
                    attachAudioToSource(i10, audioData, audioSource.isLooping());
                }
                this.f81562al.alSourcePlay(this.channels[audioSource.getChannel()]);
                audioSource.setStatus(status2);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void playSourceInstance(AudioSource audioSource) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                AudioData audioData = audioSource.getAudioData();
                if (audioData == null) {
                    logger.log(Level.WARNING, "playSourceInstance called on source with null AudioData: {0}", audioSource);
                    return;
                }
                if (audioData instanceof AudioStream) {
                    throw new UnsupportedOperationException("Cannot play instances of audio streams. Use play() instead.");
                }
                if (audioData.isUpdateNeeded()) {
                    updateAudioData(audioData);
                }
                int newChannel = newChannel();
                if (newChannel == -1) {
                    logger.log(Level.WARNING, "No channel available to play instance of {0}", audioSource);
                    return;
                }
                int i10 = this.channels[newChannel];
                clearChannel(newChannel);
                setSourceParams(i10, audioSource, true);
                attachAudioToSource(i10, audioData, false);
                this.channelSources[newChannel] = audioSource;
                this.f81562al.alSourcePlay(i10);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void resumeAll() {
        if (!this.supportPauseDevice) {
            throw new UnsupportedOperationException("Resuming the audio device is not supported by the current OpenAL driver (requires ALC_SOFT_pause_device).");
        }
        this.alc.alcDeviceResumeSOFT();
        logger.info("Audio device resumed.");
    }

    @Override
    public void run() {
        while (true) {
            long nanoTime = System.nanoTime();
            if (Thread.interrupted()) {
                break;
            }
            synchronized (this.threadLock) {
                checkDevice();
                updateInDecoderThread(0.05f);
            }
            if (System.nanoTime() - nanoTime < 50000000) {
                long j10 = nanoTime + 50000000;
                while (System.nanoTime() < j10) {
                    try {
                        Thread.sleep(1L);
                    } catch (InterruptedException unused) {
                        logger.fine("Audio decoder thread interrupted during sleep, exiting.");
                    }
                }
            }
            logger.fine("Audio decoder thread finished.");
        }
        logger.fine("Audio decoder thread interrupted, exiting.");
        logger.fine("Audio decoder thread finished.");
    }

    @Override
    public void setEnvironment(Environment environment) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (!this.audioDisabled && this.supportEfx) {
                    this.efx.alEffectf(this.reverbFx, 1, environment.getDensity());
                    this.efx.alEffectf(this.reverbFx, 2, environment.getDiffusion());
                    this.efx.alEffectf(this.reverbFx, 3, environment.getGain());
                    this.efx.alEffectf(this.reverbFx, 4, environment.getGainHf());
                    this.efx.alEffectf(this.reverbFx, 5, environment.getDecayTime());
                    this.efx.alEffectf(this.reverbFx, 6, environment.getDecayHFRatio());
                    this.efx.alEffectf(this.reverbFx, 7, environment.getReflectGain());
                    this.efx.alEffectf(this.reverbFx, 8, environment.getReflectDelay());
                    this.efx.alEffectf(this.reverbFx, 9, environment.getLateReverbGain());
                    this.efx.alEffectf(this.reverbFx, 10, environment.getLateReverbDelay());
                    this.efx.alEffectf(this.reverbFx, 11, environment.getAirAbsorbGainHf());
                    this.efx.alEffectf(this.reverbFx, 12, environment.getRoomRolloffFactor());
                    this.efx.alAuxiliaryEffectSloti(this.reverbFxSlot, 1, this.reverbFx);
                    this.environment = environment;
                }
            } finally {
            }
        }
    }

    @Override
    public void setListener(Listener listener) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                Listener listener2 = this.listener;
                if (listener2 != null) {
                    listener2.setRenderer(null);
                }
                this.listener = listener;
                if (listener != null) {
                    listener.setRenderer(this);
                    setListenerParams(listener);
                } else {
                    logger.info("Listener set to null.");
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void stopSource(AudioSource audioSource) {
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                if (audioSource.getAudioData() == null) {
                    logger.log(Level.WARNING, "stopSource called on source with null AudioData: {0}", audioSource);
                    return;
                }
                AudioSource.Status status = audioSource.getStatus();
                AudioSource.Status status2 = AudioSource.Status.Stopped;
                if (status != status2) {
                    int channel = audioSource.getChannel();
                    audioSource.setStatus(status2);
                    audioSource.setChannel(-1);
                    clearChannel(channel);
                    freeChannel(channel);
                    if (audioSource.getAudioData() instanceof AudioStream) {
                        AudioStream audioStream = (AudioStream) audioSource.getAudioData();
                        if (audioStream.isSeekable()) {
                            audioStream.setTime(0.0f);
                        } else {
                            audioStream.close();
                        }
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void update(float f10) {
        synchronized (this.threadLock) {
            updateInRenderThread(f10);
        }
    }

    public void updateInDecoderThread(float f10) {
        if (this.audioDisabled) {
            return;
        }
        for (int i10 = 0; i10 < this.channels.length; i10++) {
            AudioSource audioSource = this.channelSources[i10];
            if (audioSource != null && (audioSource.getAudioData() instanceof AudioStream)) {
                int i11 = this.channels[i10];
                AudioStream audioStream = (AudioStream) audioSource.getAudioData();
                AudioSource.Status convertStatus = convertStatus(this.f81562al.alGetSourcei(i11, 4112));
                AudioSource.Status status = audioSource.getStatus();
                if (fillStreamingSource(i11, audioStream, audioSource.isLooping()) && convertStatus == AudioSource.Status.Stopped && status == AudioSource.Status.Playing) {
                    logger.log(Level.WARNING, "Buffer starvation detected for stream on channel {0}. Restarting playback.", Integer.valueOf(i10));
                    this.f81562al.alSourcePlay(i11);
                }
            }
        }
        this.objManager.deleteUnused(this);
    }

    public void updateInRenderThread(float f10) {
        AudioSource.Status convertStatus;
        AudioSource.Status status;
        if (this.audioDisabled) {
            return;
        }
        int i10 = 0;
        while (true) {
            int[] iArr = this.channels;
            if (i10 >= iArr.length) {
                return;
            }
            AudioSource audioSource = this.channelSources[i10];
            if (audioSource != null) {
                int i11 = iArr[i10];
                boolean z10 = i10 == audioSource.getChannel();
                convertStatus = convertStatus(this.f81562al.alGetSourcei(i11, 4112));
                if (z10) {
                    status = audioSource.getStatus();
                    if (convertStatus != status) {
                        AudioSource.Status status2 = AudioSource.Status.Stopped;
                        if (convertStatus != status2 || status == status2) {
                            break;
                        }
                        if (audioSource.getAudioData() instanceof AudioStream) {
                            if (!((AudioStream) audioSource.getAudioData()).isEOF() || audioSource.isLooping()) {
                                Logger logger2 = logger;
                                Level level = Level.FINE;
                                if (logger2.isLoggable(level)) {
                                    logger2.log(level, "Stream source on channel {0} likely starved.", Integer.valueOf(i10));
                                }
                            } else {
                                Logger logger3 = logger;
                                Level level2 = Level.FINE;
                                if (logger3.isLoggable(level2)) {
                                    logger3.log(level2, "Stream source on channel {0} finished.", Integer.valueOf(i10));
                                }
                            }
                        } else if (audioSource.isLooping()) {
                            logger.log(Level.WARNING, "Looping buffer source on channel {0} stopped unexpectedly.", Integer.valueOf(i10));
                        } else {
                            Logger logger4 = logger;
                            Level level3 = Level.FINE;
                            if (logger4.isLoggable(level3)) {
                                logger4.log(level3, "Buffer source on channel {0} finished.", Integer.valueOf(i10));
                            }
                        }
                        Logger logger5 = logger;
                        Level level4 = Level.FINE;
                        if (logger5.isLoggable(level4)) {
                            logger5.log(level4, "Reclaiming channel {0} from finished source.", Integer.valueOf(i10));
                        }
                        audioSource.setStatus(status2);
                        audioSource.setChannel(-1);
                        clearChannel(i10);
                        freeChannel(i10);
                    } else if (convertStatus == AudioSource.Status.Stopped) {
                        throw new AssertionError((Object) ("Channel " + i10 + " was not reclaimed"));
                    }
                } else if (convertStatus == AudioSource.Status.Stopped) {
                    Logger logger6 = logger;
                    Level level5 = Level.FINE;
                    if (logger6.isLoggable(level5)) {
                        logger6.log(level5, "Reclaiming channel {0} from finished instance.", Integer.valueOf(i10));
                    }
                    clearChannel(i10);
                    freeChannel(i10);
                } else if (convertStatus == AudioSource.Status.Paused) {
                    throw new AssertionError((Object) ("Instanced audio source on channel " + i10 + " cannot be paused."));
                }
            }
            i10++;
        }
        throw new AssertionError((Object) ("Unexpected sound status. OpenAL: " + ((Object) convertStatus) + ", JME: " + ((Object) status)));
    }

    @Override
    public void updateListenerParam(Listener listener, ListenerParam listenerParam) {
        checkDead();
        if (this.listener != listener) {
            logger.warning("updateListenerParam called on inactive listener.");
            return;
        }
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                int i10 = AnonymousClass1.$SwitchMap$com$jme3$audio$ListenerParam[listenerParam.ordinal()];
                if (i10 == 1) {
                    applyListenerPosition(listener);
                } else if (i10 == 2) {
                    applyListenerRotation(listener);
                } else if (i10 == 3) {
                    applyListenerVelocity(listener);
                } else if (i10 != 4) {
                    logger.log(Level.WARNING, "Unhandled listener parameter: {0}", listenerParam);
                } else {
                    applyListenerVolume(listener);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public void updateSourceParam(AudioSource audioSource, AudioParam audioParam) {
        checkDead();
        synchronized (this.threadLock) {
            try {
                if (this.audioDisabled) {
                    return;
                }
                int channel = audioSource.getChannel();
                if (channel < 0) {
                    Logger logger2 = logger;
                    Level level = Level.FINE;
                    if (logger2.isLoggable(level)) {
                        logger2.log(level, "Ignoring parameter update for source {0} as it's not validly associated with channel {1}.", new Object[]{audioSource, Integer.valueOf(channel)});
                    }
                    return;
                }
                int i10 = this.channels[channel];
                switch (AnonymousClass1.$SwitchMap$com$jme3$audio$AudioParam[audioParam.ordinal()]) {
                    case 1:
                        if (audioSource.isPositional()) {
                            Vector3f position = audioSource.getPosition();
                            this.f81562al.alSource3f(i10, 4100, position.f81611x, position.f81612y, position.f81613z);
                            break;
                        }
                        break;
                    case 2:
                        if (audioSource.isPositional()) {
                            Vector3f velocity = audioSource.getVelocity();
                            this.f81562al.alSource3f(i10, 4102, velocity.f81611x, velocity.f81612y, velocity.f81613z);
                            break;
                        }
                        break;
                    case 3:
                        if (audioSource.isPositional()) {
                            this.f81562al.alSourcef(i10, AL.AL_MAX_DISTANCE, audioSource.getMaxDistance());
                            break;
                        }
                        break;
                    case 4:
                        if (audioSource.isPositional()) {
                            this.f81562al.alSourcef(i10, AL.AL_REFERENCE_DISTANCE, audioSource.getRefDistance());
                            break;
                        }
                        break;
                    case 5:
                        applySourcePositionalState(i10, audioSource);
                        break;
                    case 6:
                        if (audioSource.isDirectional()) {
                            Vector3f direction = audioSource.getDirection();
                            this.f81562al.alSource3f(i10, 4101, direction.f81611x, direction.f81612y, direction.f81613z);
                            break;
                        }
                        break;
                    case 7:
                        if (audioSource.isDirectional()) {
                            this.f81562al.alSourcef(i10, 4097, audioSource.getInnerAngle());
                            break;
                        }
                        break;
                    case 8:
                        if (audioSource.isDirectional()) {
                            this.f81562al.alSourcef(i10, 4098, audioSource.getOuterAngle());
                            break;
                        }
                        break;
                    case 9:
                        applySourceDirectionalState(i10, audioSource);
                        break;
                    case 10:
                        applySourceDryFilter(i10, audioSource);
                        break;
                    case 11:
                        if (audioSource.isPositional()) {
                            applySourceReverbFilter(i10, audioSource);
                            break;
                        }
                        break;
                    case 12:
                        if (this.supportEfx && audioSource.isPositional()) {
                            if (!audioSource.isReverbEnabled()) {
                                this.f81562al.alSource3i(i10, EFX.AL_AUXILIARY_SEND_FILTER, 0, 0, 0);
                                break;
                            } else {
                                applySourceReverbFilter(i10, audioSource);
                                break;
                            }
                        }
                        break;
                    case 13:
                        applySourceLooping(i10, audioSource, false);
                        break;
                    case 14:
                        this.f81562al.alSourcef(i10, 4106, audioSource.getVolume());
                        break;
                    case 15:
                        this.f81562al.alSourcef(i10, 4099, audioSource.getPitch());
                        break;
                    default:
                        logger.log(Level.WARNING, "Unhandled source parameter update: {0}", audioParam);
                        break;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
