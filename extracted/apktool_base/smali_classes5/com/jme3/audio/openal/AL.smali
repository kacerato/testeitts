.class public interface abstract Lcom/jme3/audio/openal/AL;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AL_BITS:I = 0x2002

.field public static final AL_BUFFER:I = 0x1009

.field public static final AL_BUFFERS_PROCESSED:I = 0x1016

.field public static final AL_BUFFERS_QUEUED:I = 0x1015

.field public static final AL_BYTE_OFFSET:I = 0x1026

.field public static final AL_CHANNELS:I = 0x2003

.field public static final AL_CONE_INNER_ANGLE:I = 0x1001

.field public static final AL_CONE_OUTER_ANGLE:I = 0x1002

.field public static final AL_CONE_OUTER_GAIN:I = 0x1022

.field public static final AL_DIRECTION:I = 0x1005

.field public static final AL_DISTANCE_MODEL:I = 0xd000

.field public static final AL_DOPPLER_FACTOR:I = 0xc000

.field public static final AL_DOPPLER_VELOCITY:I = 0xc001

.field public static final AL_EXPONENT_DISTANCE:I = 0xd005

.field public static final AL_EXPONENT_DISTANCE_CLAMPED:I = 0xd006

.field public static final AL_EXTENSIONS:I = 0xb004

.field public static final AL_FALSE:I = 0x0

.field public static final AL_FORMAT_MONO16:I = 0x1101

.field public static final AL_FORMAT_MONO8:I = 0x1100

.field public static final AL_FORMAT_STEREO16:I = 0x1103

.field public static final AL_FORMAT_STEREO8:I = 0x1102

.field public static final AL_FREQUENCY:I = 0x2001

.field public static final AL_GAIN:I = 0x100a

.field public static final AL_INITIAL:I = 0x1011

.field public static final AL_INVALID_ENUM:I = 0xa002

.field public static final AL_INVALID_NAME:I = 0xa001

.field public static final AL_INVALID_OPERATION:I = 0xa004

.field public static final AL_INVALID_VALUE:I = 0xa003

.field public static final AL_INVERSE_DISTANCE:I = 0xd001

.field public static final AL_INVERSE_DISTANCE_CLAMPED:I = 0xd002

.field public static final AL_LINEAR_DISTANCE:I = 0xd003

.field public static final AL_LINEAR_DISTANCE_CLAMPED:I = 0xd004

.field public static final AL_LOOPING:I = 0x1007

.field public static final AL_MAX_DISTANCE:I = 0x1023

.field public static final AL_MAX_GAIN:I = 0x100e

.field public static final AL_MIN_GAIN:I = 0x100d

.field public static final AL_NONE:I = 0x0

.field public static final AL_NO_ERROR:I = 0x0

.field public static final AL_ORIENTATION:I = 0x100f

.field public static final AL_OUT_OF_MEMORY:I = 0xa005

.field public static final AL_PAUSED:I = 0x1013

.field public static final AL_PENDING:I = 0x2011

.field public static final AL_PITCH:I = 0x1003

.field public static final AL_PLAYING:I = 0x1012

.field public static final AL_POSITION:I = 0x1004

.field public static final AL_PROCESSED:I = 0x2012

.field public static final AL_REFERENCE_DISTANCE:I = 0x1020

.field public static final AL_RENDERER:I = 0xb003

.field public static final AL_ROLLOFF_FACTOR:I = 0x1021

.field public static final AL_SAMPLE_OFFSET:I = 0x1025

.field public static final AL_SEC_OFFSET:I = 0x1024

.field public static final AL_SIZE:I = 0x2004

.field public static final AL_SOURCE_RELATIVE:I = 0x202

.field public static final AL_SOURCE_STATE:I = 0x1010

.field public static final AL_SOURCE_TYPE:I = 0x1027

.field public static final AL_SPEED_OF_SOUND:I = 0xc003

.field public static final AL_STATIC:I = 0x1028

.field public static final AL_STOPPED:I = 0x1014

.field public static final AL_STREAMING:I = 0x1029

.field public static final AL_TRUE:I = 0x1

.field public static final AL_UNDETERMINED:I = 0x1030

.field public static final AL_UNUSED:I = 0x2010

.field public static final AL_VELOCITY:I = 0x1006

.field public static final AL_VENDOR:I = 0xb001

.field public static final AL_VERSION:I = 0xb002


# virtual methods
.method public abstract alBufferData(IILjava/nio/ByteBuffer;II)V
.end method

.method public abstract alDeleteBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alDeleteSources(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alGenBuffers(ILjava/nio/IntBuffer;)V
.end method

.method public abstract alGenSources()I
.end method

.method public abstract alGetError()I
.end method

.method public abstract alGetSourcei(II)I
.end method

.method public abstract alGetString(I)Ljava/lang/String;
.end method

.method public abstract alListener(ILjava/nio/FloatBuffer;)V
.end method

.method public abstract alListener3f(IFFF)V
.end method

.method public abstract alListenerf(IF)V
.end method

.method public abstract alSource3f(IIFFF)V
.end method

.method public abstract alSource3i(IIIII)V
.end method

.method public abstract alSourcePause(I)V
.end method

.method public abstract alSourcePlay(I)V
.end method

.method public abstract alSourceQueueBuffers(IILjava/nio/IntBuffer;)V
.end method

.method public abstract alSourceStop(I)V
.end method

.method public abstract alSourceUnqueueBuffers(IILjava/nio/IntBuffer;)V
.end method

.method public abstract alSourcef(IIF)V
.end method

.method public abstract alSourcei(III)V
.end method
