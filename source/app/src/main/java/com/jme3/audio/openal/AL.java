package com.jme3.audio.openal;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public interface AL {
    public static final int AL_BITS = 8194;
    public static final int AL_BUFFER = 4105;
    public static final int AL_BUFFERS_PROCESSED = 4118;
    public static final int AL_BUFFERS_QUEUED = 4117;
    public static final int AL_BYTE_OFFSET = 4134;
    public static final int AL_CHANNELS = 8195;
    public static final int AL_CONE_INNER_ANGLE = 4097;
    public static final int AL_CONE_OUTER_ANGLE = 4098;
    public static final int AL_CONE_OUTER_GAIN = 4130;
    public static final int AL_DIRECTION = 4101;
    public static final int AL_DISTANCE_MODEL = 53248;
    public static final int AL_DOPPLER_FACTOR = 49152;
    public static final int AL_DOPPLER_VELOCITY = 49153;
    public static final int AL_EXPONENT_DISTANCE = 53253;
    public static final int AL_EXPONENT_DISTANCE_CLAMPED = 53254;
    public static final int AL_EXTENSIONS = 45060;
    public static final int AL_FALSE = 0;
    public static final int AL_FORMAT_MONO16 = 4353;
    public static final int AL_FORMAT_MONO8 = 4352;
    public static final int AL_FORMAT_STEREO16 = 4355;
    public static final int AL_FORMAT_STEREO8 = 4354;
    public static final int AL_FREQUENCY = 8193;
    public static final int AL_GAIN = 4106;
    public static final int AL_INITIAL = 4113;
    public static final int AL_INVALID_ENUM = 40962;
    public static final int AL_INVALID_NAME = 40961;
    public static final int AL_INVALID_OPERATION = 40964;
    public static final int AL_INVALID_VALUE = 40963;
    public static final int AL_INVERSE_DISTANCE = 53249;
    public static final int AL_INVERSE_DISTANCE_CLAMPED = 53250;
    public static final int AL_LINEAR_DISTANCE = 53251;
    public static final int AL_LINEAR_DISTANCE_CLAMPED = 53252;
    public static final int AL_LOOPING = 4103;
    public static final int AL_MAX_DISTANCE = 4131;
    public static final int AL_MAX_GAIN = 4110;
    public static final int AL_MIN_GAIN = 4109;
    public static final int AL_NONE = 0;
    public static final int AL_NO_ERROR = 0;
    public static final int AL_ORIENTATION = 4111;
    public static final int AL_OUT_OF_MEMORY = 40965;
    public static final int AL_PAUSED = 4115;
    public static final int AL_PENDING = 8209;
    public static final int AL_PITCH = 4099;
    public static final int AL_PLAYING = 4114;
    public static final int AL_POSITION = 4100;
    public static final int AL_PROCESSED = 8210;
    public static final int AL_REFERENCE_DISTANCE = 4128;
    public static final int AL_RENDERER = 45059;
    public static final int AL_ROLLOFF_FACTOR = 4129;
    public static final int AL_SAMPLE_OFFSET = 4133;
    public static final int AL_SEC_OFFSET = 4132;
    public static final int AL_SIZE = 8196;
    public static final int AL_SOURCE_RELATIVE = 514;
    public static final int AL_SOURCE_STATE = 4112;
    public static final int AL_SOURCE_TYPE = 4135;
    public static final int AL_SPEED_OF_SOUND = 49155;
    public static final int AL_STATIC = 4136;
    public static final int AL_STOPPED = 4116;
    public static final int AL_STREAMING = 4137;
    public static final int AL_TRUE = 1;
    public static final int AL_UNDETERMINED = 4144;
    public static final int AL_UNUSED = 8208;
    public static final int AL_VELOCITY = 4102;
    public static final int AL_VENDOR = 45057;
    public static final int AL_VERSION = 45058;

    void alBufferData(int i10, int i11, ByteBuffer byteBuffer, int i12, int i13);

    void alDeleteBuffers(int i10, IntBuffer intBuffer);

    void alDeleteSources(int i10, IntBuffer intBuffer);

    void alGenBuffers(int i10, IntBuffer intBuffer);

    int alGenSources();

    int alGetError();

    int alGetSourcei(int i10, int i11);

    String alGetString(int i10);

    void alListener(int i10, FloatBuffer floatBuffer);

    void alListener3f(int i10, float f10, float f11, float f12);

    void alListenerf(int i10, float f10);

    void alSource3f(int i10, int i11, float f10, float f11, float f12);

    void alSource3i(int i10, int i11, int i12, int i13, int i14);

    void alSourcePause(int i10);

    void alSourcePlay(int i10);

    void alSourceQueueBuffers(int i10, int i11, IntBuffer intBuffer);

    void alSourceStop(int i10);

    void alSourceUnqueueBuffers(int i10, int i11, IntBuffer intBuffer);

    void alSourcef(int i10, int i11, float f10);

    void alSourcei(int i10, int i11, int i12);
}
